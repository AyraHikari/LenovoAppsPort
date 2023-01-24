.class public Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;
.super Lcom/zui/gallery/trash/FullScreenBaseActivity;
.source "LenovoTrashContinousListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoTrashListActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;-><init>()V

    return-void
.end method

.method private setFragment(Landroid/content/Intent;)V
    .locals 3

    const-string p1, "LenovoTrashListActivity"

    const-string v0, "activity setFragment"

    .line 27
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f08023a

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    instance-of v1, p1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    if-nez v1, :cond_1

    .line 32
    :cond_0
    new-instance p1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-direct {p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;-><init>()V

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "trash_bundle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 37
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007f

    .line 22
    invoke-virtual {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->setFragment(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "LenovoTrashListActivity"

    const-string v1, "activity onNewIntent"

    .line 43
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListActivity;->setFragment(Landroid/content/Intent;)V

    return-void
.end method
