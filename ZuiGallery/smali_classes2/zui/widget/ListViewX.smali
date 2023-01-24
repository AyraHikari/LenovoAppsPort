.class public Lzui/widget/ListViewX;
.super Landroid/widget/ListView;
.source "ListViewX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lzui/widget/SlideView$OnSlideListener;
.implements Lzui/widget/SlideView$OnViewPressedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/ListViewX$StatusBarClickReceiver;,
        Lzui/widget/ListViewX$LongPressHandler;,
        Lzui/widget/ListViewX$XAdapter;,
        Lzui/widget/ListViewX$OnFloatMenuShowListener;,
        Lzui/widget/ListViewX$OnFloatMenuOnClickListener;,
        Lzui/widget/ListViewX$OnEditModeStateListener;,
        Lzui/widget/ListViewX$OnSlideLoadingStateListener;,
        Lzui/widget/ListViewX$OnSlideOutItemClickListener;,
        Lzui/widget/ListViewX$OnSlideListener;
    }
.end annotation


# static fields
.field private static final CLEAN_CHILDVIEW_PRESS_DELAY_TIME:I = 0x32

.field private static final DEBUG_ADAPTER:Z = false

.field private static final DEBUG_BOOTUP:Z = false

.field private static final DEBUG_EDITMODE:Z = false

.field private static final DEBUG_OTHERS:Z = false

.field private static final DEBUG_SLIDING:Z = false

.field private static final DEBUG_TOUCH:Z = false

.field public static final FIX_ITEM_FLAG:I = 0x11000001

.field private static HEADER_HEIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/widget/ListViewX;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_COLOR:I = -0x1

.field private static final ITEM_SCALE_MAX_DISTANCE:I = 0x64

.field private static final ITEM_SCALE_MAX_DISTANCE_FOR_HIGH_SPEED:I = 0x12c

.field private static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_NORMAL:I = 0x0

.field public static final LIST_MODE_LEFT_SLIDE_SHOW_ITEM:I = 0x1

.field public static final LIST_MODE_LONG_PRESS_EDIT_MODE:I = 0x10

.field public static final LIST_MODE_LONG_PRESS_FLOAT_MENU:I = 0x1000000

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_RESERVE_LONG_PRESS:I = 0x10000

.field public static final LIST_MODE_RIGHT_SLIDE:I = 0x1000

.field public static final LIST_MODE_SPLIT_SLIDE_VIEW:I = 0x100000

.field private static LONG_PRESS_TIMEOUT:J = 0x0L

.field private static final MESSAGE_CLEAN_CHILDVIEW_PRESS:I = 0x2

.field private static final MESSAGE_LONG_PRESS:I = 0x1

.field private static final MIN_PULL_ANIMATION_HEIGHT:I = 0x9

.field private static final MODE_STR_EDIT:Ljava/lang/String; = "longPressEditMode"

.field private static final MODE_STR_LEFT_SLIDE:Ljava/lang/String; = "leftSlideShowItem"

.field private static final MODE_STR_LOADING:Ljava/lang/String; = "slideLoading"

.field private static final MODE_STR_LONG_PRESS_FLOAT_MENU:Ljava/lang/String; = "longPressFloatMenu"

.field private static final MODE_STR_NORMAL:Ljava/lang/String; = "normal"

.field private static final MODE_STR_RESERVE_LONG_PRESS:Ljava/lang/String; = "reserveLongPress"

.field private static final MODE_STR_RIGHT_SLIDE:Ljava/lang/String; = "rightSlide"

.field private static final MODE_STR_SPLIT_SLIDE_VIEW:Ljava/lang/String; = "splitSlideView"

.field private static final SCALE_ANIM_DURATION:I = 0x96

.field private static final SCALE_BACK_ANIM_DURATION:I = 0xc8

.field private static final SLIDING_DOWN:I = 0x1

.field private static final SLIDING_INIT:I = 0x0

.field private static final SLIDING_UP:I = 0x2

.field public static final STATE_HEADER_VIEW_HIDE:I = 0x0

.field public static final STATE_HEADER_VIEW_SHOW:I = 0x2

.field public static final STATE_HEADER_VIEW_SLIDING:I = 0x1

.field private static final STATUSBAR_CLICKED:Ljava/lang/String; = "com.android.systemui.statusbar.click.event"

.field private static final TAG:Ljava/lang/String;

.field private static final TAP_TIMEOUT:J

.field private static final TOUCH_MODE_REST:I = -0x1

.field private static mLockClickEventInEditMode:Z


# instance fields
.field private BOUNCE_ANIM_BACK_DURATION:I

.field private BOUNCE_ANIM_DISTANCE:I

.field private BOUNCE_ANIM_RUSH_DURATION:I

.field private CHECK_SLIDING_REGION_RIGHT:I

.field private HEADER_BACK_ANIM_DURATION:I

.field private final INFINITE_PULL_DISTANCE_DECREMENT:I

.field private ITEM_ANIM_OFFSET_TIME:I

.field private ITEM_BASE_ANIM_DURATION:I

.field private ITEM_BATCH_REMOVE_BASE_DURATION:I

.field private ITEM_BATCH_REMOVE_OFFSET_DURATION:I

.field private final ITEM_PULL_DISTANCE_EACH_MOVE:I

.field private ITEM_PULL_MAX_DISTANCE:I

.field private final MAX_ITEM_HEIGHT_RATIO:I

.field private final MIN_FLING_VELOCITY:I

.field private SCALE_HEIGHT_COUNT:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mBatchPushEvent:Ljava/lang/Runnable;

.field private mBounceDistance:I

.field private final mBounceEvent:Ljava/lang/Runnable;

.field private mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

.field private mCustomizedListItemBgColor:I

.field private mCustomizedListItemBgMaskColor:I

.field private mCustomizedListItemBgPressedColor:I

.field private mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDropLeftTouchEvent:Z

.field private mEditBar:Lzui/widget/ListViewXEditBar;

.field private mEditBarLayoutId:I

.field private mEditBarLeft:I

.field private mEditBarTop:I

.field private mEditModeFirstCheckItem:I

.field private mEditModeFirstCheckItemState:Z

.field private mEditModeLastCheckItem:I

.field private mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

.field private mEnableStretch:Z

.field private mExtraPaddingEnd:I

.field private mExtraPaddingStart:I

.field private mExtraTitlePaddingEndInEditMode:I

.field private mExtraTitlePaddingStartInEditMode:I

.field private mFlinging:Z

.field private mFloatDlg:Lzui/app/FloatDialog;

.field private mFloatMenuAdapter:Landroid/widget/ListAdapter;

.field private mFloatMenuClickListener:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

.field private mFloatMenuContextAdapter:Lzui/app/FloatDialog$MenuAdapter;

.field private mFloatMenuItems:[Ljava/lang/CharSequence;

.field private mFloatMenuShowListener:Lzui/widget/ListViewX$OnFloatMenuShowListener;

.field private mFloatMenuShowing:Z

.field private mFloatmenuPosition:I

.field private mFocusedItemView:Lzui/widget/SlideView;

.field private mFocusedPosition:I

.field private mFooterHeight:[I

.field private mHandler:Lzui/widget/ListViewX$LongPressHandler;

.field private mHeaderAnim:Landroid/animation/ObjectAnimator;

.field private mHeaderHeight:[I

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mHeaderViewHeight:I

.field private mHeaderViewState:I

.field private mHideDivider:Z

.field private mInEditMode:Z

.field private mIsHorizon:Z

.field private mIsTouchDownOnSlideOutItem:Z

.field private mItemClickerListener:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

.field private mItemSlideListener:Lzui/widget/ListViewX$OnSlideListener;

.field private mLastFocusedItemView:Lzui/widget/SlideView;

.field private mLastPosition:I

.field private mLastSlidingDirection:I

.field private mLastY:I

.field private mListItemMode:I

.field private mListOffset:[I

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mLockScrollVertical:Z

.field private mLongClickable:Z

.field private mLongPressStarted:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPendingEditMode:Z

.field private mPointerId:I

.field private mPullAnimEnabled:Z

.field private mPullDistance:I

.field private mPullStartX:I

.field private mPullStartY:I

.field private mPullingMode:I

.field private mScaleAnimsSet:Landroid/animation/AnimatorSet;

.field private mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

.field private mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

.field private mScaledDistance:I

.field private mScrollingState:I

.field private mShowDividerInEditMode:Z

.field private mSlideLoadingStateListener:Lzui/widget/ListViewX$OnSlideLoadingStateListener;

.field private mSlideParams:Lzui/widget/SlideView$SlideViewParams;

.field private mSlidingStarted:Z

.field private mSlidingStatus:I

.field private mSlidingView:Lzui/widget/SlideView;

.field private mStatusbarClickReceiver:Lzui/widget/ListViewX$StatusBarClickReceiver;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    const-class v0, Lzui/widget/ListViewX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/widget/ListViewX;->TAG:Ljava/lang/String;

    .line 146
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lzui/widget/ListViewX;->TAP_TIMEOUT:J

    .line 3137
    new-instance v0, Lzui/widget/ListViewX$6;

    const-string v1, "HeaderHeight"

    invoke-direct {v0, v1}, Lzui/widget/ListViewX$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 393
    sget v0, Lzui/platform/R$attr;->listviewXStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 401
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x12c

    .line 149
    iput v0, p0, Lzui/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    const/16 v1, 0x32

    .line 150
    iput v1, p0, Lzui/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    const/16 v2, 0xfa

    .line 151
    iput v2, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    const/16 v2, 0x1e

    .line 152
    iput v2, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    const/16 v3, 0x96

    .line 153
    iput v3, p0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    .line 154
    iput v0, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    .line 155
    iput v1, p0, Lzui/widget/ListViewX;->BOUNCE_ANIM_RUSH_DURATION:I

    const/16 v0, 0xc8

    .line 156
    iput v0, p0, Lzui/widget/ListViewX;->BOUNCE_ANIM_BACK_DURATION:I

    .line 157
    iput v2, p0, Lzui/widget/ListViewX;->BOUNCE_ANIM_DISTANCE:I

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    .line 168
    iput v0, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    .line 169
    iput v0, p0, Lzui/widget/ListViewX;->mFloatmenuPosition:I

    const/4 v2, 0x0

    .line 174
    iput-boolean v2, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 178
    fill-array-data v3, :array_0

    iput-object v3, p0, Lzui/widget/ListViewX;->mListOffset:[I

    .line 180
    iput v0, p0, Lzui/widget/ListViewX;->mExtraPaddingStart:I

    .line 181
    iput v0, p0, Lzui/widget/ListViewX;->mExtraPaddingEnd:I

    .line 182
    iput v0, p0, Lzui/widget/ListViewX;->mExtraTitlePaddingStartInEditMode:I

    .line 183
    iput v0, p0, Lzui/widget/ListViewX;->mExtraTitlePaddingEndInEditMode:I

    const/4 v3, 0x0

    .line 189
    iput-object v3, p0, Lzui/widget/ListViewX;->mItemSlideListener:Lzui/widget/ListViewX$OnSlideListener;

    .line 190
    new-instance v4, Lzui/widget/ListViewX$LongPressHandler;

    invoke-direct {v4, p0, v3}, Lzui/widget/ListViewX$LongPressHandler;-><init>(Lzui/widget/ListViewX;Lzui/widget/ListViewX$1;)V

    iput-object v4, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    .line 194
    iput v0, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 195
    iput v0, p0, Lzui/widget/ListViewX;->mEditModeLastCheckItem:I

    const/4 v3, 0x1

    .line 203
    iput-boolean v3, p0, Lzui/widget/ListViewX;->mShowDividerInEditMode:Z

    .line 207
    iput v0, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgColor:I

    .line 208
    iput v0, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    .line 210
    iput v0, p0, Lzui/widget/ListViewX;->mEditBarTop:I

    .line 211
    iput v0, p0, Lzui/widget/ListViewX;->mEditBarLeft:I

    .line 219
    iput v0, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    .line 230
    iput v0, p0, Lzui/widget/ListViewX;->mPointerId:I

    .line 231
    iput-boolean v3, p0, Lzui/widget/ListViewX;->mPullAnimEnabled:Z

    .line 235
    iput v2, p0, Lzui/widget/ListViewX;->mHeaderViewState:I

    .line 256
    iput v2, p0, Lzui/widget/ListViewX;->mScaledDistance:I

    .line 2638
    new-instance v3, Lzui/widget/ListViewX$3;

    invoke-direct {v3, p0}, Lzui/widget/ListViewX$3;-><init>(Lzui/widget/ListViewX;)V

    iput-object v3, p0, Lzui/widget/ListViewX;->mBatchPushEvent:Ljava/lang/Runnable;

    const/4 v3, 0x4

    .line 2692
    iput v3, p0, Lzui/widget/ListViewX;->SCALE_HEIGHT_COUNT:I

    .line 2708
    iput v2, p0, Lzui/widget/ListViewX;->mBounceDistance:I

    .line 2751
    new-instance v3, Lzui/widget/ListViewX$4;

    invoke-direct {v3, p0}, Lzui/widget/ListViewX$4;-><init>(Lzui/widget/ListViewX;)V

    iput-object v3, p0, Lzui/widget/ListViewX;->mBounceEvent:Ljava/lang/Runnable;

    .line 2768
    iput-boolean v2, p0, Lzui/widget/ListViewX;->mFlinging:Z

    const/16 v3, 0x28

    .line 2799
    iput v3, p0, Lzui/widget/ListViewX;->MAX_ITEM_HEIGHT_RATIO:I

    const/16 v3, 0xc

    .line 2800
    iput v3, p0, Lzui/widget/ListViewX;->ITEM_PULL_DISTANCE_EACH_MOVE:I

    .line 2801
    iput v1, p0, Lzui/widget/ListViewX;->INFINITE_PULL_DISTANCE_DECREMENT:I

    const/16 v1, 0x1388

    .line 2802
    iput v1, p0, Lzui/widget/ListViewX;->MIN_FLING_VELOCITY:I

    .line 2803
    iput v0, p0, Lzui/widget/ListViewX;->mPullingMode:I

    .line 2971
    iput-boolean v2, p0, Lzui/widget/ListViewX;->mEnableStretch:Z

    .line 3048
    new-instance v0, Lzui/widget/ListViewX$5;

    invoke-direct {v0, p0}, Lzui/widget/ListViewX$5;-><init>(Lzui/widget/ListViewX;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 3069
    iput-object v1, p0, Lzui/widget/ListViewX;->mHeaderHeight:[I

    new-array v0, v0, [I

    .line 3082
    iput-object v0, p0, Lzui/widget/ListViewX;->mFooterHeight:[I

    .line 402
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/ListViewX;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 403
    invoke-direct {p0}, Lzui/widget/ListViewX;->initAnimParams()V

    .line 404
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1000(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mExtraPaddingEnd:I

    return p0
.end method

.method static synthetic access$102(Lzui/widget/ListViewX;I)I
    .locals 0

    .line 78
    iput p1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    return p1
.end method

.method static synthetic access$1100(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    return p0
.end method

.method static synthetic access$1200(Lzui/widget/ListViewX;Lzui/widget/SlideView;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->updateViewCheckState(Lzui/widget/SlideView;I)V

    return-void
.end method

.method static synthetic access$1300(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lzui/widget/ListViewX;->mHideDivider:Z

    return p0
.end method

.method static synthetic access$1402(Lzui/widget/ListViewX;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lzui/widget/ListViewX;->mLongPressStarted:Z

    return p1
.end method

.method static synthetic access$1500(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mHeaderViewState:I

    return p0
.end method

.method static synthetic access$1600(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    return p0
.end method

.method static synthetic access$1700(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->canIntercept()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$1900(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mScrollingState:I

    return p0
.end method

.method static synthetic access$200(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mScaledDistance:I

    return p0
.end method

.method static synthetic access$2000(Lzui/widget/ListViewX;)Lzui/widget/SlideView;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    return-object p0
.end method

.method static synthetic access$2100(Lzui/widget/ListViewX;)Landroid/widget/ListAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->isLongPressEditMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lzui/widget/ListViewX;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->showEditScreen()V

    return-void
.end method

.method static synthetic access$2402(Z)Z
    .locals 0

    .line 78
    sput-boolean p0, Lzui/widget/ListViewX;->mLockClickEventInEditMode:Z

    return p0
.end method

.method static synthetic access$2500(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->isLongPressFloatMenu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lzui/widget/ListViewX;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->startFinishAnimate()V

    return-void
.end method

.method static synthetic access$2700(Lzui/widget/ListViewX;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->showFloatMenu()V

    return-void
.end method

.method static synthetic access$2800(Lzui/widget/ListViewX;)Lzui/widget/SlideView;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    return-object p0
.end method

.method static synthetic access$2900(Lzui/widget/ListViewX;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->startBatchPushInAnimation()V

    return-void
.end method

.method static synthetic access$300(Lzui/widget/ListViewX;IZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->scaleHeight(IZ)V

    return-void
.end method

.method static synthetic access$3000(Lzui/widget/ListViewX;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$3002(Lzui/widget/ListViewX;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 78
    iput-object p1, p0, Lzui/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$3100(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSlideLoadingMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lzui/widget/ListViewX;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->hideHeaderView()V

    return-void
.end method

.method static synthetic access$3302(Lzui/widget/ListViewX;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lzui/widget/ListViewX;->mFlinging:Z

    return p1
.end method

.method static synthetic access$3400(Lzui/widget/ListViewX;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->resetPullingMode()V

    return-void
.end method

.method static synthetic access$3500(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mLastPosition:I

    return p0
.end method

.method static synthetic access$3502(Lzui/widget/ListViewX;I)I
    .locals 0

    .line 78
    iput p1, p0, Lzui/widget/ListViewX;->mLastPosition:I

    return p1
.end method

.method static synthetic access$3600(Lzui/widget/ListViewX;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->updateHeaderView(I)V

    return-void
.end method

.method static synthetic access$500(Lzui/widget/ListViewX;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSplitedSlideView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lzui/widget/ListViewX;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lzui/widget/ListViewX;)Lzui/widget/SlideView$SlideViewParams;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    return-object p0
.end method

.method static synthetic access$800(Lzui/widget/ListViewX;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 78
    iget-object p0, p0, Lzui/widget/ListViewX;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$900(Lzui/widget/ListViewX;)I
    .locals 0

    .line 78
    iget p0, p0, Lzui/widget/ListViewX;->mExtraPaddingStart:I

    return p0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2955
    iget-object v0, p0, Lzui/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2956
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2959
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private canIntercept()Z
    .locals 2

    .line 2791
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canPull(I)Z
    .locals 7

    .line 2895
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->setPullingMode(I)V

    .line 2896
    iget v0, p0, Lzui/widget/ListViewX;->mPullingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2897
    :goto_0
    iget v3, p0, Lzui/widget/ListViewX;->mPullingMode:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2898
    :goto_1
    iget v4, p0, Lzui/widget/ListViewX;->mPullingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 2900
    :goto_2
    iget v5, p0, Lzui/widget/ListViewX;->mPullingMode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    if-nez p1, :cond_3

    goto :goto_7

    :cond_3
    if-eqz v0, :cond_4

    .line 2905
    iget v5, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iget v6, p0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    if-lt v5, v6, :cond_4

    if-lez p1, :cond_4

    return v2

    :cond_4
    if-eqz v3, :cond_5

    .line 2910
    iget v5, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iget v6, p0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v6, v6

    if-gt v5, v6, :cond_5

    if-gez p1, :cond_5

    return v2

    .line 2914
    :cond_5
    iget v5, p0, Lzui/widget/ListViewX;->mPullDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x28

    div-int/lit8 v5, v5, 0x32

    add-int/2addr v5, v1

    if-eqz v0, :cond_8

    .line 2917
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    if-ltz v0, :cond_8

    if-lez p1, :cond_6

    .line 2919
    div-int v6, p1, v5

    add-int/2addr v0, v6

    iput v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    goto :goto_3

    :cond_6
    add-int/2addr v0, p1

    .line 2921
    iput v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    .line 2924
    :goto_3
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iget v6, p0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    if-le v0, v6, :cond_7

    .line 2925
    iput v6, p0, Lzui/widget/ListViewX;->mPullDistance:I

    goto :goto_4

    :cond_7
    if-gez v0, :cond_8

    .line 2927
    iput v2, p0, Lzui/widget/ListViewX;->mPullDistance:I

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    if-eqz v4, :cond_c

    :cond_9
    if-gez p1, :cond_a

    .line 2939
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    div-int/2addr p1, v5

    add-int/2addr v0, p1

    iput v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    goto :goto_5

    .line 2941
    :cond_a
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    .line 2944
    :goto_5
    iget p1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iget v0, p0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v3, v0

    if-ge p1, v3, :cond_b

    neg-int p1, v0

    .line 2945
    iput p1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    goto :goto_6

    :cond_b
    if-lez p1, :cond_c

    .line 2947
    iput v2, p0, Lzui/widget/ListViewX;->mPullDistance:I

    :cond_c
    :goto_6
    return v1

    :cond_d
    :goto_7
    return v2
.end method

.method private cancelChildViewPressState(I)V
    .locals 3

    .line 1992
    iget-object v0, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzui/widget/ListViewX$LongPressHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1993
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1994
    iget-object p1, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lzui/widget/ListViewX$LongPressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private checkForFixedView(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    .line 718
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSplitedSlideView()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 719
    instance-of v0, p2, Lzui/widget/SlideViewEx;

    if-eqz v0, :cond_2

    .line 720
    check-cast p2, Lzui/widget/SlideViewEx;

    invoke-virtual {p2, p1}, Lzui/widget/SlideViewEx;->checkForFixedView(Landroid/view/MotionEvent;)I

    move-result p1

    .line 721
    iget-object p2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 725
    invoke-virtual {p0, p1}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 727
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, p1}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private clearTouchMode()V
    .locals 2

    const/4 v0, 0x0

    .line 2855
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setPressed(Z)V

    const/4 v1, -0x1

    .line 2856
    invoke-direct {p0, v1}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    .line 2857
    iget-object v1, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    if-eqz v1, :cond_0

    .line 2858
    invoke-virtual {v1, v0}, Lzui/widget/SlideView;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private convertStringToListItemMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "normal"

    .line 1493
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    or-int/lit8 p1, p1, 0x0

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_0
    const-string v0, "leftSlideShowItem"

    .line 1495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_1
    const-string v0, "longPressEditMode"

    .line 1497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1498
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_2
    const-string v0, "rightSlide"

    .line 1499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1500
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_3
    const-string v0, "splitSlideView"

    .line 1501
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1502
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_4
    const-string v0, "reserveLongPress"

    .line 1503
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1504
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_5
    const-string v0, "longPressFloatMenu"

    .line 1505
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1506
    iget p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    :cond_6
    const-string v0, "slideLoading"

    .line 1507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private createHeaderAnim()V
    .locals 4

    .line 3189
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iput v0, p0, Lzui/widget/ListViewX;->mBounceDistance:I

    .line 3190
    iput v0, p0, Lzui/widget/ListViewX;->mLastPosition:I

    .line 3191
    sget-object v1, Lzui/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3192
    iget v1, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3193
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3194
    iget-object v1, p0, Lzui/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3195
    iput-object v0, p0, Lzui/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private editModeSlidingCheck()V
    .locals 4

    .line 1847
    iget v0, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1848
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    if-eqz v0, :cond_0

    .line 1849
    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result v0

    iget-boolean v1, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    if-eq v0, v1, :cond_0

    .line 1850
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->setViewChecked(Z)V

    .line 1851
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    iget v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    iget-boolean v2, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v0, v1, v2}, Lzui/widget/ListViewX;->updateCheckStatus(Lzui/widget/SlideView;IZ)V

    .line 1853
    :cond_0
    invoke-direct {p0}, Lzui/widget/ListViewX;->updateEditModeSlidingStatus()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1855
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    .line 1856
    iget v3, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    if-ne v3, v2, :cond_1

    .line 1857
    iget v3, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v3, v0}, Lzui/widget/ListViewX;->setSlideViewChecked(IZ)V

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    .line 1859
    iget v3, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3, v0}, Lzui/widget/ListViewX;->setSlideViewChecked(IZ)V

    .line 1868
    :cond_2
    :goto_0
    iget v0, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    if-ne v0, v2, :cond_3

    .line 1869
    iget v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1873
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getLastVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1875
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lzui/widget/ListViewX;->smoothScrollToPosition(II)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 1878
    iget v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 1881
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1883
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lzui/widget/ListViewX;->smoothScrollToPosition(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private exitEditMode()V
    .locals 5

    const/4 v0, 0x0

    .line 1677
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    .line 1679
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v1

    .line 1681
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->initCheckStatus(Z)V

    .line 1682
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->startEditModeAnimation(Z)V

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1685
    invoke-virtual {p0, v2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1686
    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1687
    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lzui/widget/SlideView;->setViewChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1690
    :cond_1
    invoke-virtual {p0}, Lzui/widget/ListViewX;->invalidateViews()V

    .line 1691
    invoke-direct {p0}, Lzui/widget/ListViewX;->refreshDividers()V

    return-void
.end method

.method private finishAnimateDividerHeight()V
    .locals 4

    .line 2694
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v0

    .line 2695
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getDividerHeight()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2698
    invoke-virtual {p0, v2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2699
    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2701
    invoke-virtual {v3, v1}, Lzui/widget/SlideView;->setDividerHeight(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2705
    :cond_1
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->startRemoveAnimation(I)V

    return-void
.end method

.method private floatMenuCleanup()V
    .locals 2

    .line 2354
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2355
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    .line 2356
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->lockPressUI(Z)V

    .line 2357
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->setPressed(Z)V

    .line 2359
    :cond_0
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mFloatMenuShowing:Z

    .line 2360
    sput-boolean v1, Lzui/widget/ListViewX;->mLockClickEventInEditMode:Z

    return-void
.end method

.method private getCheckItemCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1697
    :goto_0
    iget-object v2, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1698
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getHeaderViewOrFooterViewInfo(Ljava/lang/Object;IZ)Landroid/widget/ListView$FixedViewInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2409
    :cond_0
    const-class v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p3, :cond_1

    :try_start_0
    const-string p3, "mHeaderViewInfos"

    goto :goto_0

    :cond_1
    const-string p3, "mFooterViewInfos"

    .line 2414
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v1, 0x1

    .line 2415
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2416
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 2417
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_2

    .line 2418
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView$FixedViewInfo;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2423
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2421
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getListViewPosition(I)I
    .locals 1

    .line 1891
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getScaledDistance(I)I
    .locals 8

    .line 1294
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v4, 0xbb8

    if-ge p1, v4, :cond_0

    int-to-double v4, p1

    const-wide v6, 0x40c3880000000000L    # 10000.0

    div-double/2addr v4, v6

    sub-double v4, v2, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 1297
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    :goto_0
    sub-double/2addr v2, v4

    :goto_1
    mul-double/2addr v2, v0

    double-to-int p1, v2

    goto :goto_2

    :cond_0
    const/16 v4, 0x32c8

    if-ge p1, v4, :cond_1

    int-to-double v4, p1

    const-wide v6, 0x40cafe0000000000L    # 13820.0

    div-double/2addr v4, v6

    sub-double v4, v2, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 1301
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide v0, 0x4072c00000000000L    # 300.0

    int-to-double v2, p1

    const-wide v4, 0x40d3880000000000L    # 20000.0

    div-double/2addr v2, v4

    goto :goto_1

    :goto_2
    return p1
.end method

.method private getSlideView(Landroid/view/View;)Lzui/widget/SlideView;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1977
    :cond_0
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSplitedSlideView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1978
    instance-of v1, p1, Lzui/widget/SlideViewEx;

    if-eqz v1, :cond_1

    .line 1979
    check-cast p1, Lzui/widget/SlideViewEx;

    invoke-virtual {p1}, Lzui/widget/SlideViewEx;->getSlideView()Lzui/widget/SlideView;

    move-result-object p1

    return-object p1

    .line 1980
    :cond_1
    instance-of v1, p1, Lzui/widget/SlideView;

    if-eqz v1, :cond_3

    .line 1981
    check-cast p1, Lzui/widget/SlideView;

    return-object p1

    .line 1984
    :cond_2
    instance-of v1, p1, Lzui/widget/SlideView;

    if-eqz v1, :cond_3

    .line 1985
    check-cast p1, Lzui/widget/SlideView;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private handleDpadKeyEvent(ILandroid/view/KeyEvent;Landroid/view/View;Z)V
    .locals 2

    .line 2484
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 p3, 0x17

    if-eq p1, p3, :cond_0

    const/16 p3, 0x3e

    if-eq p1, p3, :cond_0

    const/16 p3, 0x42

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2495
    :cond_0
    invoke-direct {p0, p2, v1}, Lzui/widget/ListViewX;->handlePreference(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 2489
    invoke-direct {p0, p3}, Lzui/widget/ListViewX;->updateFocusView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 939
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    const/4 v0, -0x1

    if-eq v2, v4, :cond_8

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    const/4 v0, 0x6

    if-eq v2, v0, :cond_0

    const/16 v0, 0x105

    if-eq v2, v0, :cond_2

    const/16 v0, 0x106

    if-eq v2, v0, :cond_0

    goto/16 :goto_1

    .line 1048
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1050
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1051
    iget v2, p0, Lzui/widget/ListViewX;->mPointerId:I

    if-ne v1, v2, :cond_10

    if-nez v0, :cond_1

    move v3, v4

    .line 1053
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lzui/widget/ListViewX;->mPointerId:I

    .line 1054
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lzui/widget/ListViewX;->mPullStartX:I

    .line 1055
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lzui/widget/ListViewX;->mPullStartY:I

    .line 1056
    iput p1, p0, Lzui/widget/ListViewX;->mLastY:I

    goto/16 :goto_1

    .line 1037
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1038
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1039
    iput v1, p0, Lzui/widget/ListViewX;->mPointerId:I

    .line 1041
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lzui/widget/ListViewX;->mLastY:I

    .line 1042
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lzui/widget/ListViewX;->mPullStartX:I

    .line 1043
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lzui/widget/ListViewX;->mPullStartY:I

    goto/16 :goto_1

    .line 1027
    :cond_3
    invoke-direct {p0}, Lzui/widget/ListViewX;->stopCountForLongPress()V

    .line 1029
    invoke-direct {p0}, Lzui/widget/ListViewX;->isPullAnimationAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1030
    invoke-direct {p0}, Lzui/widget/ListViewX;->startFinishAnimate()V

    .line 1032
    :cond_4
    invoke-direct {p0}, Lzui/widget/ListViewX;->releaseVelocityTracker()V

    .line 1033
    iput v0, p0, Lzui/widget/ListViewX;->mPointerId:I

    goto/16 :goto_1

    .line 986
    :cond_5
    iget v1, p0, Lzui/widget/ListViewX;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_6

    return v4

    .line 993
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 994
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 996
    iget v1, p0, Lzui/widget/ListViewX;->mLastY:I

    sub-int v1, p1, v1

    .line 997
    iput p1, p0, Lzui/widget/ListViewX;->mLastY:I

    .line 1005
    invoke-direct {p0}, Lzui/widget/ListViewX;->isPullAnimationAllowed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1006
    iget v3, p0, Lzui/widget/ListViewX;->mPullStartY:I

    sub-int/2addr p1, v3

    .line 1007
    iget v3, p0, Lzui/widget/ListViewX;->mPullStartX:I

    sub-int/2addr v2, v3

    .line 1009
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_7

    .line 1011
    invoke-direct {p0, v1, v4}, Lzui/widget/ListViewX;->scaleHeight(IZ)V

    .line 1015
    :cond_7
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz p1, :cond_10

    iget p1, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    if-eq p1, v0, :cond_10

    .line 1017
    invoke-direct {p0}, Lzui/widget/ListViewX;->editModeSlidingCheck()V

    goto/16 :goto_1

    .line 963
    :cond_8
    invoke-direct {p0}, Lzui/widget/ListViewX;->stopCountForLongPress()V

    .line 964
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    if-eq p1, v0, :cond_9

    .line 965
    invoke-direct {p0}, Lzui/widget/ListViewX;->stopEditModeSlidingCheck()V

    return v4

    .line 975
    :cond_9
    invoke-direct {p0}, Lzui/widget/ListViewX;->isPullAnimationAllowed()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 976
    invoke-direct {p0}, Lzui/widget/ListViewX;->startFinishAnimate()V

    .line 979
    :cond_a
    invoke-direct {p0}, Lzui/widget/ListViewX;->releaseVelocityTracker()V

    .line 980
    iput v3, p0, Lzui/widget/ListViewX;->mLastY:I

    .line 981
    iput v0, p0, Lzui/widget/ListViewX;->mPointerId:I

    goto :goto_1

    .line 942
    :cond_b
    iput v0, p0, Lzui/widget/ListViewX;->mPullStartX:I

    .line 943
    iput v1, p0, Lzui/widget/ListViewX;->mPullStartY:I

    .line 944
    iput v1, p0, Lzui/widget/ListViewX;->mLastY:I

    .line 945
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lzui/widget/ListViewX;->mPointerId:I

    .line 947
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz p1, :cond_f

    .line 948
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_c

    goto :goto_0

    :cond_c
    move v4, v3

    .line 949
    :goto_0
    iget-object p1, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    if-eqz p1, :cond_10

    if-eqz v4, :cond_d

    .line 950
    invoke-virtual {p1}, Lzui/widget/SlideView;->getCheckedRegion()I

    move-result p1

    if-gt v0, p1, :cond_e

    :cond_d
    if-nez v4, :cond_10

    iget-object p1, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    .line 951
    invoke-virtual {p1}, Lzui/widget/SlideView;->getCheckedRegion()I

    move-result p1

    iget v1, p0, Lzui/widget/ListViewX;->CHECK_SLIDING_REGION_RIGHT:I

    add-int/2addr p1, v1

    if-ge v0, p1, :cond_10

    .line 952
    :cond_e
    iget p1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;->startEditModeSlidingCheck(IZ)V

    .line 953
    iget-object p1, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 956
    :cond_f
    invoke-direct {p0}, Lzui/widget/ListViewX;->shouldHandleLongPress()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 957
    iget p1, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->startCountForLongPress(I)V

    .line 1065
    :cond_10
    :goto_1
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    return p1
.end method

.method private handlePreference(Landroid/view/KeyEvent;Z)V
    .locals 3

    .line 2452
    iget-object v0, p0, Lzui/widget/ListViewX;->mLastFocusedItemView:Lzui/widget/SlideView;

    if-eqz v0, :cond_2

    .line 2453
    invoke-virtual {v0}, Lzui/widget/SlideView;->getViewPosition()I

    move-result v0

    .line 2454
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    .line 2455
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2456
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2457
    instance-of v1, v0, Landroid/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    .line 2459
    const-class p1, Landroid/preference/Preference;

    :try_start_0
    const-string p2, "onClick"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2461
    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 2463
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v1, [Ljava/lang/Object;

    .line 2464
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2470
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2468
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2466
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 2473
    :cond_0
    instance-of p2, v0, Lzui/preference/SwitchPreferenceX;

    if-eqz p2, :cond_1

    .line 2474
    check-cast v0, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {v0, p1}, Lzui/preference/SwitchPreferenceX;->onKey(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 2475
    :cond_1
    instance-of p2, v0, Lzui/preference/InLineEditTextPreference;

    if-eqz p2, :cond_2

    .line 2476
    check-cast v0, Lzui/preference/InLineEditTextPreference;

    invoke-virtual {v0, p1}, Lzui/preference/InLineEditTextPreference;->onKey(Landroid/view/KeyEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleSlidingEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 736
    invoke-virtual {p0, v0, v1}, Lzui/widget/ListViewX;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 741
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 742
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->getListViewPosition(I)I

    move-result v1

    .line 743
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 744
    iput v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    .line 745
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    iput-object v3, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    .line 746
    iput v1, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    goto :goto_0

    .line 750
    :cond_0
    iput-object v2, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    .line 751
    iput v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    move-object v0, v2

    .line 754
    :goto_0
    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;->checkForFixedView(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 757
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lzui/widget/ListViewX;->isSlideLeftMode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lzui/widget/ListViewX;->canIntercept()Z

    move-result v0

    if-nez v0, :cond_16

    .line 758
    invoke-virtual {p0}, Lzui/widget/ListViewX;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lzui/widget/ListViewX;->mScrollingState:I

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 778
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    return v1

    .line 835
    :cond_2
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz v0, :cond_3

    .line 836
    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    .line 844
    :goto_1
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v0, :cond_6

    .line 846
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz p1, :cond_5

    .line 847
    invoke-virtual {p1}, Lzui/widget/SlideView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 851
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->setPressed(Z)V

    .line 853
    :cond_4
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    move p1, v3

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 856
    iput-boolean v3, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 857
    iput-boolean v3, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 858
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lzui/widget/SlideView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 860
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->setPressed(Z)V

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 863
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mDropLeftTouchEvent:Z

    if-eqz p1, :cond_9

    :cond_8
    move v1, v3

    :cond_9
    return v1

    .line 866
    :cond_a
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v0, :cond_e

    .line 867
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz v0, :cond_d

    .line 868
    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 870
    sget-wide v6, Lzui/widget/ListViewX;->TAP_TIMEOUT:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_c

    iget-boolean p1, p0, Lzui/widget/ListViewX;->mIsTouchDownOnSlideOutItem:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 871
    invoke-virtual {p1}, Lzui/widget/SlideView;->isSliding()Z

    move-result p1

    if-nez p1, :cond_c

    .line 872
    :cond_b
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {p1, v3}, Lzui/widget/SlideView;->shrink(Z)V

    .line 873
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 874
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 875
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    goto :goto_3

    .line 876
    :cond_c
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->isSliding()Z

    move-result p1

    if-nez p1, :cond_d

    .line 877
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 878
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 879
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    :cond_d
    :goto_3
    return v3

    .line 884
    :cond_e
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mDropLeftTouchEvent:Z

    return p1

    .line 780
    :cond_f
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mIsTouchDownOnSlideOutItem:Z

    .line 781
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v0, :cond_14

    .line 782
    iput-boolean v3, p0, Lzui/widget/ListViewX;->mDropLeftTouchEvent:Z

    .line 783
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    iget-object v4, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    if-eq v0, v4, :cond_11

    if-eqz v0, :cond_10

    .line 786
    invoke-virtual {v0, v3}, Lzui/widget/SlideView;->shrink(Z)V

    .line 787
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 789
    :cond_10
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 790
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    goto :goto_4

    :cond_11
    if-eqz v0, :cond_13

    .line 794
    iput-boolean v3, p0, Lzui/widget/ListViewX;->mIsTouchDownOnSlideOutItem:Z

    .line 795
    iget-object v0, p0, Lzui/widget/ListViewX;->mListOffset:[I

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getLocationInWindow([I)V

    .line 796
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lzui/widget/ListViewX;->mListOffset:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lzui/widget/ListViewX;->mListOffset:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 796
    invoke-virtual {v0, v4, v5}, Lzui/widget/SlideView;->handleSlideOutItemClick(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 802
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->shrink(Z)V

    .line 803
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 804
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 805
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 809
    iget-object p1, p0, Lzui/widget/ListViewX;->mItemSlideListener:Lzui/widget/ListViewX$OnSlideListener;

    if-eqz p1, :cond_13

    .line 810
    iget v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    invoke-interface {p1, v2, v0, v1}, Lzui/widget/ListViewX$OnSlideListener;->onSlide(Landroid/view/View;II)V

    goto :goto_4

    .line 814
    :cond_12
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_13
    :goto_4
    return v3

    .line 820
    :cond_14
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mDropLeftTouchEvent:Z

    .line 821
    iget-object v0, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    if-eqz v0, :cond_15

    .line 822
    iput-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 823
    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 825
    :cond_15
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz p1, :cond_16

    .line 826
    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->shrink(Z)V

    .line 827
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    :cond_16
    :goto_5
    return v1
.end method

.method private hideHeaderView()V
    .locals 3

    .line 1952
    iget-object v0, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    iget v1, p0, Lzui/widget/ListViewX;->mHeaderViewHeight:I

    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1953
    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->updateHeaderViewState(I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1437
    iput-object p1, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    .line 1438
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/ListViewX;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1439
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getDividerHeight()I

    .line 1440
    new-instance v0, Lzui/widget/SlideView$SlideViewParams;

    invoke-direct {v0, p1}, Lzui/widget/SlideView$SlideViewParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    const/4 v0, 0x0

    .line 1441
    iput v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    .line 1442
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setDividerHeight(I)V

    .line 1444
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSlideRightMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    iget-object v1, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->listview_x_left_space_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1448
    :goto_0
    iget-object v2, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v2, v1}, Lzui/widget/SlideView$SlideViewParams;->setLeftSpaceWidth(I)V

    .line 1449
    iget-object v1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    iget v2, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgColor:I

    iget v3, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    invoke-virtual {v1, v2, v3}, Lzui/widget/SlideView$SlideViewParams;->setBgColor(II)V

    .line 1450
    iget-object v1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzui/widget/SlideView$SlideViewParams;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x106000d

    .line 1451
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->setSelector(I)V

    .line 1452
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lzui/widget/ListViewX;->LONG_PRESS_TIMEOUT:J

    .line 1453
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setHeaderDividersEnabled(Z)V

    const/4 v1, 0x1

    .line 1454
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->setFocusableInTouchMode(Z)V

    .line 1455
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->setItemsCanFocus(Z)V

    const/4 v1, 0x2

    .line 1456
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->setOverScrollMode(I)V

    .line 1457
    invoke-static {p1}, Lzui/util/CommonUtils;->isThemedResources(Landroid/content/Context;)Z

    .line 1463
    sget v1, Lzui/platform/R$layout;->listview_x_edit_bar:I

    iput v1, p0, Lzui/widget/ListViewX;->mEditBarLayoutId:I

    .line 1464
    sget v1, Lzui/platform/R$layout;->slide_view_merge:I

    .line 1466
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$dimen;->listview_x_check_valid_region_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->CHECK_SLIDING_REGION_RIGHT:I

    .line 1468
    iget-object v2, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lzui/platform/R$dimen;->listview_x_left_slide_threshold:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lzui/widget/SlideView$SlideViewParams;->setLeftSlideThreshHold(I)V

    .line 1470
    iget-object v2, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lzui/platform/R$dimen;->listview_x_right_slide_threshold:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lzui/widget/SlideView$SlideViewParams;->setRightSlideThreshHold(I)V

    .line 1472
    iget-object v2, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v2, v1}, Lzui/widget/SlideView$SlideViewParams;->setLayoutResource(I)V

    .line 1474
    sget-object v1, Lzui/platform/R$styleable;->ListViewX:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1476
    sget v2, Lzui/platform/R$styleable;->ListViewX_android_category:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->initListItemMode(Ljava/lang/String;)V

    .line 1477
    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingStart:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->mExtraPaddingStart:I

    if-gez v2, :cond_1

    .line 1479
    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingLeft:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->mExtraPaddingStart:I

    .line 1481
    :cond_1
    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->mExtraPaddingEnd:I

    if-gez v2, :cond_2

    .line 1483
    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingRight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->mExtraPaddingEnd:I

    .line 1485
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1486
    sget-object v2, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1488
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/ListViewX;->mIsHorizon:Z

    .line 1489
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAnimParams()V
    .locals 2

    .line 1534
    iget-object v0, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1535
    sget v1, Lzui/platform/R$dimen;->listview_x_pull_max_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    .line 1537
    sget v1, Lzui/platform/R$integer;->config_list_item_anim_base_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    .line 1539
    sget v1, Lzui/platform/R$integer;->config_list_item_anim_offset_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    .line 1541
    sget v1, Lzui/platform/R$integer;->config_list_batch_remove_base_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    .line 1543
    sget v1, Lzui/platform/R$integer;->config_list_batch_remove_offset_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    .line 1545
    sget v1, Lzui/platform/R$integer;->config_list_header_anim_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    .line 1547
    sget v1, Lzui/platform/R$integer;->config_list_bounce_top_rush_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->BOUNCE_ANIM_RUSH_DURATION:I

    .line 1549
    sget v1, Lzui/platform/R$integer;->config_list_bounce_top_back_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->BOUNCE_ANIM_BACK_DURATION:I

    .line 1551
    sget v1, Lzui/platform/R$dimen;->listview_x_bounce_top_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/ListViewX;->BOUNCE_ANIM_DISTANCE:I

    return-void
.end method

.method private initCheckStatus(Z)V
    .locals 3

    .line 1754
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1756
    new-array v1, v0, [Z

    iput-object v1, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1759
    iget-object v2, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aput-boolean p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initHeaderView(Z)V
    .locals 2

    .line 1896
    sget p1, Lzui/platform/R$layout;->listview_x_loading:I

    .line 1897
    iget-object v0, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    .line 1899
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->measureView(Landroid/view/View;)V

    .line 1900
    iget-object p1, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lzui/widget/ListViewX;->mHeaderViewHeight:I

    .line 1901
    invoke-direct {p0}, Lzui/widget/ListViewX;->hideHeaderView()V

    .line 1902
    iget-object p1, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1903
    iget-object p1, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lzui/widget/ListViewX;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1904
    invoke-virtual {p0}, Lzui/widget/ListViewX;->setSelectionAfterHeaderView()V

    return-void
.end method

.method private initListItemMode(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    .line 1517
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1518
    array-length v1, p1

    if-lez v1, :cond_1

    move v1, v0

    .line 1519
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1520
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->convertStringToListItemMode(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1526
    :cond_1
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSlideLeftMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1527
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    goto :goto_1

    .line 1529
    :cond_2
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p1, v0}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    :goto_1
    return-void
.end method

.method private initSlidingParams()V
    .locals 3

    const/4 v0, 0x0

    .line 1557
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 1558
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 1559
    iget-object v1, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1561
    invoke-virtual {v1, v0}, Lzui/widget/SlideView;->shrink(Z)V

    .line 1562
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    :cond_0
    const/4 v0, -0x1

    .line 1564
    iput v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    .line 1565
    iput v0, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    .line 1566
    iput-object v2, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    .line 1567
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    return-void
.end method

.method private invokeOnItemScrollListener()V
    .locals 4

    .line 2364
    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string v1, "invokeOnItemScrollListener"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2366
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 2368
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 2369
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2375
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2373
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2371
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private isBottom()Z
    .locals 5

    .line 2832
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 2834
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v3, v2

    .line 2833
    invoke-direct {p0, v0, v3, v1}, Lzui/widget/ListViewX;->getHeaderViewOrFooterViewInfo(Ljava/lang/Object;IZ)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2837
    iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    .line 2838
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getLastVisiblePosition()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v2

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v1, :cond_2

    .line 2844
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2845
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2846
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    return v2
.end method

.method private isLongPressEditMode()Z
    .locals 1

    .line 1575
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLongPressFloatMenu()Z
    .locals 2

    .line 1596
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPullAnimationAllowed()Z
    .locals 1

    .line 2429
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mPullAnimEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    .line 2430
    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSlideLeftMode()Z
    .locals 2

    .line 1571
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSlideLoadingMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isSlideRightMode()Z
    .locals 1

    .line 1584
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSplitedSlideView()Z
    .locals 2

    .line 1592
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTop()Z
    .locals 4

    .line 2807
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 2808
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Lzui/widget/ListViewX;->getHeaderViewOrFooterViewInfo(Ljava/lang/Object;IZ)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2813
    iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getListPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_0
    move v3, v0

    :goto_1
    if-nez v0, :cond_2

    .line 2819
    invoke-virtual {p0, v2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2820
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_2

    .line 2821
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getListPaddingTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    return v1
.end method

.method private measureView(Landroid/view/View;)V
    .locals 3

    .line 1908
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1910
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1914
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1916
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 1919
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1922
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1925
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private refreshDividers()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1618
    :goto_0
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1620
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1622
    invoke-virtual {v2, v0}, Lzui/widget/SlideView;->setDividerState(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerStatusbarClickBroadCast()V
    .locals 3

    .line 1966
    iget-object v0, p0, Lzui/widget/ListViewX;->mStatusbarClickReceiver:Lzui/widget/ListViewX$StatusBarClickReceiver;

    if-nez v0, :cond_0

    .line 1967
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.click.event"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1968
    new-instance v1, Lzui/widget/ListViewX$StatusBarClickReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzui/widget/ListViewX$StatusBarClickReceiver;-><init>(Lzui/widget/ListViewX;Lzui/widget/ListViewX$1;)V

    iput-object v1, p0, Lzui/widget/ListViewX;->mStatusbarClickReceiver:Lzui/widget/ListViewX$StatusBarClickReceiver;

    .line 1969
    iget-object v2, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 2964
    iget-object v0, p0, Lzui/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2965
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2966
    iget-object v0, p0, Lzui/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2967
    iput-object v0, p0, Lzui/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetCheckStatus()V
    .locals 5

    .line 1764
    iget-object v0, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    if-nez v0, :cond_0

    return-void

    .line 1767
    :cond_0
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1769
    iget-object v1, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    .line 1770
    new-array v2, v0, [Z

    iput-object v2, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1772
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1773
    iget-object v3, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v4, v1, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetFooterHeight()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3092
    iget-object v2, p0, Lzui/widget/ListViewX;->mFooterHeight:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3078
    iget-object v2, p0, Lzui/widget/ListViewX;->mHeaderHeight:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetPullingMode()V
    .locals 1

    const/4 v0, -0x1

    .line 2888
    iput v0, p0, Lzui/widget/ListViewX;->mPullingMode:I

    .line 2889
    invoke-direct {p0}, Lzui/widget/ListViewX;->resetHeaderHeight()V

    .line 2890
    invoke-direct {p0}, Lzui/widget/ListViewX;->resetFooterHeight()V

    return-void
.end method

.method private scaleHeight(IZ)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    .line 2974
    invoke-direct/range {p0 .. p1}, Lzui/widget/ListViewX;->canPull(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2979
    :cond_0
    iget-boolean v2, v0, Lzui/widget/ListViewX;->mEnableStretch:Z

    if-eqz v2, :cond_11

    iget v2, v0, Lzui/widget/ListViewX;->mPullingMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto/16 :goto_a

    .line 2988
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v2

    .line 2989
    iget v4, v0, Lzui/widget/ListViewX;->SCALE_HEIGHT_COUNT:I

    if-ge v2, v4, :cond_2

    move v4, v2

    .line 2990
    :cond_2
    new-array v5, v4, [I

    .line 2993
    iget v6, v0, Lzui/widget/ListViewX;->mPullingMode:I

    const/4 v7, 0x0

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_0

    :cond_3
    move v6, v7

    .line 2994
    :goto_0
    iget v8, v0, Lzui/widget/ListViewX;->mPullingMode:I

    if-ne v8, v1, :cond_4

    move v8, v1

    goto :goto_1

    :cond_4
    move v8, v7

    .line 2995
    :goto_1
    iget v9, v0, Lzui/widget/ListViewX;->mPullDistance:I

    if-ltz v9, :cond_5

    goto :goto_2

    :cond_5
    neg-int v9, v9

    :goto_2
    move v10, v7

    :goto_3
    if-ge v10, v4, :cond_6

    .line 2998
    div-int/lit8 v11, v9, 0x28

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move/from16 p2, v4

    int-to-double v3, v10

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v15

    sub-double/2addr v13, v3

    mul-double/2addr v11, v13

    double-to-int v3, v11

    .line 2999
    aput v3, v5, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p2

    goto :goto_3

    :cond_6
    move/from16 p2, v4

    if-ne v6, v1, :cond_8

    .line 3005
    iget v3, v0, Lzui/widget/ListViewX;->mPullDistance:I

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_4
    invoke-direct {v0, v3}, Lzui/widget/ListViewX;->setAbsListViewLayoutMode(I)V

    .line 3006
    iget v3, v0, Lzui/widget/ListViewX;->mPullDistance:I

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lzui/widget/ListViewX;->mFlinging:Z

    if-nez v3, :cond_8

    .line 3007
    invoke-direct/range {p0 .. p0}, Lzui/widget/ListViewX;->resetPullingMode()V

    :cond_8
    if-ne v8, v1, :cond_a

    .line 3012
    iget v3, v0, Lzui/widget/ListViewX;->mPullDistance:I

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    goto :goto_5

    :cond_9
    move v3, v7

    :goto_5
    invoke-direct {v0, v3}, Lzui/widget/ListViewX;->setAbsListViewLayoutMode(I)V

    .line 3013
    iget v3, v0, Lzui/widget/ListViewX;->mPullDistance:I

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lzui/widget/ListViewX;->mFlinging:Z

    if-nez v3, :cond_a

    .line 3014
    invoke-direct/range {p0 .. p0}, Lzui/widget/ListViewX;->resetPullingMode()V

    :cond_a
    if-eqz v8, :cond_d

    sub-int/2addr v2, v1

    move/from16 v4, p2

    :goto_6
    if-ge v7, v4, :cond_10

    .line 3021
    invoke-virtual {v0, v2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3022
    invoke-direct {v0, v1}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    .line 3023
    aget v6, v5, v7

    if-ltz v6, :cond_c

    if-eqz v3, :cond_b

    .line 3025
    aget v1, v5, v7

    invoke-virtual {v3, v1}, Lzui/widget/SlideView;->setSpaceHeight(I)V

    goto :goto_7

    .line 3027
    :cond_b
    aget v3, v5, v7

    invoke-direct {v0, v1, v3, v7}, Lzui/widget/ListViewX;->setFooterViewPadding(Landroid/view/View;II)V

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_d
    move/from16 v4, p2

    move v1, v7

    :goto_8
    if-ge v7, v4, :cond_10

    .line 3034
    invoke-virtual {v0, v1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3035
    invoke-direct {v0, v2}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v2

    .line 3036
    aget v3, v5, v7

    if-ltz v3, :cond_f

    if-eqz v2, :cond_e

    .line 3038
    aget v3, v5, v7

    invoke-virtual {v2, v3}, Lzui/widget/SlideView;->setSpaceHeight(I)V

    goto :goto_9

    .line 3040
    :cond_e
    aget v2, v5, v7

    invoke-direct {v0, v2, v7}, Lzui/widget/ListViewX;->setHeaderViewPadding(II)V

    :cond_f
    :goto_9
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    return-void

    .line 2980
    :cond_11
    :goto_a
    iget v1, v0, Lzui/widget/ListViewX;->mPullDistance:I

    const/4 v2, 0x3

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 2981
    invoke-virtual {v0, v1}, Lzui/widget/ListViewX;->setTranslationY(F)V

    .line 2982
    iget v1, v0, Lzui/widget/ListViewX;->mPullDistance:I

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lzui/widget/ListViewX;->mFlinging:Z

    if-nez v1, :cond_12

    .line 2983
    invoke-direct/range {p0 .. p0}, Lzui/widget/ListViewX;->resetPullingMode()V

    :cond_12
    return-void
.end method

.method private setAbsListViewLayoutMode(I)V
    .locals 2

    .line 2393
    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string v1, "mLayoutMode"

    .line 2395
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2401
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2399
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAbsListViewTouchMode(I)V
    .locals 2

    .line 2380
    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string v1, "mTouchMode"

    .line 2382
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2383
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2388
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2386
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setEditModeAnimation()V
    .locals 4

    .line 2568
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2572
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2573
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2574
    iget v2, p0, Lzui/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2576
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 2577
    invoke-virtual {v2, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    const v0, 0x3cf5c28f    # 0.03f

    .line 2578
    invoke-virtual {v2, v0}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 2579
    invoke-virtual {p0, v2}, Lzui/widget/ListViewX;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method private setFooterHeight(II)V
    .locals 2

    .line 3084
    iget-object v0, p0, Lzui/widget/ListViewX;->mFooterHeight:[I

    aget v1, v0, p2

    if-nez v1, :cond_0

    .line 3085
    aput p1, v0, p2

    :cond_0
    return-void
.end method

.method private setFooterViewPadding(Landroid/view/View;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 3122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lzui/widget/ListViewX;->setFooterHeight(II)V

    .line 3123
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3124
    iget-object v1, p0, Lzui/widget/ListViewX;->mFooterHeight:[I

    aget p3, v1, p3

    add-int/2addr p3, p2

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3131
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHeaderHeight(II)V
    .locals 2

    .line 3071
    iget-object v0, p0, Lzui/widget/ListViewX;->mHeaderHeight:[I

    aget v1, v0, p2

    if-nez v1, :cond_0

    .line 3072
    aput p1, v0, p2

    :cond_0
    return-void
.end method

.method private setHeaderViewPadding(II)V
    .locals 3

    if-ltz p2, :cond_1

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 3102
    :cond_0
    invoke-virtual {p0, p2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3104
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lzui/widget/ListViewX;->setHeaderHeight(II)V

    .line 3105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3106
    iget-object v2, p0, Lzui/widget/ListViewX;->mHeaderHeight:[I

    aget p2, v2, p2

    add-int/2addr p2, p1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3113
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPullingMode(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 2863
    invoke-direct {p0}, Lzui/widget/ListViewX;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2864
    iput v0, p0, Lzui/widget/ListViewX;->mPullingMode:I

    .line 2865
    invoke-direct {p0}, Lzui/widget/ListViewX;->clearTouchMode()V

    :cond_0
    if-gez p1, :cond_1

    .line 2870
    invoke-direct {p0}, Lzui/widget/ListViewX;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    if-nez v0, :cond_1

    .line 2871
    invoke-direct {p0}, Lzui/widget/ListViewX;->isTop()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2872
    iput v0, p0, Lzui/widget/ListViewX;->mPullingMode:I

    .line 2873
    invoke-direct {p0}, Lzui/widget/ListViewX;->clearTouchMode()V

    :cond_1
    if-gez p1, :cond_2

    .line 2879
    iget p1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    if-nez p1, :cond_2

    .line 2880
    invoke-direct {p0}, Lzui/widget/ListViewX;->isBottom()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lzui/widget/ListViewX;->isTop()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 2881
    iput p1, p0, Lzui/widget/ListViewX;->mPullingMode:I

    .line 2882
    invoke-direct {p0}, Lzui/widget/ListViewX;->clearTouchMode()V

    :cond_2
    return-void
.end method

.method private setSlideViewChecked(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1736
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 1737
    iget-object v0, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v0, v0, p1

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;->setSlideViewChecked(IZ)V

    :cond_0
    return-void
.end method

.method private setSlideViewChecked(IZ)V
    .locals 2

    .line 1744
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1743
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1745
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 1748
    invoke-direct {p0, v0, p1}, Lzui/widget/ListViewX;->updateViewCheckState(Lzui/widget/SlideView;I)V

    .line 1749
    invoke-direct {p0, v0, p1, p2}, Lzui/widget/ListViewX;->updateCheckStatus(Lzui/widget/SlideView;IZ)V

    :cond_0
    return-void
.end method

.method private shouldHandleLongPress()Z
    .locals 2

    .line 1588
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showEditScreen()V
    .locals 4

    .line 1629
    invoke-direct {p0}, Lzui/widget/ListViewX;->startFinishAnimate()V

    const/4 v0, 0x1

    .line 1631
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    const/4 v1, 0x0

    .line 1632
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    .line 1634
    iget-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz v2, :cond_0

    .line 1636
    invoke-virtual {v2, v1}, Lzui/widget/SlideView;->shrink(Z)V

    const/4 v2, 0x0

    .line 1637
    iput-object v2, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 1639
    :cond_0
    iput-boolean v1, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    .line 1640
    invoke-direct {p0, v1}, Lzui/widget/ListViewX;->initCheckStatus(Z)V

    .line 1642
    iget v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1643
    iget-object v3, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aput-boolean v0, v3, v1

    .line 1645
    :cond_1
    iget-object v1, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v1, :cond_2

    .line 1646
    iget-object v3, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    invoke-interface {v1, p0, v3}, Lzui/widget/ListViewX$OnEditModeStateListener;->onPrepareEditMode(Landroid/widget/ListView;[Z)V

    .line 1650
    :cond_2
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->startEditModeAnimation(Z)V

    .line 1651
    invoke-virtual {p0}, Lzui/widget/ListViewX;->invalidateViews()V

    .line 1652
    invoke-direct {p0}, Lzui/widget/ListViewX;->refreshDividers()V

    .line 1653
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-nez v0, :cond_3

    .line 1655
    new-instance v0, Lzui/widget/ListViewXEditBar;

    iget v1, p0, Lzui/widget/ListViewX;->mEditBarLayoutId:I

    invoke-direct {v0, p0, v1}, Lzui/widget/ListViewXEditBar;-><init>(Landroid/widget/ListView;I)V

    iput-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    .line 1657
    :cond_3
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_4

    .line 1661
    iget-object v1, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    .line 1662
    invoke-virtual {v1}, Lzui/widget/ListViewXEditBar;->getView()Landroid/view/View;

    move-result-object v1

    .line 1661
    invoke-interface {v0, p0, v1}, Lzui/widget/ListViewX$OnEditModeStateListener;->prepareCustomizedTitle(Landroid/widget/ListView;Landroid/view/View;)V

    .line 1664
    :cond_4
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    iget-boolean v1, p0, Lzui/widget/ListViewX;->mShowDividerInEditMode:Z

    invoke-virtual {v0, v1}, Lzui/widget/ListViewXEditBar;->showDivider(Z)V

    .line 1665
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    .line 1667
    iget v0, p0, Lzui/widget/ListViewX;->mEditBarTop:I

    if-gt v0, v2, :cond_6

    iget v0, p0, Lzui/widget/ListViewX;->mEditBarLeft:I

    if-le v0, v2, :cond_5

    goto :goto_0

    .line 1670
    :cond_5
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    invoke-virtual {v0}, Lzui/widget/ListViewXEditBar;->show()V

    goto :goto_1

    .line 1668
    :cond_6
    :goto_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    iget v1, p0, Lzui/widget/ListViewX;->mEditBarLeft:I

    iget v2, p0, Lzui/widget/ListViewX;->mEditBarTop:I

    invoke-virtual {v0, v1, v2}, Lzui/widget/ListViewXEditBar;->show(II)V

    :goto_1
    return-void
.end method

.method private showFloatMenu()V
    .locals 6

    .line 2289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2290
    iget-object v1, p0, Lzui/widget/ListViewX;->mFocusedItemView:Lzui/widget/SlideView;

    invoke-direct {p0, v1}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2294
    :cond_0
    invoke-virtual {v1, v0}, Lzui/widget/SlideView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v0, 0x0

    .line 2299
    iget-object v2, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v2, :cond_6

    .line 2300
    iget-object v2, p0, Lzui/widget/ListViewX;->mFloatMenuAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    iget-object v2, p0, Lzui/widget/ListViewX;->mFloatMenuContextAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-nez v2, :cond_1

    iget-object v2, p0, Lzui/widget/ListViewX;->mFloatMenuItems:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 2302
    sget-object v0, Lzui/widget/ListViewX;->TAG:Ljava/lang/String;

    const-string v1, "Do not show float menu without content!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2305
    :cond_1
    new-instance v2, Lzui/app/FloatDialog$Builder;

    iget-object v5, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2306
    iget-object v5, p0, Lzui/widget/ListViewX;->mFloatMenuItems:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 2307
    invoke-virtual {v2, v5, p0}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    .line 2309
    :cond_2
    iget-object v5, p0, Lzui/widget/ListViewX;->mFloatMenuAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    .line 2310
    invoke-virtual {v2, v5, p0}, Lzui/app/FloatDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    goto :goto_0

    .line 2311
    :cond_3
    iget-object v5, p0, Lzui/widget/ListViewX;->mFloatMenuContextAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v5, :cond_4

    .line 2312
    invoke-virtual {v2, v5, v1}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;Landroid/view/View;)Lzui/app/FloatDialog$Builder;

    .line 2314
    :cond_4
    :goto_0
    iget v5, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    if-eq v5, v3, :cond_5

    .line 2315
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2319
    invoke-virtual {v2, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move v0, v4

    .line 2322
    :cond_5
    invoke-virtual {v2, p0}, Lzui/app/FloatDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/FloatDialog$Builder;

    .line 2323
    invoke-virtual {v2}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    goto :goto_1

    .line 2324
    :cond_6
    iget-object v2, p0, Lzui/widget/ListViewX;->mFloatMenuContextAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v2, :cond_8

    .line 2325
    new-instance v2, Lzui/app/FloatDialog$Builder;

    iget-object v5, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2326
    iget-object v5, p0, Lzui/widget/ListViewX;->mFloatMenuContextAdapter:Lzui/app/FloatDialog$MenuAdapter;

    invoke-virtual {v2, v5, v1}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;Landroid/view/View;)Lzui/app/FloatDialog$Builder;

    .line 2327
    iget v5, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    if-eq v5, v3, :cond_7

    .line 2328
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2332
    invoke-virtual {v2, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move v0, v4

    .line 2335
    :cond_7
    invoke-virtual {v2, p0}, Lzui/app/FloatDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/FloatDialog$Builder;

    .line 2336
    invoke-virtual {v2}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    .line 2338
    :cond_8
    :goto_1
    iget v2, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    iput v2, p0, Lzui/widget/ListViewX;->mFloatmenuPosition:I

    .line 2342
    iput-boolean v4, p0, Lzui/widget/ListViewX;->mFloatMenuShowing:Z

    .line 2343
    invoke-virtual {v1, v4}, Lzui/widget/SlideView;->setPressed(Z)V

    .line 2344
    invoke-virtual {v1, v4}, Lzui/widget/SlideView;->lockPressUI(Z)V

    .line 2345
    iget-object v2, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    xor-int/2addr v0, v4

    invoke-virtual {v2, v1, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;Z)V

    .line 2348
    iget-object v0, p0, Lzui/widget/ListViewX;->mFloatMenuShowListener:Lzui/widget/ListViewX$OnFloatMenuShowListener;

    if-eqz v0, :cond_9

    .line 2349
    iget-object v1, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    iget v2, p0, Lzui/widget/ListViewX;->mFloatmenuPosition:I

    invoke-interface {v0, v1, v4, v2}, Lzui/widget/ListViewX$OnFloatMenuShowListener;->onShow(Landroid/content/DialogInterface;ZI)V

    :cond_9
    return-void
.end method

.method private startBatchPushInAnimation()V
    .locals 13

    .line 2646
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    .line 2647
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v1

    .line 2650
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2651
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v0, v1, :cond_4

    .line 2656
    iget-object v7, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    add-int v8, v0, v2

    aget-boolean v7, v7, v8

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_0
    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2669
    iget-object v7, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    add-int v9, v0, v2

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_2

    goto :goto_2

    .line 2674
    :cond_2
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    mul-int/2addr v7, v5

    .line 2676
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v12, v11, v4

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v11, v8

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2677
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2678
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    :goto_3
    add-int/2addr v0, v8

    goto :goto_0

    :cond_4
    :goto_4
    if-ge v4, v6, :cond_5

    .line 2687
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2688
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private startCountForLongPress(I)V
    .locals 3

    .line 1600
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mLongPressStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1602
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mLongPressStarted:Z

    .line 1603
    iget-object v1, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    invoke-virtual {v1, v0}, Lzui/widget/ListViewX$LongPressHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1604
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1605
    iget-object p1, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    sget-wide v1, Lzui/widget/ListViewX;->LONG_PRESS_TIMEOUT:J

    invoke-virtual {p1, v0, v1, v2}, Lzui/widget/ListViewX$LongPressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private startEditModeAnimation(Z)V
    .locals 5

    .line 2584
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2586
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2587
    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    .line 2588
    instance-of v4, v2, Lzui/widget/SlideView;

    if-eqz v4, :cond_0

    .line 2590
    invoke-virtual {v3, p1}, Lzui/widget/SlideView;->startEditModeAnimation(Z)V

    goto :goto_1

    .line 2591
    :cond_0
    instance-of v2, v2, Lzui/widget/SlideViewEx;

    if-eqz v2, :cond_1

    .line 2592
    invoke-virtual {v3, p1}, Lzui/widget/SlideView;->showCheckItem(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startEditModeSlidingCheck(IZ)V
    .locals 1

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 1785
    iput-boolean p2, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    .line 1786
    iput p1, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1787
    iput p1, p0, Lzui/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1788
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 1789
    sput-boolean v0, Lzui/widget/ListViewX;->mLockClickEventInEditMode:Z

    const/4 p1, 0x0

    .line 1790
    iput p1, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    return-void
.end method

.method private startFinishAnimate()V
    .locals 1

    .line 2783
    iget v0, p0, Lzui/widget/ListViewX;->mPullDistance:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzui/widget/ListViewX;->mFlinging:Z

    if-nez v0, :cond_0

    .line 2784
    invoke-direct {p0}, Lzui/widget/ListViewX;->createHeaderAnim()V

    .line 2785
    invoke-direct {p0}, Lzui/widget/ListViewX;->startHeaderAnim()V

    :cond_0
    return-void
.end method

.method private startFlingAnim(I)V
    .locals 6

    const/4 v0, 0x1

    .line 3162
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mFlinging:Z

    .line 3165
    iget-boolean v1, p0, Lzui/widget/ListViewX;->mEnableStretch:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lzui/widget/ListViewX;->mPullingMode:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3168
    :cond_0
    iget v1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iget v3, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    mul-int/2addr p1, v3

    div-int/lit16 p1, p1, 0x3a98

    goto :goto_1

    .line 3166
    :cond_1
    :goto_0
    iget v1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iget v3, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    mul-int/2addr p1, v3

    div-int/lit16 p1, p1, 0x1f40

    :goto_1
    add-int/2addr v1, p1

    .line 3171
    iget p1, p0, Lzui/widget/ListViewX;->mPullDistance:I

    iput p1, p0, Lzui/widget/ListViewX;->mLastPosition:I

    .line 3172
    sget-object v3, Lzui/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    new-array v4, v2, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    aput v1, v4, v0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3173
    iget v3, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    div-int/2addr v3, v2

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3174
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3176
    sget-object v3, Lzui/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    new-array v2, v2, [I

    aput v1, v2, v5

    aput v5, v2, v0

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3177
    iget v1, p0, Lzui/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3178
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3180
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3181
    iget-object v2, p0, Lzui/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3182
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3184
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startHeaderAnim()V
    .locals 1

    const/4 v0, 0x1

    .line 3199
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mFlinging:Z

    .line 3200
    iget-object v0, p0, Lzui/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3201
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private stopCountForLongPress()V
    .locals 2

    const/4 v0, 0x0

    .line 1610
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mLongPressStarted:Z

    .line 1612
    iget-object v0, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzui/widget/ListViewX$LongPressHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    invoke-virtual {v0, v1}, Lzui/widget/ListViewX$LongPressHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private stopEditModeSlidingCheck()V
    .locals 4

    .line 1803
    iget v0, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    if-eqz v0, :cond_1

    .line 1804
    iget v0, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1805
    iget v1, p0, Lzui/widget/ListViewX;->mEditModeLastCheckItem:I

    if-ge v1, v0, :cond_0

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1814
    iget-boolean v2, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v0, v2}, Lzui/widget/ListViewX;->setSlideViewChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1818
    :cond_1
    iget v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    iget-boolean v1, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v0, v1}, Lzui/widget/ListViewX;->setSlideViewChecked(IZ)V

    :cond_2
    const/4 v0, 0x0

    .line 1820
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    const/4 v1, -0x1

    .line 1821
    iput v1, p0, Lzui/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1822
    iput v1, p0, Lzui/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1823
    sput-boolean v0, Lzui/widget/ListViewX;->mLockClickEventInEditMode:Z

    .line 1824
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mLockScrollVertical:Z

    .line 1825
    iput v0, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    return-void
.end method

.method private updateCheckStatus(Lzui/widget/SlideView;IZ)V
    .locals 7

    .line 1723
    iget-object v0, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aput-boolean p3, v0, p2

    if-eqz p1, :cond_0

    .line 1725
    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->updateViewCheckState(Lzui/widget/SlideView;I)V

    .line 1727
    :cond_0
    iget-object p3, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    .line 1728
    iget-object v1, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v1, :cond_1

    .line 1730
    invoke-virtual {p1}, Lzui/widget/SlideView;->getId()I

    move-result p1

    int-to-long v4, p1

    iget-object p1, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v6, p1, p2

    move-object v2, p0

    move v3, p2

    .line 1729
    invoke-interface/range {v1 .. v6}, Lzui/widget/ListViewX$OnEditModeStateListener;->onItemCheckedChanged(Landroid/widget/ListView;IJZ)V

    :cond_1
    return-void
.end method

.method private updateEditModeSlidingStatus()Z
    .locals 4

    .line 1829
    iget v0, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    .line 1830
    iget v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v3, p0, Lzui/widget/ListViewX;->mEditModeLastCheckItem:I

    if-eq v3, v1, :cond_1

    if-ge v3, v1, :cond_0

    .line 1832
    iput v2, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1834
    iput v1, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    .line 1836
    :goto_0
    iget v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    iput v1, p0, Lzui/widget/ListViewX;->mEditModeLastCheckItem:I

    :cond_1
    if-eqz v0, :cond_2

    .line 1838
    iget v1, p0, Lzui/widget/ListViewX;->mLastSlidingDirection:I

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private updateFocusView(Landroid/view/View;)V
    .locals 3

    .line 2434
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2435
    instance-of v1, v0, Lzui/widget/SlideView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2439
    instance-of v2, p1, Lzui/widget/SlideView;

    if-eqz v2, :cond_1

    .line 2440
    move-object v1, p1

    check-cast v1, Lzui/widget/SlideView;

    .line 2442
    :cond_1
    check-cast v0, Lzui/widget/SlideView;

    iput-object v0, p0, Lzui/widget/ListViewX;->mLastFocusedItemView:Lzui/widget/SlideView;

    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 2445
    invoke-virtual {v1, p1}, Lzui/widget/SlideView;->setFocused(Z)V

    .line 2447
    :cond_2
    iget-object p1, p0, Lzui/widget/ListViewX;->mLastFocusedItemView:Lzui/widget/SlideView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzui/widget/SlideView;->setFocused(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateHeaderView(I)V
    .locals 3

    .line 1932
    iget-object v0, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    .line 1935
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getTop()I

    move-result v1

    .line 1939
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getTop()I

    move-result v1

    iget v2, p0, Lzui/widget/ListViewX;->mHeaderViewHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 p1, 0x2

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1944
    iget-object v1, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    move p1, v0

    .line 1947
    :goto_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1948
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->updateHeaderViewState(I)V

    return-void
.end method

.method private updateHeaderViewState(I)V
    .locals 1

    .line 1957
    iget v0, p0, Lzui/widget/ListViewX;->mHeaderViewState:I

    if-eq v0, p1, :cond_0

    .line 1958
    iput p1, p0, Lzui/widget/ListViewX;->mHeaderViewState:I

    .line 1959
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlideLoadingStateListener:Lzui/widget/ListViewX$OnSlideLoadingStateListener;

    if-eqz v0, :cond_0

    .line 1960
    invoke-interface {v0, p0, p1}, Lzui/widget/ListViewX$OnSlideLoadingStateListener;->onSlideLoadingState(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private updateViewCheckState(Lzui/widget/SlideView;I)V
    .locals 2

    .line 1710
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1712
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 1713
    iget-object v0, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean p2, v0, p2

    invoke-virtual {p1, p2}, Lzui/widget/SlideView;->setViewChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bounceAnimation()V
    .locals 18

    move-object/from16 v0, p0

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v1

    .line 2711
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2712
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2713
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2717
    iget v5, v0, Lzui/widget/ListViewX;->mBounceDistance:I

    int-to-float v5, v5

    iget v6, v0, Lzui/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, v0, Lzui/widget/ListViewX;->BOUNCE_ANIM_DISTANCE:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    move v9, v7

    move v10, v9

    :goto_0
    if-ge v9, v1, :cond_3

    .line 2721
    invoke-virtual {v0, v9}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2722
    invoke-direct {v0, v11}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 2723
    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v14, v13, [F

    const/4 v15, 0x0

    aput v15, v14, v7

    neg-float v15, v5

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2724
    iget v14, v0, Lzui/widget/ListViewX;->BOUNCE_ANIM_RUSH_DURATION:I

    move-object/from16 v17, v8

    int-to-long v7, v14

    invoke-virtual {v12, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2725
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2727
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v13, [F

    const/4 v13, 0x0

    aput v15, v8, v13

    const/4 v14, 0x0

    aput v14, v8, v16

    invoke-static {v11, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2728
    iget v8, v0, Lzui/widget/ListViewX;->BOUNCE_ANIM_BACK_DURATION:I

    iget v11, v0, Lzui/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    mul-int/2addr v11, v10

    add-int/2addr v8, v11

    int-to-long v14, v8

    invoke-virtual {v7, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2729
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez v6, :cond_0

    .line 2732
    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    goto :goto_1

    .line 2734
    :cond_0
    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    if-nez v17, :cond_1

    .line 2738
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    goto :goto_2

    :cond_1
    move-object/from16 v8, v17

    .line 2740
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    move v13, v7

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v7, v13

    goto :goto_0

    .line 2747
    :cond_3
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2748
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method closeEditScreen()V
    .locals 2

    .line 1376
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_1

    .line 1377
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    .line 1378
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v1, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    invoke-interface {v0, p0, v1}, Lzui/widget/ListViewX$OnEditModeStateListener;->onExitEditMode(Landroid/widget/ListView;[Z)V

    .line 1382
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    invoke-virtual {v0}, Lzui/widget/ListViewXEditBar;->close()V

    .line 1383
    invoke-direct {p0}, Lzui/widget/ListViewX;->exitEditMode()V

    :cond_1
    return-void
.end method

.method public dismissFloatMenu()V
    .locals 1

    .line 635
    invoke-direct {p0}, Lzui/widget/ListViewX;->isLongPressFloatMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Lzui/app/FloatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1232
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1235
    invoke-virtual {p0}, Lzui/widget/ListViewX;->closeEditScreen()V

    const/4 p1, 0x1

    return p1

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1239
    invoke-direct {p0, p1, v1}, Lzui/widget/ListViewX;->handlePreference(Landroid/view/KeyEvent;Z)V

    .line 1240
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2, p1, v0, v1}, Lzui/widget/ListViewX;->handleDpadKeyEvent(ILandroid/view/KeyEvent;Landroid/view/View;Z)V

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 898
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mFloatMenuShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 901
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mLastFocusedItemView:Lzui/widget/SlideView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 902
    invoke-virtual {v0, v2}, Lzui/widget/SlideView;->setFocused(Z)V

    const/4 v0, 0x0

    .line 903
    iput-object v0, p0, Lzui/widget/ListViewX;->mLastFocusedItemView:Lzui/widget/SlideView;

    .line 905
    :cond_1
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->handleSlidingEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 911
    :cond_2
    iget p1, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->cancelChildViewPressState(I)V

    .line 912
    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    :cond_3
    return v1

    .line 916
    :cond_4
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->handleOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 925
    :cond_5
    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    :cond_6
    return v1

    .line 930
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 666
    iget-object v0, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 4

    .line 675
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 677
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    .line 678
    :goto_0
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 679
    iget-object v2, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 680
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method getCustomizedLeftTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1412
    iget-object v0, p0, Lzui/widget/ListViewX;->mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCustomizedRightTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1416
    iget-object v0, p0, Lzui/widget/ListViewX;->mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getEditModeCustomizedTitle(I)Ljava/lang/String;
    .locals 1

    .line 1404
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_0

    .line 1405
    invoke-interface {v0, p0, p1}, Lzui/widget/ListViewX$OnEditModeStateListener;->getCustomizedTitle(Landroid/widget/ListView;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getExtraTitlePaddingEndInEditMode()I
    .locals 1

    .line 1424
    iget v0, p0, Lzui/widget/ListViewX;->mExtraTitlePaddingEndInEditMode:I

    return v0
.end method

.method getExtraTitlePaddingStartInEditMode()I
    .locals 1

    .line 1428
    iget v0, p0, Lzui/widget/ListViewX;->mExtraTitlePaddingStartInEditMode:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 689
    iget-object v0, p0, Lzui/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .line 694
    iget-object v0, p0, Lzui/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getListItemMode()I
    .locals 1

    .line 432
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .line 442
    iget-object v0, p0, Lzui/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-object v0

    .line 445
    :cond_0
    instance-of v1, v0, Lzui/widget/ListViewX$XAdapter;

    if-eqz v1, :cond_1

    .line 446
    check-cast v0, Lzui/widget/ListViewX$XAdapter;

    invoke-virtual {v0}, Lzui/widget/ListViewX$XAdapter;->getOriginAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 1

    .line 1365
    invoke-super {p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1367
    invoke-direct {p0}, Lzui/widget/ListViewX;->initSlidingParams()V

    .line 1368
    invoke-direct {p0}, Lzui/widget/ListViewX;->resetCheckStatus()V

    .line 1369
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 1370
    invoke-virtual {v0}, Lzui/widget/ListViewXEditBar;->refresh()V

    :cond_0
    return-void
.end method

.method public hideDivider(Z)V
    .locals 0

    .line 2510
    iput-boolean p1, p0, Lzui/widget/ListViewX;->mHideDivider:Z

    .line 2511
    invoke-virtual {p0}, Lzui/widget/ListViewX;->requestLayout()V

    .line 2512
    invoke-virtual {p0}, Lzui/widget/ListViewX;->invalidate()V

    return-void
.end method

.method isHorizonTheme()Z
    .locals 1

    .line 1420
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mIsHorizon:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1220
    invoke-virtual {p0, p1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1223
    invoke-virtual {p1}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1171
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 1172
    invoke-direct {p0}, Lzui/widget/ListViewX;->registerStatusbarClickBroadCast()V

    .line 1173
    invoke-virtual {p0}, Lzui/widget/ListViewX;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->mLongClickable:Z

    .line 1174
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mPendingEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1175
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mPendingEditMode:Z

    .line 1176
    invoke-direct {p0}, Lzui/widget/ListViewX;->showEditScreen()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1116
    invoke-direct {p0}, Lzui/widget/ListViewX;->floatMenuCleanup()V

    .line 1117
    iget-object v0, p0, Lzui/widget/ListViewX;->mFloatMenuClickListener:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    if-eqz v0, :cond_0

    .line 1118
    iget v1, p0, Lzui/widget/ListViewX;->mFloatmenuPosition:I

    invoke-interface {v0, p1, p2, v1}, Lzui/widget/ListViewX$OnFloatMenuOnClickListener;->onClick(Landroid/content/DialogInterface;II)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1100
    iget-object v0, p0, Lzui/widget/ListViewX;->mItemClickerListener:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 1105
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mItemClickerListener:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

    iget v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    .line 1106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    int-to-long v2, v2

    .line 1105
    invoke-interface {v0, p1, v1, v2, v3}, Lzui/widget/ListViewX$OnSlideOutItemClickListener;->onSlideOutItemClick(Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1183
    invoke-virtual {p0}, Lzui/widget/ListViewX;->closeEditScreen()V

    .line 1184
    invoke-virtual {p0}, Lzui/widget/ListViewX;->dismissFloatMenu()V

    .line 1185
    iget-object v0, p0, Lzui/widget/ListViewX;->mStatusbarClickReceiver:Lzui/widget/ListViewX$StatusBarClickReceiver;

    if-eqz v0, :cond_0

    .line 1187
    :try_start_0
    iget-object v1, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 1191
    iput-object v0, p0, Lzui/widget/ListViewX;->mStatusbarClickReceiver:Lzui/widget/ListViewX$StatusBarClickReceiver;

    .line 1193
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 709
    invoke-direct {p0}, Lzui/widget/ListViewX;->floatMenuCleanup()V

    .line 710
    iget-object p1, p0, Lzui/widget/ListViewX;->mFloatMenuShowListener:Lzui/widget/ListViewX$OnFloatMenuShowListener;

    if-eqz p1, :cond_0

    .line 711
    iget-object v0, p0, Lzui/widget/ListViewX;->mFloatDlg:Lzui/app/FloatDialog;

    const/4 v1, 0x0

    iget v2, p0, Lzui/widget/ListViewX;->mFloatmenuPosition:I

    invoke-interface {p1, v0, v1, v2}, Lzui/widget/ListViewX$OnFloatMenuShowListener;->onShow(Landroid/content/DialogInterface;ZI)V

    :cond_0
    return-void
.end method

.method public onEdgeReached(Landroid/widget/AbsListView;II)V
    .locals 5

    .line 1314
    invoke-direct {p0}, Lzui/widget/ListViewX;->isPullAnimationAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1315
    invoke-direct {p0, p3}, Lzui/widget/ListViewX;->getScaledDistance(I)I

    move-result p1

    iput p1, p0, Lzui/widget/ListViewX;->mScaledDistance:I

    .line 1316
    sget-object p1, Lzui/widget/ListViewX;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaledDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzui/widget/ListViewX;->mScaledDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    if-nez p1, :cond_0

    new-array p1, p3, [F

    .line 1319
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 1320
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1321
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1322
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    new-instance v0, Lzui/widget/ListViewX$1;

    invoke-direct {v0, p0, p2}, Lzui/widget/ListViewX$1;-><init>(Lzui/widget/ListViewX;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p3, [F

    .line 1330
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 1331
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1332
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1333
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    new-instance v0, Lzui/widget/ListViewX$2;

    invoke-direct {v0, p0, p2}, Lzui/widget/ListViewX$2;-><init>(Lzui/widget/ListViewX;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1341
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lzui/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    .line 1342
    iget-object v0, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    const/4 p1, 0x1

    if-gez p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1351
    :goto_0
    iget-object v1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    new-array v2, p3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    int-to-float v0, v0

    aput v0, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1352
    iget-object v1, p0, Lzui/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    new-array p3, p3, [F

    aput v0, p3, v3

    aput v4, p3, p1

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1354
    iput-boolean p1, p0, Lzui/widget/ListViewX;->mFlinging:Z

    .line 1355
    iput v3, p0, Lzui/widget/ListViewX;->mLastPosition:I

    .line 1356
    invoke-direct {p0, p2}, Lzui/widget/ListViewX;->setPullingMode(I)V

    .line 1358
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lzui/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1359
    iget-object p1, p0, Lzui/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 1

    .line 1150
    iget p1, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1155
    iget-boolean p1, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 1158
    :cond_0
    iget p1, p0, Lzui/widget/ListViewX;->mCurrentPosition:I

    add-int/lit8 p1, p1, -0x1

    .line 1159
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1160
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1161
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1163
    invoke-virtual {p1, p2}, Lzui/widget/SlideView;->setDividerState(Z)V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1283
    iget-object v0, p0, Lzui/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1284
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1257
    iget v0, p0, Lzui/widget/ListViewX;->mScrollingState:I

    if-eq v0, p2, :cond_0

    .line 1258
    iput p2, p0, Lzui/widget/ListViewX;->mScrollingState:I

    .line 1260
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1261
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public onSlide(Landroid/view/View;I)V
    .locals 2

    .line 1124
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-nez v0, :cond_2

    .line 1127
    iput p2, p0, Lzui/widget/ListViewX;->mSlidingStatus:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    invoke-direct {p0}, Lzui/widget/ListViewX;->stopCountForLongPress()V

    const/4 v0, 0x0

    .line 1135
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    goto :goto_0

    .line 1130
    :cond_1
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->setLongClickable(Z)V

    .line 1139
    :goto_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mItemSlideListener:Lzui/widget/ListViewX$OnSlideListener;

    if-eqz v0, :cond_2

    .line 1140
    check-cast p1, Lzui/widget/SlideView;

    .line 1141
    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    .line 1140
    invoke-interface {v0, p1, v1, p2}, Lzui/widget/ListViewX$OnSlideListener;->onSlide(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1199
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1201
    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->shrink(Z)V

    .line 1202
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    invoke-virtual {v0}, Lzui/widget/SlideView;->startLeftSlidingFinishAnimation()V

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lzui/widget/ListViewX;->mSlidingView:Lzui/widget/SlideView;

    .line 1205
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    .line 1070
    invoke-direct {p0, p2}, Lzui/widget/ListViewX;->getListViewPosition(I)I

    move-result p2

    .line 1075
    sget-boolean v0, Lzui/widget/ListViewX;->mLockClickEventInEditMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1076
    sput-boolean v1, Lzui/widget/ListViewX;->mLockClickEventInEditMode:Z

    return v1

    .line 1079
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1082
    :cond_1
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_2

    .line 1083
    invoke-direct {p0, p2}, Lzui/widget/ListViewX;->setSlideViewChecked(I)V

    .line 1084
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 1086
    :cond_2
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v0, :cond_3

    return v1

    .line 1089
    :cond_3
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v0

    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewFixed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1094
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method selectAllListItem(Z)V
    .locals 3

    .line 1388
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    .line 1389
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->initCheckStatus(Z)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1392
    invoke-virtual {p0, v1}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->getSlideView(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1394
    invoke-virtual {v2, p1}, Lzui/widget/SlideView;->setViewChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    :cond_1
    iget-object p1, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    .line 1398
    iget-object p1, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz p1, :cond_2

    .line 1399
    iget-object v0, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    invoke-interface {p1, p0, v0}, Lzui/widget/ListViewX$OnEditModeStateListener;->onMultiItemCheckedChanged(Landroid/widget/ListView;[Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 78
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lzui/widget/ListViewX;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 437
    new-instance v0, Lzui/widget/ListViewX$XAdapter;

    invoke-direct {v0, p0, p1}, Lzui/widget/ListViewX$XAdapter;-><init>(Lzui/widget/ListViewX;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    .line 438
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 699
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iput-object p1, p0, Lzui/widget/ListViewX;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEditBarBackgroundInEditMode(I)V
    .locals 1

    .line 532
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0, p1}, Lzui/widget/ListViewXEditBar;->setEditBarBackground(I)V

    :cond_0
    return-void
.end method

.method public setEditBarExtraPaddings(II)V
    .locals 0

    .line 658
    iput p1, p0, Lzui/widget/ListViewX;->mExtraTitlePaddingStartInEditMode:I

    .line 659
    iput p2, p0, Lzui/widget/ListViewX;->mExtraTitlePaddingEndInEditMode:I

    return-void
.end method

.method public setEditModeBarPosition(II)V
    .locals 0

    .line 520
    iput p1, p0, Lzui/widget/ListViewX;->mEditBarLeft:I

    .line 521
    iput p2, p0, Lzui/widget/ListViewX;->mEditBarTop:I

    return-void
.end method

.method public setExtraPaddings(II)V
    .locals 0

    .line 647
    iput p1, p0, Lzui/widget/ListViewX;->mExtraPaddingStart:I

    .line 648
    iput p2, p0, Lzui/widget/ListViewX;->mExtraPaddingEnd:I

    return-void
.end method

.method public setFloatMenuAdapter(Landroid/widget/ListAdapter;Lzui/widget/ListViewX$OnFloatMenuOnClickListener;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lzui/widget/ListViewX;->mFloatMenuAdapter:Landroid/widget/ListAdapter;

    .line 605
    iput-object p2, p0, Lzui/widget/ListViewX;->mFloatMenuClickListener:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    return-void
.end method

.method public setFloatMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lzui/widget/ListViewX;->mFloatMenuContextAdapter:Lzui/app/FloatDialog$MenuAdapter;

    return-void
.end method

.method public setFloatMenuItems(ILzui/widget/ListViewX$OnFloatMenuOnClickListener;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewX;->mFloatMenuItems:[Ljava/lang/CharSequence;

    .line 580
    iput-object p2, p0, Lzui/widget/ListViewX;->mFloatMenuClickListener:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    return-void
.end method

.method public setFloatMenuItems([Ljava/lang/CharSequence;Lzui/widget/ListViewX$OnFloatMenuOnClickListener;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lzui/widget/ListViewX;->mFloatMenuItems:[Ljava/lang/CharSequence;

    .line 592
    iput-object p2, p0, Lzui/widget/ListViewX;->mFloatMenuClickListener:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1

    .line 1211
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1212
    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->setSlideViewChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setLeftButtonEnabledInEditMode(Z)V
    .locals 1

    .line 504
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p1}, Lzui/widget/ListViewXEditBar;->setLeftButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLeftTextColorInEditMode(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 490
    iput-object p1, p0, Lzui/widget/ListViewX;->mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

    .line 491
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, p1}, Lzui/widget/ListViewXEditBar;->setLeftTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setListItemBackgroundColor(II)V
    .locals 1

    .line 545
    iput p1, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgColor:I

    .line 546
    iput p2, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    .line 547
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v0, p1, p2}, Lzui/widget/SlideView$SlideViewParams;->setBgColor(II)V

    return-void
.end method

.method public setListItemBackgroundColor(III)V
    .locals 0

    .line 558
    invoke-virtual {p0, p1, p2}, Lzui/widget/ListViewX;->setListItemBackgroundColor(II)V

    .line 559
    iput p3, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    return-void
.end method

.method public setListItemMaskBackgroundColor(I)V
    .locals 0

    .line 568
    iput p1, p0, Lzui/widget/ListViewX;->mCustomizedListItemBgMaskColor:I

    return-void
.end method

.method public setListItemMode(I)V
    .locals 2

    .line 412
    iget v0, p0, Lzui/widget/ListViewX;->mListItemMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 415
    :cond_0
    iput p1, p0, Lzui/widget/ListViewX;->mListItemMode:I

    .line 416
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    if-eqz p1, :cond_3

    .line 418
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSlideRightMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lzui/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lzui/platform/R$dimen;->listview_x_left_space_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 422
    :goto_0
    iget-object v1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v1, p1}, Lzui/widget/SlideView$SlideViewParams;->setLeftSpaceWidth(I)V

    .line 423
    invoke-direct {p0}, Lzui/widget/ListViewX;->isSlideLeftMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 424
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    goto :goto_1

    .line 426
    :cond_2
    iget-object p1, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p1, v0}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOnEditModeStateListener(Lzui/widget/ListViewX$OnEditModeStateListener;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lzui/widget/ListViewX;->mEditModeListener:Lzui/widget/ListViewX$OnEditModeStateListener;

    return-void
.end method

.method public setOnFloatMenuShowListener(Lzui/widget/ListViewX$OnFloatMenuShowListener;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lzui/widget/ListViewX;->mFloatMenuShowListener:Lzui/widget/ListViewX$OnFloatMenuShowListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lzui/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1249
    invoke-direct {p0}, Lzui/widget/ListViewX;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOnSlideListener(Lzui/widget/ListViewX$OnSlideListener;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lzui/widget/ListViewX;->mItemSlideListener:Lzui/widget/ListViewX$OnSlideListener;

    return-void
.end method

.method public setOnSlideLoadingStateListener(Lzui/widget/ListViewX$OnSlideLoadingStateListener;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lzui/widget/ListViewX;->mSlideLoadingStateListener:Lzui/widget/ListViewX$OnSlideLoadingStateListener;

    return-void
.end method

.method public setOnSlideOutItemClickListener(Lzui/widget/ListViewX$OnSlideOutItemClickListener;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lzui/widget/ListViewX;->mItemClickerListener:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

    return-void
.end method

.method public setPullAnimEnabled(Z)V
    .locals 0

    .line 2506
    iput-boolean p1, p0, Lzui/widget/ListViewX;->mPullAnimEnabled:Z

    return-void
.end method

.method public setRightButtonEnabledInEditMode(Z)V
    .locals 1

    .line 510
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0, p1}, Lzui/widget/ListViewXEditBar;->setRightButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setRightTextColorInEditMode(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 497
    iput-object p1, p0, Lzui/widget/ListViewX;->mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

    .line 498
    iget-object v0, p0, Lzui/widget/ListViewX;->mEditBar:Lzui/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lzui/widget/ListViewXEditBar;->setRightTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSlideModeText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lzui/widget/ListViewX;->mSlideParams:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v0, p1}, Lzui/widget/SlideView$SlideViewParams;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDividerInEditMode(Z)V
    .locals 0

    .line 516
    iput-boolean p1, p0, Lzui/widget/ListViewX;->mShowDividerInEditMode:Z

    return-void
.end method

.method public startAddAnimation(I)V
    .locals 7

    .line 2545
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getLastVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr p1, v2

    .line 2553
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2556
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2557
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2558
    iget v5, p0, Lzui/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    iget v6, p0, Lzui/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2559
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 2563
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sub-int v4, v0, p1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public startBatchRemoveAnimation()V
    .locals 14

    .line 2600
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    .line 2601
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2604
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2605
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2606
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2610
    iget-object v8, p0, Lzui/widget/ListViewX;->mCheckedItems:[Z

    add-int v9, v0, v3

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_0

    .line 2611
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v12, v11, v5

    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2612
    iget v9, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    iget v11, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    mul-int/2addr v11, v7

    add-int/2addr v9, v11

    int-to-long v11, v9

    invoke-virtual {v8, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-array v9, v13, [Landroid/animation/Animator;

    aput-object v8, v9, v5

    .line 2613
    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2615
    invoke-virtual {p0, v0}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2616
    iget v9, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-array v9, v13, [Landroid/animation/Animator;

    aput-object v8, v9, v5

    .line 2617
    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2618
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2619
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    return-void

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_3

    .line 2631
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2632
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2635
    :cond_3
    iget-object v0, p0, Lzui/widget/ListViewX;->mHandler:Lzui/widget/ListViewX$LongPressHandler;

    iget-object v1, p0, Lzui/widget/ListViewX;->mBatchPushEvent:Ljava/lang/Runnable;

    iget v2, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    iget v3, p0, Lzui/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lzui/widget/ListViewX$LongPressHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startEditMode()V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lzui/widget/ListViewX;->mInEditMode:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 475
    iput v0, p0, Lzui/widget/ListViewX;->mFocusedPosition:I

    .line 476
    invoke-virtual {p0}, Lzui/widget/ListViewX;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lzui/widget/ListViewX;->showEditScreen()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lzui/widget/ListViewX;->mPendingEditMode:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startRemoveAnimation(I)V
    .locals 6

    .line 2516
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getLastVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_2

    .line 2521
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2523
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    .line 2524
    invoke-virtual {p0}, Lzui/widget/ListViewX;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2532
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2534
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2535
    iget v4, p0, Lzui/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    iget v5, p0, Lzui/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    mul-int/lit8 v5, v5, 0x0

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2536
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 2540
    invoke-virtual {p0, v2}, Lzui/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sub-int v4, v2, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public stopEditMode()V
    .locals 0

    .line 486
    invoke-virtual {p0}, Lzui/widget/ListViewX;->closeEditScreen()V

    return-void
.end method
