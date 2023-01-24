.class public Lzui/widget/StandardKeyboardViewX;
.super Landroid/inputmethodservice/KeyboardView;
.source "StandardKeyboardViewX.java"

# interfaces
.implements Lzui/widget/IKeyboardViewX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/StandardKeyboardViewX$CustomKey;
    }
.end annotation


# static fields
.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_WIDTH:I = 0xa

.field public static final INVALID_COLOR:I = -0x1

.field private static final LETTER_KEY_CHAR_WORD_STRING:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final TAG:Ljava/lang/String; = "StandardKeyboardView"


# instance fields
.field private mBindEditText:Landroid/widget/EditText;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCapsLockKeyBgIcon:Landroid/graphics/drawable/Drawable;

.field private mCapsLockKeyNormalBgIcon:Landroid/graphics/drawable/Drawable;

.field private mCapsLockKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

.field private mCapsLockUpperBgColor:I

.field private mConfirmKeyBgColor:I

.field private mConfirmKeyPressBgColor:I

.field private mConfirmKeyTextColorNormal:I

.field private mConfirmKeyTextColorPress:I

.field private mContext:Landroid/content/Context;

.field private mDeleteKeyBgIcon:Landroid/graphics/drawable/Drawable;

.field private mDeleteKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

.field private mEditTextMaxLength:I

.field private mEditTextMinLength:I

.field private mFunctionKeyBgColor:I

.field private mFunctionKeyPressBgColor:I

.field private mIsDrawKeyboardKeysLayout:Z

.field private mIsLetterNumber:Z

.field private mIsUpper:Z

.field private mKeyDefaultGap:I

.field private mKeyFont:Landroid/graphics/Typeface;

.field private mKeyPressBgColor:I

.field private mKeyRadiusCorner:F

.field private mKeyTextNormalColor:I

.field private mKeyTextPressColor:I

.field private mKeyTextSize:I

.field public mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

.field public mKeyboardSymbols:Landroid/inputmethodservice/Keyboard;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mOldHeight:I

.field private mOldWidth:I

.field private mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

.field private mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

.field private mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

.field private mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

.field private mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

.field private mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mPaint:Landroid/graphics/Paint;

.field public mReDrawKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzui/widget/StandardKeyboardViewX$CustomKey;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lzui/widget/StandardKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/StandardKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsUpper:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lzui/widget/StandardKeyboardViewX;->mIsLetterNumber:Z

    .line 66
    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsDrawKeyboardKeysLayout:Z

    .line 78
    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mLastWidth:I

    .line 79
    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mLastHeight:I

    .line 80
    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mOldWidth:I

    .line 81
    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mOldHeight:I

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    .line 84
    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMinLength:I

    const v0, 0x7fffffff

    .line 85
    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    .line 87
    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    .line 88
    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    .line 89
    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    .line 90
    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    .line 91
    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    .line 93
    new-instance v0, Lzui/widget/StandardKeyboardViewX$1;

    invoke-direct {v0, p0}, Lzui/widget/StandardKeyboardViewX$1;-><init>(Lzui/widget/StandardKeyboardViewX;)V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/StandardKeyboardViewX;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->reDrawCapsLock()V

    return-void
.end method

.method static synthetic access$100(Lzui/widget/StandardKeyboardViewX;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->onPressKeys(I)V

    return-void
.end method

.method static synthetic access$200(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->onKeyDeletePress()V

    return-void
.end method

.method static synthetic access$300(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->onShiftPress()V

    return-void
.end method

.method static synthetic access$400(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->onModeChangePress()V

    return-void
.end method

.method static synthetic access$500(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->onKeyDonePress()V

    return-void
.end method

.method static synthetic access$600(Lzui/widget/StandardKeyboardViewX;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->onKeyCharPress(I)V

    return-void
.end method

.method private calculateKeyboardKeysLayout()V
    .locals 12

    .line 353
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 354
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 355
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 359
    :cond_0
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getWidth()I

    move-result v0

    .line 360
    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    mul-int/lit8 v2, v1, 0x9

    sub-int v2, v0, v2

    const/16 v3, 0xa

    div-int/2addr v2, v3

    mul-int/lit8 v4, v2, 0xa

    sub-int v4, v0, v4

    mul-int/lit8 v5, v1, 0x9

    sub-int/2addr v4, v5

    .line 361
    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    mul-int/lit8 v6, v1, 0x8

    sub-int v6, v5, v6

    mul-int/lit8 v7, v2, 0x7

    sub-int/2addr v6, v7

    .line 363
    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v1, 0x4

    sub-int v7, v5, v7

    mul-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    sub-int/2addr v5, v8

    .line 367
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    move v10, v4

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_1

    .line 371
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/inputmethodservice/Keyboard$Key;

    .line 372
    iput v10, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 373
    iput v2, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 374
    iget v11, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v11, v2

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_1
    const/16 v10, 0x14

    if-ge v3, v10, :cond_2

    .line 380
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    .line 381
    iput v9, v10, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 382
    iput v2, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 383
    iget v10, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v10, v2

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v3, v2, 0x9

    sub-int/2addr v0, v3

    .line 387
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    :goto_2
    const/16 v3, 0x1d

    if-ge v10, v3, :cond_3

    .line 389
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    .line 390
    iput v0, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 392
    iput v2, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 393
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_3
    const/16 v9, 0x26

    if-ge v3, v9, :cond_5

    .line 399
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    .line 400
    iput v0, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 401
    iget-object v10, v9, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v10, v10, v8

    invoke-direct {p0, v10}, Lzui/widget/StandardKeyboardViewX;->isCustomKey(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 402
    iput v6, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 403
    iget v9, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v9, v6

    goto :goto_4

    .line 405
    :cond_4
    iput v2, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 406
    iget v9, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v9, v2

    :goto_4
    add-int/2addr v0, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 412
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    .line 413
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 414
    iput v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 416
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    invoke-direct {p0, v3}, Lzui/widget/StandardKeyboardViewX;->isCustomKey(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    iput v6, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 418
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v0, v6

    :goto_6
    add-int/2addr v4, v0

    goto :goto_7

    .line 419
    :cond_6
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    invoke-direct {p0, v3}, Lzui/widget/StandardKeyboardViewX;->isWhitespaceKey(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 420
    iget-boolean v3, p0, Lzui/widget/StandardKeyboardViewX;->mIsLetterNumber:Z

    if-eqz v3, :cond_7

    .line 421
    iput v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 422
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v0, v7

    goto :goto_6

    .line 424
    :cond_7
    iput v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 425
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v0, v5

    goto :goto_6

    .line 428
    :cond_8
    iput v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 429
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    add-int/2addr v0, v2

    goto :goto_6

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsDrawKeyboardKeysLayout:Z

    :cond_a
    :goto_8
    return-void
.end method

.method private drawKeyBg(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 639
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 641
    :cond_0
    iget-object p3, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyBgColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    :goto_0
    iget p3, p0, Lzui/widget/StandardKeyboardViewX;->mKeyRadiusCorner:F

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p4, p3

    .line 648
    :goto_1
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 649
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    .line 650
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget p2, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, p2

    .line 651
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingTop()I

    move-result p2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    int-to-float p2, v3

    invoke-direct {p3, v0, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 653
    iget-object p2, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object p3
.end method

.method private drawKeyIcon(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 592
    :cond_0
    iget-object v0, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    return-void

    .line 605
    :cond_1
    iget v0, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 606
    iget v1, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 607
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 608
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 609
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v4, v0

    iget p2, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 610
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p2, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 607
    invoke-virtual {p3, v2, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawKeyLabel(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V
    .locals 2

    .line 616
    iget-object v0, p2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    .line 622
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 624
    :cond_1
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextNormalColor:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    :goto_0
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyFont:Landroid/graphics/Typeface;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 628
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 629
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextSize:I

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 631
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    .line 632
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget v1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p4, p4

    sub-float/2addr v0, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v0, p4

    float-to-int p4, v0

    .line 633
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 634
    iget-object p2, p2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    int-to-float p4, p4

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTouchKey(Landroid/graphics/Canvas;)V
    .locals 4

    .line 565
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    if-eqz v0, :cond_4

    .line 566
    iget v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 567
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget v3, v3, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    invoke-direct {p0, p1, v0, v3, v1}, Lzui/widget/StandardKeyboardViewX;->drawKeyBg(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mKeyPressBgColor:I

    invoke-direct {p0, p1, v0, v3, v1}, Lzui/widget/StandardKeyboardViewX;->drawKeyBg(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v0

    .line 572
    :goto_0
    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    if-eq v1, v2, :cond_1

    .line 574
    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget v2, v2, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    invoke-direct {p0, p1, v1, v0, v2}, Lzui/widget/StandardKeyboardViewX;->drawKeyLabel(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    goto :goto_1

    .line 576
    :cond_1
    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget v2, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextPressColor:I

    invoke-direct {p0, p1, v1, v0, v2}, Lzui/widget/StandardKeyboardViewX;->drawKeyLabel(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    .line 580
    :cond_2
    :goto_1
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1}, Lzui/widget/StandardKeyboardViewX;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 582
    :cond_3
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 583
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1}, Lzui/widget/StandardKeyboardViewX;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private getThemeFont()Landroid/graphics/Typeface;
    .locals 3

    .line 664
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzui/themes/ThemeManager;->getInstance(Landroid/content/Context;)Lzui/themes/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lzui/themes/ThemeManager;->getSystemFont()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ttf"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    .line 670
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 671
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 166
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lzui/platform/R$styleable;->StandardKeyboardViewX:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    sget p2, Lzui/platform/R$styleable;->StandardKeyboardViewX_standard_editTextMinLength:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMinLength:I

    .line 173
    sget p2, Lzui/platform/R$styleable;->StandardKeyboardViewX_standard_editTextMaxLength:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    .line 176
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->initConfigValues()V

    .line 180
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->initKeyboardKeyFont()V

    .line 182
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->initKeyboardViewLayout()V

    .line 184
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->initKeyboardViewStatus()V

    .line 186
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private initConfigValues()V
    .locals 2

    .line 190
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyPressBgColor:I

    .line 191
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_function_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyPressBgColor:I

    .line 192
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_capslock_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockUpperBgColor:I

    .line 193
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_function_key_normal_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyBgColor:I

    .line 194
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_normal_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyBgColor:I

    .line 195
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyPressBgColor:I

    .line 197
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_key_text_normal_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextNormalColor:I

    .line 198
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_key_text_press_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextPressColor:I

    .line 199
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_text_normal_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyTextColorNormal:I

    .line 200
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_text_press_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyTextColorPress:I

    .line 202
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->standard_keyboard_view_key_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextSize:I

    .line 203
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->standard_keyboard_view_key_rectangle_radius_corner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyRadiusCorner:F

    .line 205
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->keyboardx_view_keyboard_key_delete_press:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mDeleteKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->standard_keyboard_view_keyboard_key_capslock_press:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->standard_keyboard_view_keyboard_key_caps_lock_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyNormalBgIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->standard_keyboard_view_keyboard_key_caps_lock_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyBgIcon:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->keyboardx_view_keyboard_key_delete_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mDeleteKeyBgIcon:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->standard_keyboard_view_keyboard_default_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyDefaultGap:I

    return-void
.end method

.method private initKeyboardKeyFont()V
    .locals 2

    .line 227
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyFont:Landroid/graphics/Typeface;

    .line 228
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->getThemeFont()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyFont:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private initKeyboardViewLayout()V
    .locals 3

    .line 216
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v2, Lzui/platform/R$xml;->standard_keyboard_view_letter_number_key:I

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    .line 217
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mContext:Landroid/content/Context;

    sget v2, Lzui/platform/R$xml;->standard_keyboard_view_symbols_key:I

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardSymbols:Landroid/inputmethodservice/Keyboard;

    return-void
.end method

.method private initKeyboardViewStatus()V
    .locals 1

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 223
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    return-void
.end method

.method private isCustomKey(I)Z
    .locals 6

    .line 437
    iget-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsLetterNumber:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v4, -0x4

    const/4 v5, -0x5

    if-eqz v0, :cond_1

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private isLetterKey(Ljava/lang/String;)Z
    .locals 1

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWhitespaceKey(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private onKeyCharPress(I)V
    .locals 2

    int-to-char p1, p1

    .line 719
    :try_start_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    .line 720
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    invoke-interface {v0, p1}, Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;->onKeyCharPress(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyCharPress: get input char happens "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StandardKeyboardView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onKeyDeletePress()V
    .locals 4

    .line 679
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    if-eqz v0, :cond_0

    .line 680
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;->onKeyDeletePress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 685
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    return-void
.end method

.method private onKeyDonePress()V
    .locals 1

    .line 691
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;->onKeyDonePress()Z

    :cond_0
    return-void
.end method

.method private onModeChangePress()V
    .locals 1

    .line 697
    iget-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsLetterNumber:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 698
    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsLetterNumber:Z

    .line 699
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardSymbols:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsLetterNumber:Z

    .line 702
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 714
    :goto_0
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->requestSizeChanged()V

    return-void
.end method

.method private onPressKeys(I)V
    .locals 5

    .line 248
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 250
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    .line 252
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_4

    .line 253
    new-instance v0, Lzui/widget/StandardKeyboardViewX$CustomKey;

    invoke-direct {v0}, Lzui/widget/StandardKeyboardViewX$CustomKey;-><init>()V

    .line 254
    iput-object v3, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, -0x5

    if-eq p1, v1, :cond_3

    const/4 v1, -0x4

    if-eq p1, v1, :cond_2

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyPressBgColor:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 266
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 267
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->reDrawCapsLock()V

    goto :goto_1

    .line 271
    :cond_1
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyPressBgColor:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 272
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextNormalColor:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    goto :goto_1

    .line 257
    :cond_2
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyPressBgColor:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 258
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyTextColorPress:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    goto :goto_1

    .line 261
    :cond_3
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyPressBgColor:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 262
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mDeleteKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 277
    :goto_1
    invoke-direct {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setTouchKey(Lzui/widget/StandardKeyboardViewX$CustomKey;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private onShiftPress()V
    .locals 5

    .line 284
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 285
    iget-boolean v1, p0, Lzui/widget/StandardKeyboardViewX;->mIsUpper:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 286
    iput-boolean v3, p0, Lzui/widget/StandardKeyboardViewX;->mIsUpper:Z

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 288
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzui/widget/StandardKeyboardViewX;->isLetterKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 290
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    add-int/lit8 v1, v1, 0x20

    aput v1, v4, v3

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_0

    .line 292
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->reDrawCapsLock()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 296
    iput-boolean v1, p0, Lzui/widget/StandardKeyboardViewX;->mIsUpper:Z

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 298
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzui/widget/StandardKeyboardViewX;->isLetterKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 300
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    add-int/lit8 v1, v1, -0x20

    aput v1, v4, v3

    goto :goto_1

    .line 301
    :cond_4
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_3

    .line 303
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->reDrawCapsLock()V

    goto :goto_1

    .line 307
    :cond_5
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    return-void
.end method

.method private performKeyTouchEvent()V
    .locals 1

    .line 730
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    if-eqz v0, :cond_0

    .line 731
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;->onKeyPressPlaySoundEffect()V

    .line 734
    :cond_0
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    if-eqz v0, :cond_1

    .line 735
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;->onKeyPressHapticFeedback()V

    :cond_1
    return-void
.end method

.method private reDrawCapsLock()V
    .locals 6

    .line 318
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/StandardKeyboardViewX$CustomKey;

    .line 324
    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_1

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 333
    :cond_3
    new-instance v0, Lzui/widget/StandardKeyboardViewX$CustomKey;

    invoke-direct {v0}, Lzui/widget/StandardKeyboardViewX$CustomKey;-><init>()V

    .line 334
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    .line 336
    iget-object v5, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    if-ne v5, v2, :cond_4

    .line 337
    iput-object v4, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    .line 338
    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyBgColor:I

    .line 339
    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyNormalBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 340
    iget-boolean v2, p0, Lzui/widget/StandardKeyboardViewX;->mIsUpper:Z

    if-eqz v2, :cond_5

    .line 341
    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockUpperBgColor:I

    .line 342
    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 344
    :cond_5
    iput v1, v0, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 345
    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_6
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->invalidate()V

    return-void
.end method

.method private reDrawCustomKey(Landroid/graphics/Canvas;)V
    .locals 6

    .line 520
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_9

    .line 529
    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/StandardKeyboardViewX$CustomKey;

    .line 530
    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    iget-object v4, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    iget-object v4, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v3

    if-ne v2, v4, :cond_2

    goto :goto_3

    .line 534
    :cond_2
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 535
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 539
    :cond_3
    iget v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v2, v3, :cond_4

    .line 540
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget v5, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    invoke-direct {p0, p1, v2, v5, v4}, Lzui/widget/StandardKeyboardViewX;->drawKeyBg(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v2

    goto :goto_1

    .line 542
    :cond_4
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, p1, v2, v3, v4}, Lzui/widget/StandardKeyboardViewX;->drawKeyBg(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v2

    .line 545
    :goto_1
    iget-object v4, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 546
    iget v4, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    if-eq v4, v3, :cond_5

    .line 547
    iget-object v3, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget v4, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    invoke-direct {p0, p1, v3, v2, v4}, Lzui/widget/StandardKeyboardViewX;->drawKeyLabel(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    goto :goto_2

    .line 549
    :cond_5
    iget-object v4, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, p1, v4, v2, v3}, Lzui/widget/StandardKeyboardViewX;->drawKeyLabel(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    .line 554
    :cond_6
    :goto_2
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 555
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v2, v1}, Lzui/widget/StandardKeyboardViewX;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 556
    :cond_7
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 557
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v2, v1}, Lzui/widget/StandardKeyboardViewX;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 560
    :cond_9
    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->drawTouchKey(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setTouchKey(Lzui/widget/StandardKeyboardViewX$CustomKey;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    return-void
.end method

.method private updateReDrawKeys()V
    .locals 6

    .line 470
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    :goto_0
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 479
    :cond_1
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 480
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 481
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    .line 482
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    const/4 v5, -0x4

    if-ne v4, v5, :cond_2

    .line 484
    new-instance v4, Lzui/widget/StandardKeyboardViewX$CustomKey;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$CustomKey;-><init>()V

    .line 485
    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    .line 486
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyBgColor:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 487
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mConfirmKeyTextColorNormal:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    .line 488
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 489
    :cond_2
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 491
    new-instance v4, Lzui/widget/StandardKeyboardViewX$CustomKey;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$CustomKey;-><init>()V

    .line 492
    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    .line 493
    iget-boolean v3, p0, Lzui/widget/StandardKeyboardViewX;->mIsUpper:Z

    if-eqz v3, :cond_3

    .line 494
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mKeyPressBgColor:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 495
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyPressBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 497
    :cond_3
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyBgColor:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 498
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mCapsLockKeyBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 500
    :goto_2
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 501
    :cond_4
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    const/4 v5, -0x5

    if-ne v4, v5, :cond_5

    .line 503
    new-instance v4, Lzui/widget/StandardKeyboardViewX$CustomKey;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$CustomKey;-><init>()V

    .line 504
    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    .line 505
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyBgColor:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 506
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mDeleteKeyBgIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 507
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 508
    :cond_5
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    const/4 v5, -0x2

    if-ne v4, v5, :cond_6

    .line 510
    new-instance v4, Lzui/widget/StandardKeyboardViewX$CustomKey;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$CustomKey;-><init>()V

    .line 511
    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->key:Landroid/inputmethodservice/Keyboard$Key;

    .line 512
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mKeyTextNormalColor:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyTextColor:I

    .line 513
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mFunctionKeyBgColor:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$CustomKey;->customKeyBgColor:I

    .line 514
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    const/16 v0, 0x8

    .line 783
    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setVisibility(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 741
    iget-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->mIsDrawKeyboardKeysLayout:Z

    if-nez v0, :cond_0

    .line 742
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->calculateKeyboardKeysLayout()V

    .line 744
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 746
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mCanvas:Landroid/graphics/Canvas;

    .line 747
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->updateReDrawKeys()V

    .line 748
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->reDrawCustomKey(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEditTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 768
    invoke-super {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/KeyboardView;->onSizeChanged(IIII)V

    .line 770
    iput p1, p0, Lzui/widget/StandardKeyboardViewX;->mLastWidth:I

    .line 771
    iput p2, p0, Lzui/widget/StandardKeyboardViewX;->mLastHeight:I

    .line 772
    iput p3, p0, Lzui/widget/StandardKeyboardViewX;->mOldWidth:I

    .line 773
    iput p4, p0, Lzui/widget/StandardKeyboardViewX;->mOldHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 753
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 760
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mTouchKey:Lzui/widget/StandardKeyboardViewX$CustomKey;

    goto :goto_0

    .line 757
    :cond_1
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->performKeyTouchEvent()V

    :goto_0
    return v0
.end method

.method public requestSizeChanged()V
    .locals 4

    .line 235
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mLastWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->mLastHeight:I

    if-eqz v1, :cond_0

    .line 236
    iget v2, p0, Lzui/widget/StandardKeyboardViewX;->mOldWidth:I

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->mOldHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lzui/widget/StandardKeyboardViewX;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setBindEditText(Landroid/widget/EditText;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    return-void
.end method

.method public setEditTextMaxLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 830
    :cond_0
    iput p1, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    .line 831
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMinLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 821
    :cond_0
    iput p1, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMinLength:I

    .line 822
    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 244
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->calculateKeyboardKeysLayout()V

    return-void
.end method

.method public setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    return-void
.end method

.method public setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    return-void
.end method

.method public setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    return-void
.end method

.method public setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    return-void
.end method

.method public setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setVisibility(I)V

    return-void
.end method

.method public updateKeyboardViewStatus()V
    .locals 5

    .line 840
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7fffffff

    .line 843
    iget v2, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    if-ne v1, v2, :cond_2

    .line 844
    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 845
    instance-of v4, v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_1

    .line 846
    check-cast v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v3}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 852
    :cond_2
    :goto_1
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMinLength:I

    if-ge v0, v1, :cond_3

    .line 853
    iput v1, p0, Lzui/widget/StandardKeyboardViewX;->mEditTextMaxLength:I

    :cond_3
    return-void
.end method
