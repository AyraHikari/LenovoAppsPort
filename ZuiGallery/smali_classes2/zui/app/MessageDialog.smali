.class public Lzui/app/MessageDialog;
.super Lzui/app/BaseDialog;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/MessageDialog$Builder;,
        Lzui/app/MessageDialog$OnDescriptionClickableTextListener;
    }
.end annotation


# static fields
.field public static final ITEM_HIGHLIGHT_MESSAGE:I = 0x2

.field public static final ITEM_HIGHLIGHT_NOTHING:I = 0x0

.field public static final ITEM_HIGHLIGHT_TITLE:I = 0x1

.field public static final TYPE_INFORMATION:I = 0x1

.field public static final TYPE_PERMISSION:I = 0x3

.field public static final TYPE_TEXTINPUT:I = 0x2

.field public static final TYPE_WARNING:I


# instance fields
.field private final MAX_MENU_ITEM_COUNT:I

.field private mDialogOffset:I

.field private mDm:Landroid/util/DisplayMetrics;

.field private mIsDialogCenter:Z

.field private mIsPCMode:Z

.field private mMaxHeight:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lzui/app/MessageDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lzui/app/MessageDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    .line 104
    sget v3, Lzui/platform/R$attr;->messageDialogTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lzui/app/BaseDialog;-><init>(Landroid/content/Context;IIIZ)V

    const/16 p2, 0x9

    .line 59
    iput p2, p0, Lzui/app/MessageDialog;->MAX_MENU_ITEM_COUNT:I

    .line 61
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p2, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lzui/app/MessageDialog;->mIsPCMode:Z

    .line 106
    new-instance p2, Lcom/zui/internal/app/MessageController;

    invoke-virtual {p0}, Lzui/app/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p2, v0, p0, v1}, Lcom/zui/internal/app/MessageController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lzui/platform/R$dimen;->bottom_dialog_offset_zui:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    if-nez p3, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lzui/app/MessageDialog;->setParentContext(Landroid/content/Context;)V

    .line 112
    :cond_0
    invoke-static {}, Lzui/util/CommonUtils;->isPCMode()Z

    move-result p1

    iput-boolean p1, p0, Lzui/app/MessageDialog;->mIsPCMode:Z

    return-void
.end method

.method private adjustCenterDialogWidth()V
    .locals 5

    .line 445
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 447
    iget-object v1, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v1, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v1}, Lcom/zui/internal/app/MessageController;->getCenterDialogWidth()I

    move-result v1

    .line 448
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getParentContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getParentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 450
    iget-boolean v3, p0, Lzui/app/MessageDialog;->mIsPCMode:Z

    if-eqz v3, :cond_0

    .line 451
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v2, v2, 0x190

    div-int/lit16 v2, v2, 0x2bc

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 453
    :cond_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    .line 454
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 456
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 460
    :cond_2
    iget-object v2, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 461
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 463
    :cond_3
    iget-object v1, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 466
    :goto_0
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private adjustDialogHeight()V
    .locals 2

    .line 416
    iget-object v0, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 417
    iget-object v0, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 419
    invoke-virtual {p0, v1}, Lzui/app/MessageDialog;->isInLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v1}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHorizontalHeight()I

    move-result v1

    iput v1, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v1}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result v1

    iput v1, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    if-le v0, v1, :cond_1

    .line 425
    iget-object v0, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 426
    iget v1, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 427
    iget-object v1, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private adjustDialogWidthAndGravity()V
    .locals 5

    .line 385
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 388
    iget-object v2, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v2, "11.5"

    .line 389
    invoke-static {v2}, Lzui/util/CommonUtils;->isNewerThanVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p0, v1}, Lzui/app/MessageDialog;->isInLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x55

    .line 392
    iget v3, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    .line 395
    :goto_0
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setGravity(I)V

    .line 396
    iget v2, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 397
    iget-object v2, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 398
    iget-object v2, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 399
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    iget-object v1, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v1}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result v1

    goto :goto_2

    .line 402
    :cond_2
    :goto_1
    iget-object v1, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v1, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v1}, Lcom/zui/internal/app/MessageController;->getAllowedHorizontalMaxWidth()I

    move-result v1

    .line 406
    :goto_2
    iget-object v2, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 407
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    .line 409
    :cond_3
    iget-object v1, p0, Lzui/app/MessageDialog;->mDm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lzui/app/MessageDialog;->mDialogOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 412
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private adjustPCModeDialogHeight()V
    .locals 2

    .line 432
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 435
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit16 v0, v0, 0x1c2

    div-int/lit16 v0, v0, 0x204

    iput v0, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    if-le v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 438
    iget v1, p0, Lzui/app/MessageDialog;->mMaxHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 439
    iget-object v1, p0, Lzui/app/MessageDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setWindowAnimation()V
    .locals 5

    .line 314
    iget-object v0, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lzui/app/MessageDialog;->isInLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    sget v0, Lzui/platform/R$style;->ActionBarShortMenuForLandscape:I

    .line 318
    sget v1, Lzui/platform/R$style;->ActionBarMediumMenuForLandscape:I

    .line 319
    sget v2, Lzui/platform/R$style;->ActionBarLongMenuForLandscape:I

    goto :goto_0

    .line 321
    :cond_0
    sget v0, Lzui/platform/R$style;->ActionBarShortMenu:I

    .line 322
    sget v1, Lzui/platform/R$style;->ActionBarMediumMenu:I

    .line 323
    sget v2, Lzui/platform/R$style;->ActionBarLongMenu:I

    .line 326
    :goto_0
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 328
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 330
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x3

    if-lez v3, :cond_1

    if-ge v3, v4, :cond_1

    .line 332
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    :cond_1
    if-lt v3, v4, :cond_2

    const/4 v0, 0x6

    if-ge v3, v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    .line 336
    :cond_2
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 306
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->onDismiss()V

    .line 307
    invoke-super {p0}, Lzui/app/BaseDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic getButton(I)Landroid/widget/Button;
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getCheckWidget()Landroid/widget/CheckBox;
    .locals 1

    .line 254
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getEditor()Landroid/widget/EditText;
    .locals 1

    .line 225
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->getEditor()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEditorErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 206
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->getEditorErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEditorHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 167
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->getEditorHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEditorPromptText()Ljava/lang/CharSequence;
    .locals 1

    .line 187
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->getEditorPromptText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEditorText()Ljava/lang/CharSequence;
    .locals 1

    .line 148
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->getEditorText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 1

    .line 48
    invoke-super {p0}, Lzui/app/BaseDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentContext()Landroid/content/Context;
    .locals 1

    .line 48
    invoke-super {p0}, Lzui/app/BaseDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 48
    invoke-super {p0}, Lzui/app/BaseDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isInLandscape(I)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->isInLandscape(I)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 363
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->shouldCancelDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lzui/app/MessageDialog;->cancel()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 346
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 351
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 353
    iget-boolean p1, p0, Lzui/app/MessageDialog;->mIsPCMode:Z

    if-eqz p1, :cond_0

    .line 354
    invoke-direct {p0}, Lzui/app/MessageDialog;->adjustPCModeDialogHeight()V

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0}, Lzui/app/MessageDialog;->adjustDialogHeight()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setButtonsVerticalAligned(Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setButtonsVerticalAligned(Z)V

    return-void
.end method

.method public setCancelableOnOrientation(Z)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setCancelableOnOrientation(Z)V

    return-void
.end method

.method public setCheckMessage(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 236
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/app/MessageController;->setCheckMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setDialogCenter(Z)V
    .locals 1

    .line 378
    iput-boolean p1, p0, Lzui/app/MessageDialog;->mIsDialogCenter:Z

    .line 379
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setDialogCenter(Z)V

    return-void
.end method

.method public setEditorErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setEditorErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setEditorHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorPromptMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setEditorPromptMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setEditorText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/app/MessageController;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageDialogType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setType(I)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setParentContext(Landroid/content/Context;)V

    return-void
.end method

.method public setShowEmptySpace(Z)V
    .locals 1

    .line 374
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/MessageController;->setShowEmptySpace(Z)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setView(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 5

    .line 270
    iget-object v0, p0, Lzui/app/MessageDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const-string v1, "11.5"

    .line 271
    invoke-static {v1}, Lzui/util/CommonUtils;->isNewerThanVersion(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v1, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v1}, Lcom/zui/internal/app/MessageController;->getType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 273
    invoke-virtual {p0, v0}, Lzui/app/MessageDialog;->isInLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0, v3}, Lzui/app/MessageDialog;->setDialogCenter(Z)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0, v2}, Lzui/app/MessageDialog;->setDialogCenter(Z)V

    .line 280
    :cond_1
    :goto_0
    invoke-super {p0}, Lzui/app/BaseDialog;->show()V

    .line 281
    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {p0, v3}, Lzui/app/MessageDialog;->setDialogCenter(Z)V

    .line 283
    invoke-direct {p0}, Lzui/app/MessageDialog;->adjustCenterDialogWidth()V

    .line 285
    :cond_2
    invoke-virtual {p0, v0}, Lzui/app/MessageDialog;->isInLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lzui/app/MessageDialog;->mIsDialogCenter:Z

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, v3}, Lcom/zui/internal/app/MessageController;->setInHorizontalMode(Z)V

    goto :goto_1

    .line 288
    :cond_3
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, v2}, Lcom/zui/internal/app/MessageController;->setInHorizontalMode(Z)V

    .line 290
    :goto_1
    iget-boolean v0, p0, Lzui/app/MessageDialog;->mIsPCMode:Z

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0, v3}, Lcom/zui/internal/app/MessageController;->setInPCMode(Z)V

    .line 293
    :cond_4
    iget-boolean v0, p0, Lzui/app/MessageDialog;->mIsDialogCenter:Z

    if-nez v0, :cond_5

    .line 294
    invoke-direct {p0}, Lzui/app/MessageDialog;->adjustDialogWidthAndGravity()V

    .line 295
    invoke-direct {p0}, Lzui/app/MessageDialog;->setWindowAnimation()V

    goto :goto_2

    .line 297
    :cond_5
    invoke-direct {p0}, Lzui/app/MessageDialog;->adjustCenterDialogWidth()V

    .line 298
    invoke-virtual {p0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lzui/platform/R$style;->Animation_Zui_Dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 301
    :goto_2
    iget-object v0, p0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Lcom/zui/internal/app/MessageController;->onShow()V

    return-void
.end method
