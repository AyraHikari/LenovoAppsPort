.class public Lzui/widget/BottomBarItem;
.super Landroid/widget/LinearLayout;
.source "BottomBarItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/BottomBarItem$OnSelectedListener;
    }
.end annotation


# static fields
.field public static final BOTTOM_BAR_ITEM_STATUS_NOT_SELECTED:I = 0x0

.field public static final BOTTOM_BAR_ITEM_STATUS_PRE_SELECT:I = 0x1

.field public static final BOTTOM_BAR_ITEM_STATUS_SELECTED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MAX_FONT_SCALE:F = 1.5f

.field private static final TAG:Ljava/lang/String; = "BottomBarItem"


# instance fields
.field private final mBorderRect:Landroid/graphics/Rect;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDropNextTouchEvent:Z

.field private mFontMaxScale:F

.field private mHorizontalLayout:Z

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnSelectedListener:Lzui/widget/BottomBarItem$OnSelectedListener;

.field private mOutofBorder:Z

.field private mReceivedTouchDown:Z

.field private mSelectEnabled:Z

.field private mSelected:Z

.field private mText:Ljava/lang/String;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDisabledColor:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lzui/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 105
    sget v0, Lzui/platform/R$style;->Theme_Zui:I

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lzui/widget/BottomBarItem;->mBorderRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lzui/widget/BottomBarItem;->mSelectEnabled:Z

    .line 112
    sget-object v0, Lzui/platform/R$styleable;->BottomBarItem:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 114
    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_src:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 115
    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_text:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/BottomBarItem;->mText:Ljava/lang/String;

    .line 116
    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_textColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    .line 117
    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_textSize:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 118
    sget v2, Lzui/platform/R$styleable;->BottomBarItem_android_state_focused:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    .line 119
    sget v2, Lzui/platform/R$styleable;->BottomBarItem_fontMaxScale:I

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {p4, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lzui/widget/BottomBarItem;->mFontMaxScale:F

    .line 120
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 122
    sget p3, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lzui/widget/BottomBarItem;->mHorizontalLayout:Z

    .line 123
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 125
    iget p3, p2, Landroid/content/res/Configuration;->fontScale:F

    iget p4, p0, Lzui/widget/BottomBarItem;->mFontMaxScale:F

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    .line 126
    iput p4, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 128
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/BottomBarItem;->mContext:Landroid/content/Context;

    .line 129
    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->init(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0, v0}, Lzui/widget/BottomBarItem;->updateTextSizeIfNoImage(I)V

    .line 133
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mText:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->setText(Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 137
    iget-object p2, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_2
    invoke-direct {p0}, Lzui/widget/BottomBarItem;->updateContentVisibility()V

    return-void
.end method

.method private getTextColorAccordingState(ZZ)I
    .locals 2

    if-nez p2, :cond_0

    .line 400
    iget p1, p0, Lzui/widget/BottomBarItem;->mTextDisabledColor:I

    return p1

    .line 402
    :cond_0
    iget-object p2, p0, Lzui/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x101009c

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 404
    invoke-virtual {p2, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    .line 407
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1

    :cond_2
    const-string p1, "BottomBarItem"

    const-string p2, "mTextColor is null!"

    .line 410
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->mHorizontalLayout:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lzui/platform/R$layout;->bottom_bar_item:I

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 351
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lzui/platform/R$layout;->bottom_bar_item_horizontal:I

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 356
    :goto_1
    sget p1, Lzui/platform/R$id;->bottombar_item_image:I

    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    .line 357
    sget p1, Lzui/platform/R$id;->bottombar_item_text:I

    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    .line 358
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    .line 359
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    .line 361
    :cond_2
    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$color;->bottom_tabbar_item_text_disabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomBarItem;->mTextDisabledColor:I

    .line 363
    sget p1, Lzui/platform/R$id;->bottombar_item_container:I

    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lzui/widget/BottomBarItem;->mContainer:Landroid/widget/LinearLayout;

    .line 364
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->updateFocusUI(Z)V

    return-void
.end method

.method private setFocuseState(Z)V
    .locals 1

    .line 421
    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->mSelectEnabled:Z

    if-eqz v0, :cond_0

    .line 422
    iput-boolean p1, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    .line 423
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mOnSelectedListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v0, p0, p1}, Lzui/widget/BottomBarItem$OnSelectedListener;->onSelected(Lzui/widget/BottomBarItem;Z)V

    :cond_0
    return-void
.end method

.method private startItemAnimation()V
    .locals 5

    .line 374
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 375
    iget-object v1, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 378
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 379
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateContentVisibility()V
    .locals 3

    .line 386
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 387
    :cond_1
    :goto_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :goto_1
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 394
    :cond_2
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateFocusUI(Z)V
    .locals 5

    .line 434
    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->mSelectEnabled:Z

    if-eqz v0, :cond_4

    const-string v0, "12"

    .line 435
    invoke-static {v0}, Lzui/util/CommonUtils;->isNewerThanVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/BottomBarItem;->mContainer:Landroid/widget/LinearLayout;

    .line 444
    :cond_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-array v3, v1, [I

    const v4, 0x10100a7

    aput v4, v3, v2

    .line 446
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    new-array v3, v1, [I

    const v4, 0x101009e

    aput v4, v3, v2

    .line 448
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 450
    :goto_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_2
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lzui/widget/BottomBarItem;->getTextColorAccordingState(ZZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    :cond_3
    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->invalidate()V

    :cond_4
    return-void
.end method

.method private updateTextSizeIfNoImage(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 464
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 465
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lzui/platform/R$dimen;->bottom_bar_item_text_size_large:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lzui/platform/R$dimen;->bottom_bar_item_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 469
    :goto_0
    iget-object v1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 471
    :cond_1
    iget-object v1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    return-void
.end method


# virtual methods
.method cancelTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lzui/widget/BottomBarItem;->mOutofBorder:Z

    .line 275
    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0}, Lzui/widget/BottomBarItem;->updateFocusUI(Z)V

    :cond_0
    return-void
.end method

.method public enableSelect(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lzui/widget/BottomBarItem;->mSelectEnabled:Z

    return-void
.end method

.method public getImageResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 153
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 175
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 188
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 3

    .line 285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 335
    :pswitch_0
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->mReceivedTouchDown:Z

    .line 336
    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mDropNextTouchEvent:Z

    if-nez p1, :cond_2

    .line 337
    invoke-direct {p0, v2}, Lzui/widget/BottomBarItem;->updateFocusUI(Z)V

    goto :goto_1

    :pswitch_1
    if-nez p3, :cond_0

    .line 313
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 314
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 325
    iput-boolean v1, p0, Lzui/widget/BottomBarItem;->mOutofBorder:Z

    .line 326
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->mReceivedTouchDown:Z

    .line 327
    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mDropNextTouchEvent:Z

    if-nez p1, :cond_2

    .line 328
    invoke-direct {p0, v2}, Lzui/widget/BottomBarItem;->updateFocusUI(Z)V

    goto :goto_1

    .line 302
    :pswitch_2
    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mOutofBorder:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mReceivedTouchDown:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->mDropNextTouchEvent:Z

    if-nez p1, :cond_1

    .line 303
    invoke-direct {p0, v1}, Lzui/widget/BottomBarItem;->setFocuseState(Z)V

    .line 305
    :cond_1
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->mReceivedTouchDown:Z

    goto :goto_1

    .line 289
    :pswitch_3
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->mOutofBorder:Z

    .line 290
    iput-boolean v1, p0, Lzui/widget/BottomBarItem;->mReceivedTouchDown:Z

    .line 291
    iget-boolean p2, p0, Lzui/widget/BottomBarItem;->mSelectEnabled:Z

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lzui/widget/BottomBarItem;->mDropNextTouchEvent:Z

    .line 292
    invoke-direct {p0, v1}, Lzui/widget/BottomBarItem;->updateFocusUI(Z)V

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isFocused()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 231
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 235
    iget-boolean v1, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    invoke-direct {p0, v1, p1}, Lzui/widget/BottomBarItem;->getTextColorAccordingState(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    :cond_1
    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->invalidate()V

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->updateFocusUI(Z)V

    .line 217
    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->setFocuseState(Z)V

    return-void
.end method

.method public setImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 144
    iput-object p1, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnSelectedListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lzui/widget/BottomBarItem;->mOnSelectedListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 198
    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->invalidate()V

    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 179
    iput-object p1, p0, Lzui/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    .line 180
    iget-object p1, p0, Lzui/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->mSelected:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lzui/widget/BottomBarItem;->getTextColorAccordingState(ZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextDisabledColor(I)V
    .locals 0

    .line 184
    iput p1, p0, Lzui/widget/BottomBarItem;->mTextDisabledColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->updateTextSizeIfNoImage(I)V

    return-void
.end method
