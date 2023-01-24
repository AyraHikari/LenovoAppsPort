.class public Lzui/widget/AlphabeticIndexBar;
.super Landroid/view/View;
.source "AlphabeticIndexBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_TIME_INTERVAL:I = 0x7d0

.field private static final DEBUG:Z = false

.field private static final DOT:Ljava/lang/String; = "\u2022"

.field private static final TAG:Ljava/lang/String; = "IndexBar"

.field private static final TOUCH_PADDING:I = 0x14


# instance fields
.field private mAlphabetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBarHeight:I

.field private mBarWidth:I

.field private mBgColor:I

.field private mChangeListener:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentFocusIndex:I

.field private mDotRadius:I

.field private mFallbackUpward:Z

.field private mFocusIndex:I

.field private mFocusedAlphabet:Ljava/lang/String;

.field private mFocusedBgColor:I

.field private mFocusedCircleRadius:I

.field private mFocusedTextColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHintCircleRadius:I

.field private mHintCircleY:I

.field private mHintRunnable:Ljava/lang/Runnable;

.field private mHintTextColor:I

.field private mHintTextSize:I

.field private mHintTextView:Landroid/widget/TextView;

.field private mHintWindow:Landroid/widget/PopupWindow;

.field private mIndexBarRect:Landroid/graphics/RectF;

.field private mIsHorizontal:Z

.field private mItemHeight:I

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mTouchRect:Landroid/graphics/RectF;

.field private mValidAlphabetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVibHelper:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lzui/widget/AlphabeticIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    sget v0, Lzui/platform/R$attr;->alphabeticIndexBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/AlphabeticIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/AlphabeticIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mTouchRect:Landroid/graphics/RectF;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lzui/widget/AlphabeticIndexBar$1;

    invoke-direct {v0, p0}, Lzui/widget/AlphabeticIndexBar$1;-><init>(Lzui/widget/AlphabeticIndexBar;)V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintRunnable:Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Lzui/widget/AlphabeticIndexBar;->setFocusable(Z)V

    .line 126
    invoke-direct {p0, p1}, Lzui/widget/AlphabeticIndexBar;->isHorzontal(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lzui/widget/AlphabeticIndexBar;->mIsHorizontal:Z

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/AlphabeticIndexBar;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 128
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    .line 132
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 133
    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mVibHelper:Lzui/util/VibrationHelper;

    return-void
.end method

.method static synthetic access$000(Lzui/widget/AlphabeticIndexBar;)Landroid/widget/PopupWindow;
    .locals 0

    .line 50
    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private checkFocusChange(IF)V
    .locals 3

    .line 577
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lzui/widget/AlphabeticIndexBar;->isAlphabetChangedInSameIndex(IF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    :cond_0
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    .line 579
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    .line 580
    iget-boolean v2, p0, Lzui/widget/AlphabeticIndexBar;->mFallbackUpward:Z

    invoke-direct {p0, p1, p2, v2}, Lzui/widget/AlphabeticIndexBar;->setFocusIndex(IFZ)V

    .line 581
    invoke-virtual {p0}, Lzui/widget/AlphabeticIndexBar;->invalidate()V

    .line 582
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->showHintWindow()V

    .line 583
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    if-eq v0, p1, :cond_1

    .line 584
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->vibration()V

    .line 586
    :cond_1
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mChangeListener:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    if-eqz p1, :cond_2

    .line 591
    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;->OnFocusedAlphabetChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private createHintWindow()V
    .locals 4

    .line 642
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    .line 643
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$layout;->alphabetic_index_bar_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 647
    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 648
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextView:Landroid/widget/TextView;

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    :cond_0
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 651
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleRadius:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 653
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleRadius:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 654
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 655
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 656
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 657
    invoke-virtual {p0, v0}, Lzui/widget/AlphabeticIndexBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 658
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mBarHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleY:I

    .line 660
    iget-boolean v0, p0, Lzui/widget/AlphabeticIndexBar;->mIsHorizontal:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string v0, "status_bar_height_landscape"

    .line 661
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResDimision(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "status_bar_height_portrait"

    .line 664
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResDimision(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 668
    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleY:I

    add-int/2addr v1, v0

    iput v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleY:I

    :cond_2
    return-void
.end method

.method private drawAlphaBet(Landroid/graphics/Canvas;IFLandroid/text/TextPaint;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u2022"

    .line 412
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mItemHeight:I

    mul-int/2addr p2, v1

    int-to-float p2, p2

    add-float/2addr v0, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    add-float/2addr v0, p2

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->mDotRadius:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p2}, Lzui/widget/AlphabeticIndexBar;->getTextBaseline(Landroid/text/TextPaint;I)F

    move-result p2

    invoke-virtual {p1, v0, p3, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawFocus(Landroid/graphics/Canvas;)V
    .locals 4

    .line 438
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 440
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedBgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->mItemHeight:I

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    mul-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 444
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 445
    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v1, v0, v2}, Lzui/widget/AlphabeticIndexBar;->drawAlphaBet(Landroid/graphics/Canvas;IFLandroid/text/TextPaint;)V

    :cond_0
    return-void
.end method

.method private drawIndexBar(Landroid/graphics/Canvas;)V
    .locals 4

    .line 423
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 424
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 427
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 428
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 429
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    .line 430
    :goto_0
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v0, v1, v2}, Lzui/widget/AlphabeticIndexBar;->drawAlphaBet(Landroid/graphics/Canvas;IFLandroid/text/TextPaint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findIndex(IFZ)Z
    .locals 4

    .line 457
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u2022"

    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    add-int/lit8 p3, p1, 0x1

    .line 464
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_6

    .line 465
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_0

    .line 468
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    sub-int/2addr p3, v1

    sub-int/2addr p3, v0

    int-to-float p3, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    mul-float/2addr p3, p2

    float-to-double p1, p3

    .line 476
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v1

    :goto_1
    int-to-char p1, p1

    if-eq p1, v1, :cond_6

    .line 481
    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mValidAlphabetList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 483
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    :goto_2
    move v2, v0

    goto :goto_5

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p1, -0x1

    if-ltz p3, :cond_6

    .line 493
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    add-int/lit8 v1, p1, 0x1

    .line 495
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 496
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    sub-int v3, v1, p3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    mul-float/2addr v3, p2

    float-to-double p1, v3

    .line 504
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p3, p1

    int-to-char p1, p3

    :goto_4
    if-eq p1, v1, :cond_6

    .line 509
    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mValidAlphabetList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 511
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_4

    .line 520
    :cond_5
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mValidAlphabetList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 522
    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    :cond_6
    :goto_5
    return v2
.end method

.method private getListFromCharsWithDefaultValue([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 393
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 403
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 404
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lzui/widget/AlphabeticIndexBar;->mIsHorizontal:Z

    if-eqz p1, :cond_2

    .line 395
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$array;->alphabetic_index_bar_horizontal_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 398
    :cond_2
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$array;->alphabetic_index_bar_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getTextBaseline(Landroid/text/TextPaint;I)F
    .locals 2

    .line 450
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 451
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, p1

    .line 452
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mItemHeight:I

    mul-int/2addr p2, v1

    int-to-float p2, p2

    add-float/2addr p1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    add-float/2addr p1, p2

    add-float/2addr p1, v0

    return p1
.end method

.method private hideHintWindowWithDelay()V
    .locals 4

    .line 636
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 324
    sget-object v0, Lzui/platform/R$styleable;->AlphabeticIndexBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 326
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_color:I

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_background:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 326
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mBgColor:I

    .line 329
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_textSize:I

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_text_size:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 329
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mTextSize:I

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_dot_radius:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mDotRadius:I

    .line 333
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_textColor:I

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_text_color:I

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 334
    invoke-virtual {p4, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    .line 333
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mTextColor:I

    .line 336
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_focusedCircleRadius:I

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_focused_circle_radius:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 336
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedCircleRadius:I

    .line 338
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_focusedTextColor:I

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_focused_text_color:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 338
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedTextColor:I

    .line 340
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_focusedBackgroundColor:I

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_focused_background:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 340
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedBgColor:I

    .line 342
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_hintTextColor:I

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_hint_text_color:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 342
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextColor:I

    .line 344
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_hintTextSize:I

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_hint_text_size:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 344
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextSize:I

    .line 346
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_hintCircleRadius:I

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_hint_circle_radius:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 346
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleRadius:I

    .line 348
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_entries:I

    .line 349
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    .line 348
    invoke-direct {p0, p3}, Lzui/widget/AlphabeticIndexBar;->getListFromCharsWithDefaultValue([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    .line 350
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_entryValues:I

    .line 351
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    .line 350
    invoke-direct {p0, p3}, Lzui/widget/AlphabeticIndexBar;->getListFromCharsWithDefaultValue([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/AlphabeticIndexBar;->mValidAlphabetList:Ljava/util/List;

    .line 353
    iget-boolean p3, p0, Lzui/widget/AlphabeticIndexBar;->mIsHorizontal:Z

    if-eqz p3, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_item_height_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_item_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 360
    :goto_0
    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_itemHeight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mItemHeight:I

    .line 361
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_itemWidth:I

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 361
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mBarWidth:I

    .line 363
    iget p3, p0, Lzui/widget/AlphabeticIndexBar;->mItemHeight:I

    iget-object p4, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    mul-int/2addr p3, p4

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mBarHeight:I

    .line 365
    iget-boolean p3, p0, Lzui/widget/AlphabeticIndexBar;->mIsHorizontal:Z

    if-eqz p3, :cond_1

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_horizontal_padding_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1

    .line 369
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_horizontal_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 372
    :goto_1
    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingStart:I

    const/4 v0, -0x1

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    if-ne p4, v0, :cond_2

    .line 374
    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingLeft:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    .line 377
    :cond_2
    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingEnd:I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingEnd:I

    if-ne p4, v0, :cond_3

    .line 379
    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingRight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingEnd:I

    .line 382
    :cond_3
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingTop:I

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lzui/platform/R$dimen;->alphabetic_index_bar_vertical_padding:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 382
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    .line 384
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingBottom:I

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_vertical_padding:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 384
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingBottom:I

    .line 386
    sget p1, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_defaultValue:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    .line 387
    sget p1, Lzui/platform/R$styleable;->AlphabeticIndexBar_fallbackUpward:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lzui/widget/AlphabeticIndexBar;->mFallbackUpward:Z

    .line 388
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isAlphabetChangedInSameIndex(IF)Z
    .locals 5

    .line 554
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u2022"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 555
    iget-object v4, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 556
    iget-object v4, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 557
    iget-object v4, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    mul-float/2addr v3, p2

    float-to-double p1, v3

    .line 559
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr v0, p1

    int-to-char p1, v0

    .line 564
    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isHorzontal(Landroid/content/Context;)Z
    .locals 3

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 675
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 676
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private moveFocusWithKey(Z)V
    .locals 4

    .line 597
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    .line 598
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v0, -0x1

    if-ltz p1, :cond_1

    add-int/lit8 p1, v0, -0x1

    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    .line 601
    invoke-direct {p0, p1, v3, v2}, Lzui/widget/AlphabeticIndexBar;->setFocusIndex(IFZ)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 604
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 605
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {p0, v3, p1, v2}, Lzui/widget/AlphabeticIndexBar;->setFocusIndex(IFZ)V

    .line 609
    :cond_1
    :goto_0
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    if-eq v0, p1, :cond_3

    .line 610
    invoke-virtual {p0}, Lzui/widget/AlphabeticIndexBar;->invalidate()V

    .line 611
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->vibration()V

    .line 612
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->showHintWindow()V

    .line 613
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mChangeListener:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    if-eqz p1, :cond_2

    .line 618
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;->OnFocusedAlphabetChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_2
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->hideHintWindowWithDelay()V

    :cond_3
    return-void
.end method

.method private setFocusIndex(IFZ)V
    .locals 1

    if-ltz p1, :cond_3

    .line 529
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-eqz p3, :cond_1

    :goto_0
    if-ltz p1, :cond_3

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/AlphabeticIndexBar;->findIndex(IFZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 538
    :cond_1
    :goto_1
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/AlphabeticIndexBar;->findIndex(IFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private showHintWindow()V
    .locals 4

    .line 625
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 626
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->createHintWindow()V

    .line 628
    :cond_0
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 629
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_1
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x31

    const/4 v2, 0x0

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mHintCircleY:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private vibration()V
    .locals 10

    .line 687
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mVibHelper:Lzui/util/VibrationHelper;

    const/4 v1, 0x2

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0x32

    const/16 v7, 0x32

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 289
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 290
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_3

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    const/16 v4, 0x36

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x41

    sub-int/2addr v0, v3

    int-to-char v0, v0

    .line 305
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lzui/widget/AlphabeticIndexBar;->setFocusAlphabet(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    .line 308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "#"

    .line 310
    invoke-virtual {p0, v0, v1}, Lzui/widget/AlphabeticIndexBar;->setFocusAlphabet(Ljava/lang/String;Z)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-direct {p0, v1}, Lzui/widget/AlphabeticIndexBar;->moveFocusWithKey(Z)V

    goto :goto_0

    .line 298
    :cond_3
    invoke-direct {p0, v2}, Lzui/widget/AlphabeticIndexBar;->moveFocusWithKey(Z)V

    :goto_0
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    return v2

    .line 319
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 244
    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v1, v2

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mItemHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v3, v2

    .line 245
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lzui/widget/AlphabeticIndexBar;->mCurrentFocusIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_0

    .line 251
    iput v4, p0, Lzui/widget/AlphabeticIndexBar;->mCurrentFocusIndex:I

    goto :goto_0

    .line 252
    :cond_0
    iget-object v6, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 253
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Lzui/widget/AlphabeticIndexBar;->mCurrentFocusIndex:I

    .line 255
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 267
    :cond_2
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->mCurrentFocusIndex:I

    invoke-direct {p0, p1, v2}, Lzui/widget/AlphabeticIndexBar;->checkFocusChange(IF)V

    goto :goto_1

    .line 271
    :cond_3
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->hideHintWindowWithDelay()V

    goto :goto_1

    .line 257
    :cond_4
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mTouchRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 258
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->mCurrentFocusIndex:I

    invoke-direct {p0, p1, v2}, Lzui/widget/AlphabeticIndexBar;->checkFocusChange(IF)V

    :goto_1
    return v5

    :cond_5
    return v4
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 207
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    .line 199
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingEnd:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    .line 195
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 203
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 279
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 283
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-direct {p0, p1}, Lzui/widget/AlphabeticIndexBar;->drawIndexBar(Landroid/graphics/Canvas;)V

    .line 236
    invoke-direct {p0, p1}, Lzui/widget/AlphabeticIndexBar;->drawFocus(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 219
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->mBarWidth:I

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    add-int/2addr p1, p2

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingEnd:I

    add-int/2addr p1, p2

    .line 220
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mBarHeight:I

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 221
    invoke-virtual {p0, p1, v0}, Lzui/widget/AlphabeticIndexBar;->setMeasuredDimension(II)V

    .line 222
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    int-to-float v0, p2

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    int-to-float v2, v1

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mBarWidth:I

    add-int/2addr v3, p2

    int-to-float p2, v3

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mBarHeight:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mTouchRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float/2addr p2, v0

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingEnd:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mIndexBarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingBottom:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setFocusAlphabet(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, p1, v0}, Lzui/widget/AlphabeticIndexBar;->setFocusAlphabet(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFocusAlphabet(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p1, :cond_5

    .line 148
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 151
    :goto_0
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 152
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "\u2022"

    .line 153
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_5

    .line 165
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    .line 166
    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    .line 167
    iput v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusIndex:I

    .line 168
    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    if-eq v2, v0, :cond_5

    .line 170
    invoke-virtual {p0}, Lzui/widget/AlphabeticIndexBar;->invalidate()V

    if-nez p2, :cond_3

    .line 172
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->vibration()V

    .line 173
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->showHintWindow()V

    .line 175
    :cond_3
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mChangeListener:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    if-eqz p1, :cond_4

    .line 180
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->mFocusedAlphabet:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;->OnFocusedAlphabetChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p2, :cond_5

    .line 183
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->hideHintWindowWithDelay()V

    :cond_5
    return-void
.end method

.method public setOnFocusedAlphabetChangeListener(Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mChangeListener:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    return-void
.end method

.method public setPaddings(IIII)V
    .locals 0

    .line 211
    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingStart:I

    .line 212
    iput p2, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingTop:I

    .line 213
    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingEnd:I

    .line 214
    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->mPaddingBottom:I

    return-void
.end method

.method public setValidAlphabetList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->mValidAlphabetList:Ljava/util/List;

    return-void
.end method
