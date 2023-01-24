.class public Lcom/zui/gallery/widget/WidgetActivity;
.super Landroid/app/Activity;
.source "WidgetActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/zui/gallery/widget/WidgetActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private enterLearning()V
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->joinLearningLauncher(Landroid/content/Context;)V

    return-void
.end method

.method private isCanEnterLearning()Z
    .locals 2

    .line 67
    invoke-static {}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isEducationPad()Z

    move-result v0

    .line 69
    invoke-static {p0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isLearningLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEducationPad()Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isEducationPad()Z

    move-result v0

    return v0
.end method

.method private setBackGround()V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 102
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x11

    .line 104
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 106
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f050226

    invoke-virtual {p0, v3}, Lcom/zui/gallery/widget/WidgetActivity;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setStatusBar(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$WidgetActivity(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetActivity;->isCanEnterLearning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetActivity;->enterLearning()V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetActivity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetActivity;->setStatusBar(Z)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002e

    .line 34
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetActivity;->setContentView(I)V

    const p1, 0x7f0803c4

    .line 35
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0800a3

    .line 36
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mBtn:Landroid/widget/Button;

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    .line 40
    sget-object v0, Lcom/zui/gallery/widget/WidgetActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "zh-CN"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0703b4

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const-string v0, "zh-TW"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "zh-HK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0703b3

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0703b6

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetActivity;->isEducationPad()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0703b5

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetActivity;->mBtn:Landroid/widget/Button;

    new-instance v0, Lcom/zui/gallery/widget/-$$Lambda$WidgetActivity$MLbs5_LjALHygM1osTTBzwukZjI;

    invoke-direct {v0, p0}, Lcom/zui/gallery/widget/-$$Lambda$WidgetActivity$MLbs5_LjALHygM1osTTBzwukZjI;-><init>(Lcom/zui/gallery/widget/WidgetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetActivity;->setBackGround()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetActivity;->finishAndRemoveTask()V

    const/4 p1, 0x1

    return p1

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetActivity;->setStatusBar(Z)V

    return-void
.end method
