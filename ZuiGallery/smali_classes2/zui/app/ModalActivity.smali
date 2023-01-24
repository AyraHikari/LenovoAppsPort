.class public Lzui/app/ModalActivity;
.super Landroid/app/Activity;
.source "ModalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContent:Landroid/widget/FrameLayout;

.field private mDm:Landroid/util/DisplayMetrics;

.field private mHeight:I

.field private mToolbar:Lzui/widget/SimpleToolbar;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lzui/app/ModalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/app/ModalActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lzui/app/ModalActivity;->mDm:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private adjustActivityWidthAndGravity()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lzui/app/ModalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 197
    iget v2, p0, Lzui/app/ModalActivity;->mWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 198
    iget v2, p0, Lzui/app/ModalActivity;->mHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 141
    const-class v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 145
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    .line 147
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    return v1
.end method

.method private updateToolbar()V
    .locals 2

    .line 203
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_0

    .line 204
    iget v1, p0, Lzui/app/ModalActivity;->mWidth:I

    invoke-virtual {v0, v1}, Lzui/widget/SimpleToolbar;->setMaxWidth(I)V

    .line 205
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    invoke-virtual {p0}, Lzui/app/ModalActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/widget/SimpleToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    invoke-virtual {v0}, Lzui/widget/SimpleToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 208
    invoke-virtual {p0, v0}, Lzui/app/ModalActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    invoke-virtual {v0}, Lzui/widget/SimpleToolbar;->setupMenu()V

    .line 210
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    invoke-virtual {v0, p0}, Lzui/widget/SimpleToolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 136
    invoke-static {p0, p1}, Lzui/app/ModalActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 91
    sget v0, Lzui/platform/R$anim;->dialog_enter:I

    sget v1, Lzui/platform/R$anim;->dialog_exit:I

    invoke-virtual {p0, v0, v1}, Lzui/app/ModalActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getActivityHeight()I
    .locals 1

    .line 157
    iget v0, p0, Lzui/app/ModalActivity;->mHeight:I

    return v0
.end method

.method public getActivityWidth()I
    .locals 1

    .line 153
    iget v0, p0, Lzui/app/ModalActivity;->mWidth:I

    return v0
.end method

.method public getToolbar()Lzui/widget/SimpleToolbar;
    .locals 1

    .line 161
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/widget/SimpleToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lzui/app/ModalActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lzui/app/ModalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lzui/app/ModalActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 45
    sget v0, Lzui/platform/R$style;->Theme_Zui_ModalActivity_Horizontal:I

    invoke-virtual {p0, v0}, Lzui/app/ModalActivity;->setTheme(I)V

    goto :goto_1

    .line 47
    :cond_1
    sget v0, Lzui/platform/R$style;->Theme_Zui_ModalActivity:I

    invoke-virtual {p0, v0}, Lzui/app/ModalActivity;->setTheme(I)V

    .line 49
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "window"

    .line 50
    invoke-virtual {p0, p1}, Lzui/app/ModalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/app/ModalActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lzui/app/ModalActivity;->mDm:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget-object p1, p0, Lzui/app/ModalActivity;->mDm:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lzui/app/ModalActivity;->mDm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    sget v0, Lzui/platform/R$dimen;->modal_dialog_width_screenwidth_ratio:I

    invoke-static {p0, v0}, Lzui/util/CommonUtils;->getFloatFromResource(Landroid/content/Context;I)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lzui/app/ModalActivity;->mWidth:I

    int-to-float p1, p1

    .line 54
    sget v0, Lzui/platform/R$dimen;->modal_dialog_width_height_ratio:I

    invoke-static {p0, v0}, Lzui/util/CommonUtils;->getFloatFromResource(Landroid/content/Context;I)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lzui/app/ModalActivity;->mHeight:I

    .line 55
    invoke-virtual {p0, v1}, Lzui/app/ModalActivity;->requestWindowFeature(I)Z

    .line 56
    sget p1, Lzui/platform/R$anim;->dialog_enter:I

    sget v0, Lzui/platform/R$anim;->dialog_exit:I

    invoke-virtual {p0, p1, v0}, Lzui/app/ModalActivity;->overridePendingTransition(II)V

    .line 57
    invoke-virtual {p0}, Lzui/app/ModalActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x40000

    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    sget v0, Lzui/platform/R$style;->Animation_Zui_ModalActivity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 62
    sget p1, Lzui/platform/R$layout;->activity_modal:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    sget p1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {p0, p1}, Lzui/app/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    .line 64
    sget p1, Lzui/platform/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lzui/app/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/SimpleToolbar;

    iput-object p1, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    .line 65
    invoke-direct {p0}, Lzui/app/ModalActivity;->updateToolbar()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lzui/app/ModalActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-direct {p0}, Lzui/app/ModalActivity;->adjustActivityWidthAndGravity()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-ltz v0, :cond_0

    iget v2, p0, Lzui/app/ModalActivity;->mWidth:I

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget v0, p0, Lzui/app/ModalActivity;->mHeight:I

    if-le v1, v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lzui/app/ModalActivity;->finish()V

    return v3

    .line 78
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setContentView(I)V
    .locals 2

    .line 96
    iget-object v0, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 118
    iget-object v0, p0, Lzui/app/ModalActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public showHomeAsUpIndicator(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzui/widget/SimpleToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzui/widget/SimpleToolbar;->useDefaultNavigationIcon(Z)V

    .line 183
    iget-object p1, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    invoke-virtual {p1, p0}, Lzui/widget/SimpleToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzui/widget/SimpleToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showToolbar(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lzui/app/ModalActivity;->mToolbar:Lzui/widget/SimpleToolbar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 171
    invoke-virtual {v0, p1}, Lzui/widget/SimpleToolbar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 173
    invoke-virtual {v0, p1}, Lzui/widget/SimpleToolbar;->setVisibility(I)V

    .line 175
    :goto_0
    invoke-direct {p0}, Lzui/app/ModalActivity;->updateToolbar()V

    :cond_1
    return-void
.end method
