.class public Lcom/zui/gallery/trash/LenovoTrashDetailActivity;
.super Lcom/zui/gallery/trash/FullScreenBaseActivity;
.source "LenovoTrashDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoTrashDetailActivity"


# instance fields
.field private mFrag:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;-><init>()V

    return-void
.end method

.method private isFragment()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setFragment(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "LenovoTrashDetailActivity"

    const-string v1, "activity setFragment"

    .line 28
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08023a

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 31
    instance-of v0, v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-direct {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    const-string/jumbo v0, "trash_bundle"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 38
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LenovoTrashDetailActivity"

    const-string v1, "activity onCreate"

    .line 21
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0, p1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007f

    .line 23
    invoke-virtual {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->setFragment(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "LenovoTrashDetailActivity"

    const-string v1, "activity onNewIntent"

    .line 64
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->setFragment(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->isFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    .line 57
    invoke-virtual {v0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->onRestoreInstance(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->isFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;->mFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    .line 46
    invoke-virtual {v0, p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->onSaveInstance(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
