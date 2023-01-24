.class public Lzui/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final DEFAULT_SCREEN_WIDTH:I = 0x438


# instance fields
.field protected mAlert:Lcom/zui/internal/app/MessageController;

.field protected mAlertParams:Lcom/zui/internal/app/MessageController$MessageParams;

.field private mDialogOffset:I

.field private mDm:Landroid/util/DisplayMetrics;

.field private mHorizontalMaxWidth:I

.field private mMaxHeight:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lzui/app/AlertActivity;->mDm:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private adjustCenterDialogWidth()V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lzui/app/AlertActivity;->mAlert:Lcom/zui/internal/app/MessageController;

    invoke-virtual {v1}, Lcom/zui/internal/app/MessageController;->getCenterDialogWidth()I

    move-result v1

    .line 191
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 192
    invoke-static {}, Lzui/util/CommonUtils;->isPCMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v1, v1, 0x190

    div-int/lit16 v1, v1, 0x2bc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 195
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    :goto_0
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private adjustDialogWidthAndGravity()V
    .locals 5

    .line 159
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lzui/app/AlertActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 162
    iget-object v2, p0, Lzui/app/AlertActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lzui/app/AlertActivity;->mDm:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    invoke-direct {p0}, Lzui/app/AlertActivity;->isInLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x55

    .line 165
    iget v3, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    .line 168
    :goto_0
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setGravity(I)V

    .line 169
    iget v2, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 170
    iget-object v2, p0, Lzui/app/AlertActivity;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lzui/app/AlertActivity;->mDm:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget v1, p0, Lzui/app/AlertActivity;->mMaxHeight:I

    goto :goto_2

    .line 175
    :cond_2
    :goto_1
    iget v1, p0, Lzui/app/AlertActivity;->mHorizontalMaxWidth:I

    .line 179
    :goto_2
    iget-object v2, p0, Lzui/app/AlertActivity;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 180
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    .line 182
    :cond_3
    iget-object v1, p0, Lzui/app/AlertActivity;->mDm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 185
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private adjustPCModeDialogHeight()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 203
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit16 v0, v0, 0x1c2

    div-int/lit16 v0, v0, 0x204

    iput v0, p0, Lzui/app/AlertActivity;->mMaxHeight:I

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lzui/app/AlertActivity;->mMaxHeight:I

    if-le v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 206
    iget v1, p0, Lzui/app/AlertActivity;->mMaxHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 114
    const-class v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 118
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

    .line 120
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    return v1
.end method

.method private isInLandscape()Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lzui/app/AlertActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lzui/app/AlertActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lzui/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lzui/app/AlertActivity;->finish()V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 109
    invoke-static {p0, p1}, Lzui/app/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Lzui/app/AlertActivity;->isInLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget v0, Lzui/platform/R$style;->Theme_Zui_MessageDialog_Horizontal:I

    invoke-virtual {p0, v0}, Lzui/app/AlertActivity;->setTheme(I)V

    goto :goto_0

    .line 75
    :cond_0
    sget v0, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    invoke-virtual {p0, v0}, Lzui/app/AlertActivity;->setTheme(I)V

    .line 77
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 78
    sget-object v0, Lzui/platform/R$styleable;->MessageDialog:[I

    sget v1, Lzui/platform/R$attr;->messageDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lzui/app/AlertActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    sget v0, Lzui/platform/R$styleable;->MessageDialog_dialogWidth:I

    const/16 v1, 0x438

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lzui/app/AlertActivity;->mHorizontalMaxWidth:I

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    new-instance p1, Lcom/zui/internal/app/MessageController;

    invoke-virtual {p0}, Lzui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lcom/zui/internal/app/MessageController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lzui/app/AlertActivity;->mAlert:Lcom/zui/internal/app/MessageController;

    .line 84
    new-instance p1, Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-direct {p1, p0}, Lcom/zui/internal/app/MessageController$MessageParams;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lzui/app/AlertActivity;->mAlertParams:Lcom/zui/internal/app/MessageController$MessageParams;

    const-string p1, "window"

    .line 85
    invoke-virtual {p0, p1}, Lzui/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/app/AlertActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 86
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_dialog_offset_zui:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/app/AlertActivity;->mDialogOffset:I

    .line 88
    invoke-virtual {p0}, Lzui/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->alert_dialog_max_height_zui:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/app/AlertActivity;->mMaxHeight:I

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lzui/app/AlertActivity;->requestWindowFeature(I)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 146
    invoke-static {}, Lzui/util/CommonUtils;->isPCMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lzui/app/AlertActivity;->adjustPCModeDialogHeight()V

    :cond_0
    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .line 133
    iget-object v0, p0, Lzui/app/AlertActivity;->mAlert:Lcom/zui/internal/app/MessageController;

    iget-object v1, p0, Lzui/app/AlertActivity;->mAlertParams:Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-virtual {v0, v1}, Lcom/zui/internal/app/MessageController;->installContent(Lcom/zui/internal/app/DialogController$DialogParams;)V

    .line 134
    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lzui/app/AlertActivity;->adjustCenterDialogWidth()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lzui/app/AlertActivity;->adjustDialogWidthAndGravity()V

    :goto_0
    return-void
.end method
