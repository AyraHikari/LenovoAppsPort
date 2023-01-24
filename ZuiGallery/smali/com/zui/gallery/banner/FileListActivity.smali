.class public Lcom/zui/gallery/banner/FileListActivity;
.super Lcom/zui/gallery/banner/BaseActivity;
.source "FileListActivity.java"


# static fields
.field public static final OPEN_PRIVACY_ACTION:Ljava/lang/String; = "com.zui.gallery.open_privacy_gallery"

.field public static final PRIVATE_GALLERY:Ljava/lang/String; = "privateGallery"

.field private static final TAG:Ljava/lang/String; = "FileListActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;-><init>()V

    return-void
.end method

.method private setFragment()V
    .locals 3

    const-string v0, "FileListActivity"

    const-string v1, "activity setFragment"

    .line 87
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/zui/gallery/banner/FileListFragment;

    invoke-direct {v1}, Lcom/zui/gallery/banner/FileListFragment;-><init>()V

    const v2, 0x7f0801aa

    .line 91
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method private startPrivateGallery()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "privateGallery"

    .line 73
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "com.zui.gallery.open_privacy_gallery"

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListActivity;->setFragment()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->finish()V

    :goto_0
    return-void

    .line 70
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->finish()V

    return-void
.end method

.method private updateColor()V
    .locals 3

    .line 45
    invoke-static {p0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-nez v0, :cond_0

    or-int/lit16 v0, v2, 0x2000

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v2, -0x2001

    and-int/lit8 v0, v0, -0x11

    .line 58
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 62
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListActivity;->startPrivateGallery()V

    .line 40
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListActivity;->updateColor()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/zui/gallery/banner/FileListActivity;->finish()V

    .line 106
    invoke-super {p0}, Lcom/zui/gallery/banner/BaseActivity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "FileListActivity"

    const-string v0, "activity onNewIntent"

    .line 99
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/zui/gallery/banner/FileListActivity;->startPrivateGallery()V

    return-void
.end method

.method protected setLayoutResourceID()I
    .locals 1

    const v0, 0x7f0b0027

    return v0
.end method
