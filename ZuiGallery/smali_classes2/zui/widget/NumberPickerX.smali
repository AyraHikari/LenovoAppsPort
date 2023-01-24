.class public Lzui/widget/NumberPickerX;
.super Landroid/widget/LinearLayout;
.source "NumberPickerX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/NumberPickerX$ReflectLinearLayout;,
        Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;,
        Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;,
        Lzui/widget/NumberPickerX$CustomEditText;,
        Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;,
        Lzui/widget/NumberPickerX$PressedStateHelper;,
        Lzui/widget/NumberPickerX$InputTextFilter;,
        Lzui/widget/NumberPickerX$Formatter;,
        Lzui/widget/NumberPickerX$OnScrollListener;,
        Lzui/widget/NumberPickerX$OnValueChangeListener;,
        Lzui/widget/NumberPickerX$ThreeDigitFormatter;,
        Lzui/widget/NumberPickerX$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x7d0

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static SELECTOR_MIDDLE_ITEM_INDEX:I = 0x0

.field private static SELECTOR_WHEEL_ITEM_COUNT:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sThreeDigitFormatter:Lzui/widget/NumberPickerX$ThreeDigitFormatter;

.field private static final sTwoDigitFormatter:Lzui/widget/NumberPickerX$TwoDigitFormatter;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lzui/widget/NumberPickerX$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaskView:Landroid/view/View;

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMiddleSelectorTextColor:I

.field private final mMiddleSelectorTextSize:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lzui/widget/NumberPickerX$OnScrollListener;

.field private mOnValueChangeListener:Lzui/widget/NumberPickerX$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mReflectClass:Lzui/widget/NumberPickerX$ReflectLinearLayout;

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private final mSolidColor:I

.field private final mTextColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    sget v0, Lzui/platform/R$layout;->number_picker_with_selector_wheel_zui:I

    sput v0, Lzui/widget/NumberPickerX;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 164
    new-instance v0, Lzui/widget/NumberPickerX$TwoDigitFormatter;

    invoke-direct {v0}, Lzui/widget/NumberPickerX$TwoDigitFormatter;-><init>()V

    sput-object v0, Lzui/widget/NumberPickerX;->sTwoDigitFormatter:Lzui/widget/NumberPickerX$TwoDigitFormatter;

    .line 186
    new-instance v0, Lzui/widget/NumberPickerX$ThreeDigitFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzui/widget/NumberPickerX$ThreeDigitFormatter;-><init>(Lzui/widget/NumberPickerX$1;)V

    sput-object v0, Lzui/widget/NumberPickerX;->sThreeDigitFormatter:Lzui/widget/NumberPickerX$ThreeDigitFormatter;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    .line 1835
    fill-array-data v0, :array_0

    sput-object v0, Lzui/widget/NumberPickerX;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, p1, v0}, Lzui/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 549
    sget v0, Lzui/platform/R$attr;->numberPickerXStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 562
    sget v0, Lzui/platform/R$style;->Widget_Zui_NumberPickerX:I

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x12c

    .line 285
    iput-wide v0, p0, Lzui/widget/NumberPickerX;->mLongPressUpdateInterval:J

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/high16 v0, -0x80000000

    .line 310
    iput v0, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lzui/widget/NumberPickerX;->mScrollState:I

    const/4 v1, -0x1

    .line 457
    iput v1, p0, Lzui/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    .line 582
    sget-object v2, Lzui/platform/R$styleable;->NumberPickerX:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 584
    sget p3, Lzui/platform/R$styleable;->NumberPickerX_internalLayoutX:I

    sget p4, Lzui/widget/NumberPickerX;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 p4, 0x1

    .line 587
    iput-boolean p4, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    .line 589
    iput-boolean v0, p0, Lzui/widget/NumberPickerX;->mHideWheelUntilFocused:Z

    .line 591
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_wheelCount:I

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    sput v2, Lzui/widget/NumberPickerX;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 592
    div-int/lit8 v3, v2, 0x2

    sput v3, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 593
    new-array v2, v2, [I

    iput-object v2, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    .line 594
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_solidColor:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mSolidColor:I

    .line 596
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_selectionDividerX:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 601
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 599
    invoke-static {p4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 602
    sget v3, Lzui/platform/R$styleable;->NumberPickerX_selectionDividerHeightX:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mSelectionDividerHeight:I

    .line 607
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    .line 605
    invoke-static {p4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 608
    sget v3, Lzui/platform/R$styleable;->NumberPickerX_selectionDividersDistanceX:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mSelectionDividersDistance:I

    .line 611
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_internalMinHeightX:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mMinHeight:I

    .line 614
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_internalMaxHeightX:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mMaxHeight:I

    .line 616
    iget v3, p0, Lzui/widget/NumberPickerX;->mMinHeight:I

    if-eq v3, v1, :cond_1

    if-eq v2, v1, :cond_1

    if-gt v3, v2, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_1
    :goto_0
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_internalMinWidthX:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mMinWidth:I

    .line 624
    sget v2, Lzui/platform/R$styleable;->NumberPickerX_internalMaxWidthX:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mMaxWidth:I

    .line 626
    iget v3, p0, Lzui/widget/NumberPickerX;->mMinWidth:I

    if-eq v3, v1, :cond_3

    if-eq v2, v1, :cond_3

    if-gt v3, v2, :cond_2

    goto :goto_1

    .line 628
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 631
    :cond_3
    :goto_1
    iget v2, p0, Lzui/widget/NumberPickerX;->mMaxWidth:I

    if-ne v2, v1, :cond_4

    move v1, p4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lzui/widget/NumberPickerX;->mComputeMaxWidth:Z

    .line 633
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->number_picker_x_textview_level_0_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 635
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$color;->number_picker_x_level_0_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 636
    sget v3, Lzui/platform/R$styleable;->NumberPickerX_android_keyTextSize:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lzui/widget/NumberPickerX;->mMiddleSelectorTextSize:I

    .line 638
    sget v1, Lzui/platform/R$styleable;->NumberPickerX_android_textColorHighlight:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lzui/widget/NumberPickerX;->mMiddleSelectorTextColor:I

    .line 640
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->number_picker_x_textview_level_1_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 642
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$color;->number_picker_x_level_1_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 643
    sget v3, Lzui/platform/R$styleable;->NumberPickerX_android_textSize:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    .line 645
    sget v1, Lzui/platform/R$styleable;->NumberPickerX_android_textColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lzui/widget/NumberPickerX;->mTextColor:I

    .line 647
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    new-instance p2, Lzui/widget/NumberPickerX$PressedStateHelper;

    invoke-direct {p2, p0}, Lzui/widget/NumberPickerX$PressedStateHelper;-><init>(Lzui/widget/NumberPickerX;)V

    iput-object p2, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    .line 656
    iget-boolean p2, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    xor-int/2addr p2, p4

    invoke-virtual {p0, p2}, Lzui/widget/NumberPickerX;->setWillNotDraw(Z)V

    .line 658
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 660
    invoke-virtual {p2, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 662
    new-instance p2, Lzui/widget/NumberPickerX$1;

    invoke-direct {p2, p0}, Lzui/widget/NumberPickerX$1;-><init>(Lzui/widget/NumberPickerX;)V

    .line 672
    new-instance p2, Lzui/widget/NumberPickerX$2;

    invoke-direct {p2, p0}, Lzui/widget/NumberPickerX$2;-><init>(Lzui/widget/NumberPickerX;)V

    .line 683
    sget p2, Lzui/platform/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Lzui/widget/NumberPickerX;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    .line 684
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object p2, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->setFocusable(Z)V

    .line 687
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 688
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lzui/widget/NumberPickerX;->mTouchSlop:I

    .line 689
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lzui/widget/NumberPickerX;->mMinimumFlingVelocity:I

    .line 690
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lzui/widget/NumberPickerX;->mMaximumFlingVelocity:I

    .line 694
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 695
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 696
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 697
    iget p3, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 698
    iget p3, p0, Lzui/widget/NumberPickerX;->mTextColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    iput-object p2, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 702
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p2, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    .line 703
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    .line 706
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_5

    .line 707
    invoke-virtual {p0, p4}, Lzui/widget/NumberPickerX;->setImportantForAccessibility(I)V

    :cond_5
    const-string p2, "accessibility"

    .line 709
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lzui/widget/NumberPickerX;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 711
    new-instance p1, Lzui/widget/NumberPickerX$ReflectLinearLayout;

    invoke-direct {p1}, Lzui/widget/NumberPickerX$ReflectLinearLayout;-><init>()V

    iput-object p1, p0, Lzui/widget/NumberPickerX;->mReflectClass:Lzui/widget/NumberPickerX$ReflectLinearLayout;

    .line 712
    invoke-virtual {p1, p0}, Lzui/widget/NumberPickerX$ReflectLinearLayout;->setRealObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lzui/widget/NumberPickerX;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lzui/widget/NumberPickerX;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lzui/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1002(Lzui/widget/NumberPickerX;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lzui/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lzui/widget/NumberPickerX;)I
    .locals 0

    .line 66
    iget p0, p0, Lzui/widget/NumberPickerX;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1200(Lzui/widget/NumberPickerX;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lzui/widget/NumberPickerX;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1300(Lzui/widget/NumberPickerX;)I
    .locals 0

    .line 66
    iget p0, p0, Lzui/widget/NumberPickerX;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$1400(Lzui/widget/NumberPickerX;)Lzui/widget/NumberPickerX$ReflectLinearLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lzui/widget/NumberPickerX;->mReflectClass:Lzui/widget/NumberPickerX$ReflectLinearLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lzui/widget/NumberPickerX;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lzui/widget/NumberPickerX;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$1700(Lzui/widget/NumberPickerX;)I
    .locals 0

    .line 66
    iget p0, p0, Lzui/widget/NumberPickerX;->mValue:I

    return p0
.end method

.method static synthetic access$1800(Lzui/widget/NumberPickerX;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$1900(Lzui/widget/NumberPickerX;I)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lzui/widget/NumberPickerX;ZJ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/NumberPickerX;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$2000(Lzui/widget/NumberPickerX;)I
    .locals 0

    .line 66
    iget p0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    return p0
.end method

.method static synthetic access$2100(Lzui/widget/NumberPickerX;I)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()[C
    .locals 1

    .line 66
    sget-object v0, Lzui/widget/NumberPickerX;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lzui/widget/NumberPickerX;Ljava/lang/String;)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lzui/widget/NumberPickerX;)I
    .locals 0

    .line 66
    iget p0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    return p0
.end method

.method static synthetic access$800(Lzui/widget/NumberPickerX;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lzui/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$802(Lzui/widget/NumberPickerX;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lzui/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$900(Lzui/widget/NumberPickerX;)I
    .locals 0

    .line 66
    iget p0, p0, Lzui/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1566
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1567
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1570
    iput v0, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1572
    iget-object v1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1574
    :cond_1
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1576
    :goto_0
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1579
    iget p1, p0, Lzui/widget/NumberPickerX;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lzui/widget/NumberPickerX;->setValueInternal(IZ)V

    goto :goto_1

    .line 1581
    :cond_3
    iget p1, p0, Lzui/widget/NumberPickerX;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lzui/widget/NumberPickerX;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1678
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1679
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1681
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1682
    iget-boolean v1, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1683
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1685
    aput v0, p1, v1

    .line 1686
    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 5

    .line 1694
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1695
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1699
    :cond_0
    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    const-string v2, ""

    if-lt p1, v1, :cond_3

    iget v3, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    if-le p1, v3, :cond_1

    goto :goto_0

    .line 1702
    :cond_1
    iget-object v3, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_2

    sub-int v1, p1, v1

    .line 1704
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1705
    aget-object v1, v3, v1

    move-object v2, v1

    goto :goto_0

    .line 1710
    :cond_2
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 1713
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1928
    iget v0, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    iget v1, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1930
    iput v1, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 1931
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x3

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 1934
    iget-object v1, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x7d0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1935
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1634
    iput v0, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1637
    iget-object v1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1639
    :cond_0
    iget-object v1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1642
    :goto_0
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1717
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mFormatter:Lzui/widget/NumberPickerX$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lzui/widget/NumberPickerX$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lzui/widget/NumberPickerX;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 2509
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1803
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1805
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1810
    :goto_0
    iget-object v1, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1812
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1813
    iget-object v1, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1814
    iget p1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1823
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 1829
    :catch_0
    iget p1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    return p1
.end method

.method public static final getThreeDigitFormatter()Lzui/widget/NumberPickerX$Formatter;
    .locals 1

    .line 191
    sget-object v0, Lzui/widget/NumberPickerX;->sThreeDigitFormatter:Lzui/widget/NumberPickerX$ThreeDigitFormatter;

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;
    .locals 1

    .line 170
    sget-object v0, Lzui/widget/NumberPickerX;->sTwoDigitFormatter:Lzui/widget/NumberPickerX$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1649
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1650
    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1651
    :cond_0
    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 1652
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1662
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1663
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1665
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1666
    iget-boolean v1, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1667
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    .line 1669
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1670
    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1603
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->setVerticalFadingEdgeEnabled(Z)V

    .line 1604
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1587
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1588
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1589
    array-length v1, v0

    iget v2, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1590
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1591
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1592
    iput v0, p0, Lzui/widget/NumberPickerX;->mSelectorTextGapHeight:I

    .line 1593
    iget v1, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    .line 1596
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1597
    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    sget v2, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    .line 1599
    iput v0, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1519
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1520
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1521
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1522
    :goto_0
    iget-object v3, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1523
    sget v3, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1524
    iget-boolean v4, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1525
    invoke-direct {p0, v3}, Lzui/widget/NumberPickerX;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1527
    :cond_0
    aput v3, v0, v2

    .line 1528
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lzui/widget/NumberPickerX;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1480
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1481
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 1490
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1488
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1486
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 771
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 772
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 773
    iget p1, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 774
    iget v2, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 776
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 784
    invoke-virtual {p0, p1, v1}, Lzui/widget/NumberPickerX;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1735
    iget-object p2, p0, Lzui/widget/NumberPickerX;->mOnValueChangeListener:Lzui/widget/NumberPickerX$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1736
    iget v0, p0, Lzui/widget/NumberPickerX;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lzui/widget/NumberPickerX$OnValueChangeListener;->onValueChange(Lzui/widget/NumberPickerX;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1621
    iget v0, p0, Lzui/widget/NumberPickerX;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1624
    :cond_0
    iput p1, p0, Lzui/widget/NumberPickerX;->mScrollState:I

    .line 1625
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mOnScrollListener:Lzui/widget/NumberPickerX$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1626
    invoke-interface {v0, p0, p1}, Lzui/widget/NumberPickerX$OnScrollListener;->onScrollStateChange(Lzui/widget/NumberPickerX;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1611
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1612
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 1613
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1769
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1770
    new-instance v0, Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;-><init>(Lzui/widget/NumberPickerX;)V

    iput-object v0, p0, Lzui/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 1772
    :cond_0
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1774
    :goto_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lzui/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1746
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1747
    new-instance v0, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;-><init>(Lzui/widget/NumberPickerX;)V

    iput-object v0, p0, Lzui/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1749
    :cond_0
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1751
    :goto_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->access$300(Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1752
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lzui/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1790
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1793
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1796
    :cond_1
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1781
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Lzui/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1782
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1759
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1507
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 1508
    invoke-static {p1, p3, p2}, Lzui/widget/NumberPickerX;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private scaleRect(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 2578
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2579
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2580
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2581
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1539
    iget v0, p0, Lzui/widget/NumberPickerX;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1543
    :cond_0
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1544
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1546
    :cond_1
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1547
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1549
    :goto_0
    iget v0, p0, Lzui/widget/NumberPickerX;->mValue:I

    .line 1550
    iput p1, p0, Lzui/widget/NumberPickerX;->mValue:I

    if-eqz p2, :cond_2

    .line 1552
    invoke-direct {p0, v0, p1}, Lzui/widget/NumberPickerX;->notifyChange(II)V

    .line 1554
    :cond_2
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1555
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1185
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1192
    iget-object v3, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lzui/widget/NumberPickerX;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    :cond_2
    iget v2, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1201
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_3

    .line 1205
    :cond_4
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1207
    iget-object v3, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1213
    :goto_3
    iget v1, p0, Lzui/widget/NumberPickerX;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1214
    iget v1, p0, Lzui/widget/NumberPickerX;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1215
    iput v0, p0, Lzui/widget/NumberPickerX;->mMaxWidth:I

    goto :goto_4

    .line 1217
    :cond_7
    iput v1, p0, Lzui/widget/NumberPickerX;->mMaxWidth:I

    .line 1219
    :goto_4
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    :cond_8
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1721
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 1725
    invoke-direct {p0, p1, v0}, Lzui/widget/NumberPickerX;->setValueInternal(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1024
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    .line 1025
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1027
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1031
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1032
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1033
    iget v2, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1034
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1036
    iget v3, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lzui/widget/NumberPickerX;->scrollBy(II)V

    .line 1037
    iput v1, p0, Lzui/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 1038
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 1040
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mAccessibilityNodeProvider:Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/16 v2, 0x4000

    .line 1041
    invoke-virtual {v0, v1, v2}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    goto :goto_0

    .line 1046
    :cond_2
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1084
    iget v0, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1089
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 975
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 976
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 978
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 981
    iget v1, p0, Lzui/widget/NumberPickerX;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 983
    :cond_1
    iget v1, p0, Lzui/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 988
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 990
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 1013
    :cond_3
    invoke-virtual {v1, v0, v4}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1015
    iput v3, p0, Lzui/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 993
    :cond_4
    invoke-virtual {v1, v0, v7}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 995
    iput v0, p0, Lzui/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    .line 996
    invoke-virtual {v1, v0, v6, v5}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1000
    :cond_5
    iget p1, p0, Lzui/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    .line 1002
    invoke-virtual {v1, p1, v4}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1005
    invoke-virtual {v1, v0, v7}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1007
    iput v0, p0, Lzui/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    .line 1008
    invoke-virtual {v1, v0, v6, v5}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 926
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    goto :goto_0

    .line 934
    :cond_1
    iget-boolean v1, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 937
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 951
    :cond_3
    iget v1, p0, Lzui/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    .line 952
    iput p1, p0, Lzui/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 939
    :cond_4
    iget-boolean v1, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-ne v0, v2, :cond_5

    .line 940
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    .line 958
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 941
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->requestFocus()Z

    .line 942
    iput v0, p0, Lzui/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    .line 943
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    .line 944
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    if-ne v0, v2, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 945
    :goto_2
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->changeValueByOne(Z)V

    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    .line 921
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 967
    :cond_0
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    .line 970
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1460
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1461
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1463
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mAccessibilityNodeProvider:Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1464
    new-instance v0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;-><init>(Lzui/widget/NumberPickerX;)V

    iput-object v0, p0, Lzui/widget/NumberPickerX;->mAccessibilityNodeProvider:Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    .line 1466
    :cond_1
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mAccessibilityNodeProvider:Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1362
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1325
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1288
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1099
    iget v0, p0, Lzui/widget/NumberPickerX;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1279
    iget v0, p0, Lzui/widget/NumberPickerX;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1232
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1395
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1396
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1401
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1402
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1405
    :cond_0
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHideWheelUntilFocused:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->hasFocus()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1406
    :goto_0
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1407
    iget v2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    int-to-float v2, v2

    .line 1410
    iget-object v3, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    const/4 v4, 0x0

    move v5, v4

    .line 1411
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 1412
    aget v6, v3, v5

    .line 1413
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1420
    iget v7, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    sget v8, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int v9, v7, v8

    iget v10, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    iget v8, p0, Lzui/widget/NumberPickerX;->mSelectorTextGapHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_2

    .line 1422
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v8, p0, Lzui/widget/NumberPickerX;->mMiddleSelectorTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1423
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v8, p0, Lzui/widget/NumberPickerX;->mMiddleSelectorTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1425
    :cond_2
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v8, p0, Lzui/widget/NumberPickerX;->mTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1426
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v8, p0, Lzui/widget/NumberPickerX;->mTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1428
    :goto_2
    iget-object v7, p0, Lzui/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1430
    :cond_3
    iget v6, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1434
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1436
    iget v1, p0, Lzui/widget/NumberPickerX;->mTopSelectionDividerTop:I

    .line 1437
    iget v2, p0, Lzui/widget/NumberPickerX;->mSelectionDividerHeight:I

    add-int/2addr v2, v1

    .line 1438
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1439
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1442
    iget v0, p0, Lzui/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    .line 1443
    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectionDividerHeight:I

    sub-int v1, v0, v1

    .line 1444
    iget-object v2, p0, Lzui/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v3

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1445
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1451
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1452
    const-class v0, Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1453
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1454
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    iget v1, p0, Lzui/widget/NumberPickerX;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1455
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 792
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 795
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 798
    :cond_1
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    .line 799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lzui/widget/NumberPickerX;->mLastDownEventY:F

    iput v0, p0, Lzui/widget/NumberPickerX;->mLastDownOrMoveEventY:F

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lzui/widget/NumberPickerX;->mLastDownEventTime:J

    .line 801
    iput-boolean v1, p0, Lzui/widget/NumberPickerX;->mIgnoreMoveEvents:Z

    .line 802
    iput-boolean v1, p0, Lzui/widget/NumberPickerX;->mPerformClickOnTap:Z

    .line 804
    iget p1, p0, Lzui/widget/NumberPickerX;->mLastDownEventY:F

    iget v0, p0, Lzui/widget/NumberPickerX;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 805
    iget p1, p0, Lzui/widget/NumberPickerX;->mScrollState:I

    if-nez p1, :cond_3

    .line 806
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lzui/widget/NumberPickerX$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 809
    :cond_2
    iget v0, p0, Lzui/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 810
    iget p1, p0, Lzui/widget/NumberPickerX;->mScrollState:I

    if-nez p1, :cond_3

    .line 811
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {p1, v2}, Lzui/widget/NumberPickerX$PressedStateHelper;->buttonPressDelayed(I)V

    .line 816
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 817
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 818
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 819
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 820
    invoke-direct {p0, v1}, Lzui/widget/NumberPickerX;->onScrollStateChange(I)V

    goto :goto_1

    .line 821
    :cond_4
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 822
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 823
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 824
    :cond_5
    iget p1, p0, Lzui/widget/NumberPickerX;->mLastDownEventY:F

    iget v0, p0, Lzui/widget/NumberPickerX;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 826
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 825
    invoke-direct {p0, v1, v3, v4}, Lzui/widget/NumberPickerX;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 827
    :cond_6
    iget v0, p0, Lzui/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 829
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 828
    invoke-direct {p0, v2, v0, v1}, Lzui/widget/NumberPickerX;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 831
    :cond_7
    iput-boolean v2, p0, Lzui/widget/NumberPickerX;->mPerformClickOnTap:Z

    .line 832
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 717
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 718
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 721
    :cond_0
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getMeasuredWidth()I

    move-result p2

    .line 722
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getMeasuredHeight()I

    move-result p3

    .line 725
    iget-object p4, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 726
    iget-object p5, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 727
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 728
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 731
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mMaskView:Landroid/view/View;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 735
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheel()V

    .line 736
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeFadingEdges()V

    .line 737
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getHeight()I

    move-result p1

    iget p2, p0, Lzui/widget/NumberPickerX;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lzui/widget/NumberPickerX;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lzui/widget/NumberPickerX;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 739
    iput p1, p0, Lzui/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 746
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 747
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 751
    :cond_0
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lzui/widget/NumberPickerX;->makeMeasureSpec(II)I

    move-result v0

    .line 752
    iget v1, p0, Lzui/widget/NumberPickerX;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lzui/widget/NumberPickerX;->makeMeasureSpec(II)I

    move-result v1

    .line 753
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 755
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinWidth:I

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lzui/widget/NumberPickerX;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 757
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinHeight:I

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lzui/widget/NumberPickerX;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 759
    invoke-virtual {p0, p1, p2}, Lzui/widget/NumberPickerX;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 842
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 845
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 846
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 848
    :cond_1
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 852
    :cond_2
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 855
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 856
    iget v0, p0, Lzui/widget/NumberPickerX;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 857
    iget v0, p0, Lzui/widget/NumberPickerX;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 858
    iget v1, p0, Lzui/widget/NumberPickerX;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 859
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeAllCallbacks()V

    .line 860
    invoke-direct {p0, v3}, Lzui/widget/NumberPickerX;->onScrollStateChange(I)V

    goto :goto_0

    .line 863
    :cond_4
    iget v0, p0, Lzui/widget/NumberPickerX;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 864
    invoke-virtual {p0, v1, v0}, Lzui/widget/NumberPickerX;->scrollBy(II)V

    .line 865
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    .line 867
    :cond_5
    :goto_0
    iput p1, p0, Lzui/widget/NumberPickerX;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 870
    :cond_6
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeBeginSoftInputCommand()V

    .line 871
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->removeChangeCurrentByOneFromLongPress()V

    .line 872
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX$PressedStateHelper;->cancel()V

    .line 873
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 874
    iget v5, p0, Lzui/widget/NumberPickerX;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 875
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 876
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lzui/widget/NumberPickerX;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 877
    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX;->fling(I)V

    .line 878
    invoke-direct {p0, v2}, Lzui/widget/NumberPickerX;->onScrollStateChange(I)V

    goto :goto_2

    .line 880
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 881
    iget v5, p0, Lzui/widget/NumberPickerX;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lzui/widget/NumberPickerX;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 883
    iget p1, p0, Lzui/widget/NumberPickerX;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 884
    iget-boolean p1, p0, Lzui/widget/NumberPickerX;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 885
    iput-boolean v1, p0, Lzui/widget/NumberPickerX;->mPerformClickOnTap:Z

    .line 886
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->performClick()Z

    goto :goto_1

    .line 888
    :cond_8
    iget p1, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sget p1, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 891
    invoke-direct {p0, v3}, Lzui/widget/NumberPickerX;->changeValueByOne(Z)V

    .line 892
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {p1, v3}, Lzui/widget/NumberPickerX$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 895
    invoke-direct {p0, v1}, Lzui/widget/NumberPickerX;->changeValueByOne(Z)V

    .line 896
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mPressedStateHelper:Lzui/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {p1, v2}, Lzui/widget/NumberPickerX$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 901
    :cond_a
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->ensureScrollWheelAdjusted()Z

    .line 903
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lzui/widget/NumberPickerX;->onScrollStateChange(I)V

    .line 905
    :goto_2
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 906
    iput-object p1, p0, Lzui/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public performLongClick()Z
    .locals 2

    .line 1173
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1174
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1175
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1176
    iput-boolean v1, p0, Lzui/widget/NumberPickerX;->mIgnoreMoveEvents:Z

    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1052
    iget-object p1, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1053
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    sget v0, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v0, p1, v0

    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    if-gt v0, v1, :cond_0

    .line 1055
    iget p1, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    iput p1, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    return-void

    .line 1058
    :cond_0
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    sget v0, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v0, p1, v0

    iget v1, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    if-lt v0, v1, :cond_1

    .line 1060
    iget p1, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    iput p1, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    return-void

    .line 1063
    :cond_1
    iget v0, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1064
    :cond_2
    :goto_0
    iget p2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    iget v0, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_3

    .line 1065
    iget v0, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1066
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->decrementSelectorIndices([I)V

    .line 1067
    sget p2, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lzui/widget/NumberPickerX;->setValueInternal(IZ)V

    .line 1068
    iget-boolean p2, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    sget p2, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1069
    iget p2, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    iput p2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1072
    :cond_3
    :goto_1
    iget p2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    iget v0, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lzui/widget/NumberPickerX;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 1073
    iget v0, p0, Lzui/widget/NumberPickerX;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1074
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX;->incrementSelectorIndices([I)V

    .line 1075
    sget p2, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lzui/widget/NumberPickerX;->setValueInternal(IZ)V

    .line 1076
    iget-boolean p2, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    sget p2, Lzui/widget/NumberPickerX;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1077
    iget p2, p0, Lzui/widget/NumberPickerX;->mInitialScrollOffset:I

    iput p2, p0, Lzui/widget/NumberPickerX;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1378
    :cond_0
    iput-object p1, p0, Lzui/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    .line 1379
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1380
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lzui/widget/NumberPickerX$Formatter;)V
    .locals 1

    .line 1132
    iget-object v0, p0, Lzui/widget/NumberPickerX;->mFormatter:Lzui/widget/NumberPickerX$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1135
    :cond_0
    iput-object p1, p0, Lzui/widget/NumberPickerX;->mFormatter:Lzui/widget/NumberPickerX$Formatter;

    .line 1136
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1339
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1345
    iput p1, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    .line 1346
    iget v0, p0, Lzui/widget/NumberPickerX;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1347
    iput p1, p0, Lzui/widget/NumberPickerX;->mValue:I

    .line 1349
    :cond_1
    iget p1, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1350
    :goto_0
    invoke-virtual {p0, p1}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 1351
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1352
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->tryComputeMaxWidth()V

    .line 1353
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    return-void

    .line 1343
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1302
    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1308
    iput p1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    .line 1309
    iget v0, p0, Lzui/widget/NumberPickerX;->mValue:I

    if-le p1, v0, :cond_1

    .line 1310
    iput p1, p0, Lzui/widget/NumberPickerX;->mValue:I

    .line 1312
    :cond_1
    iget p1, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    iget v0, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1313
    :goto_0
    invoke-virtual {p0, p1}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 1314
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1315
    invoke-direct {p0}, Lzui/widget/NumberPickerX;->tryComputeMaxWidth()V

    .line 1316
    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->invalidate()V

    return-void

    .line 1306
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1270
    iput-wide p1, p0, Lzui/widget/NumberPickerX;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lzui/widget/NumberPickerX$OnScrollListener;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lzui/widget/NumberPickerX;->mOnScrollListener:Lzui/widget/NumberPickerX$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lzui/widget/NumberPickerX;->mOnValueChangeListener:Lzui/widget/NumberPickerX$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1168
    invoke-direct {p0, p1, v0}, Lzui/widget/NumberPickerX;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1253
    iget v0, p0, Lzui/widget/NumberPickerX;->mMaxValue:I

    iget v1, p0, Lzui/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lzui/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 1254
    :cond_1
    iget-boolean v0, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1255
    iput-boolean p1, p0, Lzui/widget/NumberPickerX;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
