.class public Lcom/zui/gallery/trash/LenovoTrashListActivity;
.super Landroid/app/Activity;
.source "LenovoTrashListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoTrashListActivity"


# instance fields
.field private mFrag:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setAndroidNativeLightStatusBar(Z)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x2410

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x500

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private setFragment(Landroid/content/Intent;)V
    .locals 2

    const-string p1, "LenovoTrashListActivity"

    const-string v0, "activity setFragment"

    .line 63
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f08023a

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListActivity;->mFrag:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 68
    instance-of p1, p1, Lcom/zui/gallery/trash/LenovoTrashListFragment;

    if-nez p1, :cond_1

    .line 69
    :cond_0
    new-instance p1, Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListActivity;->mFrag:Landroid/app/Fragment;

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 72
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListActivity;->mFrag:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private uiModeColor()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->setAndroidNativeLightStatusBar(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->setAndroidNativeLightStatusBar(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListActivity;->mFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 86
    instance-of v1, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;

    .line 88
    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->setBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->uiModeColor()V

    const p1, 0x7f0b007f

    .line 30
    invoke-virtual {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->setFragment(Landroid/content/Intent;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->finish()V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "LenovoTrashListActivity"

    const-string v1, "activity onNewIntent"

    .line 79
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->setFragment(Landroid/content/Intent;)V

    return-void
.end method

.method public setDarkNavigationBarIcon(Z)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/zui/gallery/trash/LenovoTrashListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, -0x11

    .line 59
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method
