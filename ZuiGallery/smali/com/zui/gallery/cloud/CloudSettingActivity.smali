.class public Lcom/zui/gallery/cloud/CloudSettingActivity;
.super Landroid/app/Activity;
.source "CloudSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setFragments(Landroid/content/Intent;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f080238

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-direct {p1}, Lcom/zui/gallery/cloud/CloudSettingFragment;-><init>()V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 18
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1100b8

    .line 20
    invoke-virtual {p0, v0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100b7

    .line 22
    invoke-virtual {p0, v0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->setTheme(I)V

    .line 24
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/zui/gallery/cloud/CloudSettingActivity;->setDarkNavigationBarIcon(Z)V

    const p1, 0x7f0b0026

    .line 27
    invoke-virtual {p0, p1}, Lcom/zui/gallery/cloud/CloudSettingActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/cloud/CloudSettingActivity;->setFragments(Landroid/content/Intent;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->finish()V

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public setDarkNavigationBarIcon(Z)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, -0x11

    .line 58
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method
