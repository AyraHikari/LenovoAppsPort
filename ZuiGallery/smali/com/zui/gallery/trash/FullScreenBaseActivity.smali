.class public Lcom/zui/gallery/trash/FullScreenBaseActivity;
.super Landroid/app/Activity;
.source "FullScreenBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideBarsModifyBgColors()V
    .locals 2

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 54
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->setDarkStatusIcon(Z)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->setDarkNavigationBarIcon(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showBarsModifyBgColors()V
    .locals 3

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 41
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "#66000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->setDarkStatusIcon(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->setDarkNavigationBarIcon(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 20
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 25
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->showBarsModifyBgColors()V

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->finish()V

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public setDarkNavigationBarIcon(Z)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, -0x11

    .line 85
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public setDarkStatusIcon(Z)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/zui/gallery/trash/FullScreenBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 72
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method
