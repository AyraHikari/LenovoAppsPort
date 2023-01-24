.class public Lzui/widget/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/SlideView$SlideViewParams;,
        Lzui/widget/SlideView$OnViewPressedListener;,
        Lzui/widget/SlideView$OnViewCheckedChangeListener;,
        Lzui/widget/SlideView$OnSlideListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static CHECK_PADDING:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/widget/SlideView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_OTHERS:Z = false

.field private static final DEBUG_TOUCH:Z = false

.field private static final INVALID_COLOR:I = -0x1

.field private static LEFT_SLIDING:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/widget/SlideView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static LISTVIEW_PADDING_START:I = 0x0

.field private static final SHRINK_SPEED_FACTOR:I = 0x2

.field public static final SLIDE_STATUS_OFF:I = 0x0

.field public static final SLIDE_STATUS_ON:I = 0x2

.field public static final SLIDE_STATUS_START_SCROLL:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAN:I = 0x2


# instance fields
.field private BOUNCE_ANIM_BACK_DURATION:I

.field private BOUNCE_ANIM_DISTANCE:F

.field private BOUNCE_ANIM_FACTOR_BASE:F

.field private BOUNCE_ANIM_RUSH_DURATION:I

.field private EDIT_ANIM_CHECK_END_MARGIN:I

.field private EDIT_ANIM_CHECK_START_MARGIN:I

.field private final SLIDE_TITLE_ANIMATION_DURATION:J

.field private final SLIDE_TITLE_CAMERA_DISTANCE:F

.field private mAnimating:Z

.field private mBgColor:I

.field private mBgFocusedColor:I

.field private mBgPressedColor:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mCheckedChangeListener:Lzui/widget/SlideView$OnViewCheckedChangeListener;

.field private mChildView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentPadding:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerView:Landroid/widget/ImageView;

.field private mDownSpace:Landroid/view/View;

.field private mEditing:Z

.field private mFixed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/widget/RelativeLayout;

.field private final mHolderRect:Landroid/graphics/Rect;

.field private mHolderWidth:I

.field private mLastX:I

.field private mLastY:I

.field private mLeftSlideThreshold:I

.field private mLeftSpaceWidth:I

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mLockPressUI:Z

.field private mOnSlideListener:Lzui/widget/SlideView$OnSlideListener;

.field private mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewPressedListener:Lzui/widget/SlideView$OnViewPressedListener;

.field private mOriginalHeight:I

.field private mPosition:I

.field private mRightSlideThreshold:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSlidingStatus:I

.field private mSpace:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mTranslateX:I

.field private mViewContent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-class v0, Lzui/widget/SlideView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/widget/SlideView;->TAG:Ljava/lang/String;

    .line 259
    new-instance v0, Lzui/widget/SlideView$2;

    const-string v1, "CheckPadding"

    invoke-direct {v0, v1}, Lzui/widget/SlideView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/widget/SlideView;->CHECK_PADDING:Landroid/util/Property;

    .line 306
    new-instance v0, Lzui/widget/SlideView$3;

    const-string v1, "LeftSliding"

    invoke-direct {v0, v1}, Lzui/widget/SlideView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/widget/SlideView;->LEFT_SLIDING:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lzui/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lzui/widget/SlideView$SlideViewParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lzui/widget/SlideView$SlideViewParams;)V
    .locals 4

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lzui/widget/SlideView;->mPosition:I

    .line 98
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/SlideView;->mHolderRect:Landroid/graphics/Rect;

    .line 103
    iput v1, p0, Lzui/widget/SlideView;->mBgColor:I

    .line 104
    iput v1, p0, Lzui/widget/SlideView;->mBgPressedColor:I

    .line 105
    iput v1, p0, Lzui/widget/SlideView;->mBgFocusedColor:I

    const-wide/16 v2, 0x5dc

    .line 109
    iput-wide v2, p0, Lzui/widget/SlideView;->SLIDE_TITLE_ANIMATION_DURATION:J

    const/high16 v2, 0x44f00000    # 1920.0f

    .line 110
    iput v2, p0, Lzui/widget/SlideView;->SLIDE_TITLE_CAMERA_DISTANCE:F

    const/high16 v2, 0x41f00000    # 30.0f

    .line 112
    iput v2, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_DISTANCE:F

    const/16 v2, 0xf0

    .line 113
    iput v2, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_RUSH_DURATION:I

    const/16 v2, 0x104

    .line 114
    iput v2, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_BACK_DURATION:I

    const/high16 v2, 0x40800000    # 4.0f

    .line 115
    iput v2, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_FACTOR_BASE:F

    const/16 v2, -0x5a

    .line 117
    iput v2, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_START_MARGIN:I

    const/16 v2, 0x30

    .line 118
    iput v2, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_END_MARGIN:I

    .line 120
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lzui/widget/SlideView;->mHandler:Landroid/os/Handler;

    .line 236
    new-instance v2, Lzui/widget/SlideView$1;

    invoke-direct {v2, p0}, Lzui/widget/SlideView$1;-><init>(Lzui/widget/SlideView;)V

    iput-object v2, p0, Lzui/widget/SlideView;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 257
    iput v0, p0, Lzui/widget/SlideView;->mCurrentPadding:I

    .line 258
    iput-boolean v0, p0, Lzui/widget/SlideView;->mAnimating:Z

    .line 430
    iput v0, p0, Lzui/widget/SlideView;->mTranslateX:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10103bd

    aput v3, v2, v0

    .line 158
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    sput p2, Lzui/widget/SlideView;->LISTVIEW_PADDING_START:I

    .line 161
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-direct {p0, p3}, Lzui/widget/SlideView;->initView(Lzui/widget/SlideView$SlideViewParams;)V

    return-void
.end method

.method static synthetic access$002(Lzui/widget/SlideView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lzui/widget/SlideView;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lzui/widget/SlideView;)I
    .locals 0

    .line 59
    iget p0, p0, Lzui/widget/SlideView;->mCurrentPadding:I

    return p0
.end method

.method static synthetic access$102(Lzui/widget/SlideView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lzui/widget/SlideView;->mCurrentPadding:I

    return p1
.end method

.method static synthetic access$200(Lzui/widget/SlideView;)I
    .locals 0

    .line 59
    iget p0, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_START_MARGIN:I

    return p0
.end method

.method static synthetic access$300(Lzui/widget/SlideView;)Landroid/widget/CheckBox;
    .locals 0

    .line 59
    iget-object p0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lzui/widget/SlideView;)I
    .locals 0

    .line 59
    iget p0, p0, Lzui/widget/SlideView;->mTranslateX:I

    return p0
.end method

.method static synthetic access$402(Lzui/widget/SlideView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lzui/widget/SlideView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$500(Lzui/widget/SlideView;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    return-object p0
.end method

.method private initAnimParams()V
    .locals 2

    .line 789
    iget-object v0, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_bounce_left_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_DISTANCE:F

    .line 791
    iget-object v0, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$integer;->config_list_bounce_left_rush_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_RUSH_DURATION:I

    .line 793
    iget-object v0, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$integer;->config_list_bounce_left_back_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_BACK_DURATION:I

    .line 795
    new-instance v0, Lzui/util/Resources;

    invoke-direct {v0}, Lzui/util/Resources;-><init>()V

    .line 796
    iget-object v1, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/util/Resources;->setRealObject(Ljava/lang/Object;)V

    .line 797
    sget v1, Lzui/platform/R$dimen;->listview_x_slide_bounce_factor:I

    invoke-virtual {v0, v1}, Lzui/util/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_FACTOR_BASE:F

    .line 798
    iget-object v0, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_check_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_START_MARGIN:I

    .line 800
    sget v0, Lzui/widget/SlideView;->LISTVIEW_PADDING_START:I

    iput v0, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_END_MARGIN:I

    return-void
.end method

.method private initAnimTextView(Landroid/widget/TextView;)V
    .locals 3

    .line 804
    new-instance v0, Lzui/view/animation/ElasticInterpolator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lzui/view/animation/ElasticInterpolator;-><init>(B)V

    const v1, 0x40333333    # 2.8f

    .line 807
    invoke-virtual {v0, v1}, Lzui/view/animation/ElasticInterpolator;->p(F)Lzui/view/animation/ElasticInterpolator;

    move-result-object v1

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2}, Lzui/view/animation/ElasticInterpolator;->a(F)Lzui/view/animation/ElasticInterpolator;

    .line 809
    check-cast p1, Lzui/widget/AnimTextView;

    const-wide/16 v1, 0x5dc

    .line 810
    invoke-virtual {p1, v1, v2}, Lzui/widget/AnimTextView;->setDuration(J)V

    .line 811
    invoke-virtual {p1, v0}, Lzui/widget/AnimTextView;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v0, 0x44f00000    # 1920.0f

    .line 812
    invoke-virtual {p1, v0}, Lzui/widget/AnimTextView;->setCameraDistance(F)V

    return-void
.end method

.method private initView(Lzui/widget/SlideView$SlideViewParams;)V
    .locals 2

    .line 816
    invoke-virtual {p0}, Lzui/widget/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    .line 817
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    .line 819
    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->setOrientation(I)V

    .line 820
    iget-object v0, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 821
    sget v0, Lzui/platform/R$id;->slideview_content:I

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    .line 822
    sget v0, Lzui/platform/R$id;->divider:I

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    .line 825
    sget v0, Lzui/platform/R$id;->slideview_title:I

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v1, "delete"

    .line 826
    invoke-static {v1, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/SlideView;->mHolder:Landroid/widget/RelativeLayout;

    .line 828
    sget v0, Lzui/platform/R$id;->slideview_check:I

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    .line 829
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 831
    invoke-direct {p0, p1}, Lzui/widget/SlideView;->updateParams(Lzui/widget/SlideView$SlideViewParams;)V

    .line 832
    iget-object p1, p0, Lzui/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$color;->list_item_background_focused_not_pressed_zui:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/SlideView;->mBgFocusedColor:I

    .line 834
    invoke-direct {p0}, Lzui/widget/SlideView;->initAnimParams()V

    return-void
.end method

.method private quickScrollTo(II)V
    .locals 6

    .line 751
    iget-object p2, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    sub-int v3, p1, v1

    .line 753
    iget-object v0, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 754
    invoke-virtual {p0}, Lzui/widget/SlideView;->invalidate()V

    return-void
.end method

.method private setCheckMargin(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 209
    iget v0, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_END_MARGIN:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_START_MARGIN:I

    .line 210
    :goto_0
    iget-object v1, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    invoke-virtual {p0}, Lzui/widget/SlideView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 212
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 214
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 216
    :goto_1
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 218
    iget-object p1, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 220
    :cond_2
    iget-object p1, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 6

    .line 743
    iget-object p2, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    sub-int v3, p1, v1

    .line 746
    iget-object v0, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 v5, p1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 747
    invoke-virtual {p0}, Lzui/widget/SlideView;->invalidate()V

    return-void
.end method

.method private startSlideAnimation(I)V
    .locals 4

    .line 873
    iget-object v0, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 874
    invoke-virtual {p0}, Lzui/widget/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 876
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 877
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v2, v0

    .line 878
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 880
    iget-object p1, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateParams(Lzui/widget/SlideView$SlideViewParams;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 759
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getWidth()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mHolderWidth:I

    .line 760
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getLeftSpaceWidth()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mLeftSpaceWidth:I

    .line 761
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_0
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 766
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 767
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgColor()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mBgColor:I

    .line 768
    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->setBackgroundColor(I)V

    .line 770
    :cond_1
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgPressedColor()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 771
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgPressedColor()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mBgPressedColor:I

    .line 773
    :cond_2
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getLeftSlideThreshold()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mLeftSlideThreshold:I

    .line 774
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getRightSlideThreshold()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mRightSlideThreshold:I

    .line 778
    invoke-static {p1}, Lzui/widget/SlideView$SlideViewParams;->access$600(Lzui/widget/SlideView$SlideViewParams;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 779
    iget-object p1, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 781
    :cond_3
    iget-object p1, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateSlidingStatus(I)V
    .locals 1

    .line 844
    iget v0, p0, Lzui/widget/SlideView;->mHolderWidth:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    .line 846
    :cond_0
    iget v0, p0, Lzui/widget/SlideView;->mLeftSlideThreshold:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lzui/widget/SlideView;->mRightSlideThreshold:I

    neg-int v0, v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 854
    :goto_1
    iget v0, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    if-eq p1, v0, :cond_3

    .line 858
    iput p1, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    .line 862
    iget-object v0, p0, Lzui/widget/SlideView;->mOnSlideListener:Lzui/widget/SlideView$OnSlideListener;

    if-eqz v0, :cond_3

    .line 866
    invoke-interface {v0, p0, p1}, Lzui/widget/SlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 592
    iget-object v0, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lzui/widget/SlideView;->scrollTo(II)V

    .line 598
    iget-object v0, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lzui/widget/SlideView;->updateSlidingStatus(I)V

    .line 599
    invoke-virtual {p0}, Lzui/widget/SlideView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public getBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/16 v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 675
    iget p1, p0, Lzui/widget/SlideView;->mBgPressedColor:I

    if-eq p1, v1, :cond_1

    .line 676
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lzui/widget/SlideView;->mBgPressedColor:I

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 677
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-object v2

    :cond_0
    return-object p1

    .line 684
    :cond_1
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 685
    invoke-virtual {p0}, Lzui/widget/SlideView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 686
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    .line 692
    :cond_3
    iget p1, p0, Lzui/widget/SlideView;->mBgColor:I

    if-eq p1, v1, :cond_5

    .line 693
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lzui/widget/SlideView;->mBgColor:I

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 694
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    if-ne v1, v0, :cond_4

    return-object v2

    :cond_4
    return-object p1

    .line 701
    :cond_5
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 702
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 703
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2
.end method

.method public getCheckedRegion()I
    .locals 2

    .line 551
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    .line 553
    invoke-virtual {p0}, Lzui/widget/SlideView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLeft()I

    move-result v0

    return v0

    .line 556
    :cond_0
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getRight()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 205
    iget-object v0, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 402
    iget-object v0, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 404
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getSlidingStatus()I
    .locals 1

    .line 427
    iget v0, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    return v0
.end method

.method public getViewPosition()I
    .locals 1

    .line 347
    iget v0, p0, Lzui/widget/SlideView;->mPosition:I

    return v0
.end method

.method public handleSlideOutItemClick(II)Z
    .locals 2

    .line 540
    iget-object v0, p0, Lzui/widget/SlideView;->mHolder:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lzui/widget/SlideView;->mHolderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 541
    iget-object v0, p0, Lzui/widget/SlideView;->mHolderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 543
    iget-object p2, p0, Lzui/widget/SlideView;->mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_1

    .line 544
    iget-object v0, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-interface {p2, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public isSliding()Z
    .locals 1

    .line 564
    iget v0, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewChecked()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lzui/widget/SlideView;->mEditing:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isViewFixed()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lzui/widget/SlideView;->mFixed:Z

    return v0
.end method

.method public lockPressUI(Z)V
    .locals 0

    .line 738
    iput-boolean p1, p0, Lzui/widget/SlideView;->mLockPressUI:Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 615
    iput-boolean p2, p0, Lzui/widget/SlideView;->mChecked:Z

    .line 616
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckedChangeListener:Lzui/widget/SlideView$OnViewCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 617
    iget v1, p0, Lzui/widget/SlideView;->mPosition:I

    invoke-interface {v0, p1, v1, p2}, Lzui/widget/SlideView$OnViewCheckedChangeListener;->onCheckedChange(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public onRequireTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 434
    iget-object v2, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    .line 441
    iget-boolean v3, p0, Lzui/widget/SlideView;->mFixed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    goto/16 :goto_4

    .line 455
    :cond_1
    iget p1, p0, Lzui/widget/SlideView;->mLastX:I

    sub-int p1, v0, p1

    .line 456
    iget v6, p0, Lzui/widget/SlideView;->mLastY:I

    sub-int v6, v1, v6

    .line 457
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v6, v5

    if-ge v7, v6, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-int v6, v2, p1

    if-eqz p1, :cond_e

    .line 467
    iget v7, p0, Lzui/widget/SlideView;->mHolderWidth:I

    if-ne v2, v7, :cond_6

    iget v2, p0, Lzui/widget/SlideView;->mTranslateX:I

    if-ltz v2, :cond_3

    if-nez v2, :cond_6

    if-gez p1, :cond_6

    .line 469
    :cond_3
    iget v2, p0, Lzui/widget/SlideView;->mTranslateX:I

    iget v3, p0, Lzui/widget/SlideView;->mHolderWidth:I

    mul-int/lit8 v3, v3, -0x2

    if-gt v2, v3, :cond_4

    if-lez p1, :cond_e

    .line 470
    :cond_4
    iget v2, p0, Lzui/widget/SlideView;->mTranslateX:I

    div-int/2addr p1, v5

    add-int/2addr v2, p1

    iput v2, p0, Lzui/widget/SlideView;->mTranslateX:I

    if-lez v2, :cond_5

    move v2, v4

    .line 471
    :cond_5
    iput v2, p0, Lzui/widget/SlideView;->mTranslateX:I

    .line 472
    iget-object p1, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 477
    :cond_6
    iget p1, p0, Lzui/widget/SlideView;->mHolderWidth:I

    if-le v6, p1, :cond_7

    move v6, p1

    goto :goto_0

    .line 479
    :cond_7
    iget p1, p0, Lzui/widget/SlideView;->mLeftSpaceWidth:I

    neg-int v2, p1

    if-ge v6, v2, :cond_8

    neg-int v6, p1

    .line 487
    :cond_8
    :goto_0
    invoke-virtual {p0, v6, v4}, Lzui/widget/SlideView;->scrollTo(II)V

    .line 488
    invoke-direct {p0, v6}, Lzui/widget/SlideView;->updateSlidingStatus(I)V

    .line 489
    iget p1, p0, Lzui/widget/SlideView;->mLeftSlideThreshold:I

    if-gt v6, p1, :cond_9

    iget p1, p0, Lzui/widget/SlideView;->mRightSlideThreshold:I

    neg-int p1, p1

    if-ge v6, p1, :cond_e

    :cond_9
    :goto_1
    move v4, v3

    goto :goto_4

    .line 496
    :cond_a
    invoke-virtual {p0}, Lzui/widget/SlideView;->startLeftSlidingFinishAnimation()V

    int-to-double v5, v2

    .line 497
    iget p1, p0, Lzui/widget/SlideView;->mHolderWidth:I

    int-to-double v7, p1

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_b

    goto :goto_2

    :cond_b
    move p1, v4

    .line 502
    :goto_2
    iget-object v2, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    if-gez v2, :cond_c

    .line 503
    iget-object v2, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    .line 507
    invoke-direct {p0, p1, v4}, Lzui/widget/SlideView;->quickScrollTo(II)V

    neg-int v2, v2

    .line 511
    invoke-virtual {p0, v2}, Lzui/widget/SlideView;->startBounceAnimation(I)V

    goto :goto_3

    .line 516
    :cond_c
    invoke-direct {p0, p1, v4}, Lzui/widget/SlideView;->smoothScrollTo(II)V

    .line 518
    :goto_3
    invoke-direct {p0, p1}, Lzui/widget/SlideView;->updateSlidingStatus(I)V

    .line 519
    iget v2, p0, Lzui/widget/SlideView;->mHolderWidth:I

    if-gt p1, v2, :cond_e

    goto :goto_1

    .line 449
    :cond_d
    iget-object p1, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_e

    .line 450
    iget-object p1, p0, Lzui/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 532
    :cond_e
    :goto_4
    iput v0, p0, Lzui/widget/SlideView;->mLastX:I

    .line 533
    iput v1, p0, Lzui/widget/SlideView;->mLastY:I

    return v4
.end method

.method public removeContentView()V
    .locals 2

    .line 198
    iget-object v0, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    if-ltz p1, :cond_0

    .line 606
    iget-object v0, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 182
    :cond_1
    iput-object p1, p0, Lzui/widget/SlideView;->mChildView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 188
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 191
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    :cond_4
    iget-object v1, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lzui/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 382
    :cond_0
    iput-object p1, p0, Lzui/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 384
    iget-object v0, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object p1, p0, Lzui/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setDividerHeight(I)V

    .line 386
    iget-object p1, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object p1, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 395
    iget-object v0, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 396
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    iget-object p1, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setDividerState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 659
    iget v0, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    if-eqz v0, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lzui/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    new-array p1, v2, [I

    const v2, 0x10100a7

    aput v2, p1, v1

    .line 664
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    const v2, 0x101009e

    aput v2, p1, v1

    .line 666
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 668
    :goto_0
    iget-object p1, p0, Lzui/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    iget-object v0, p0, Lzui/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setFocused(Z)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 714
    iget p1, p0, Lzui/widget/SlideView;->mBgPressedColor:I

    if-eq p1, v0, :cond_0

    .line 715
    iget p1, p0, Lzui/widget/SlideView;->mBgFocusedColor:I

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setBackgroundColor(I)V

    goto :goto_0

    .line 717
    :cond_0
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 718
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 721
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 725
    :cond_1
    iget p1, p0, Lzui/widget/SlideView;->mBgColor:I

    if-eq p1, v0, :cond_2

    .line 726
    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setBackgroundColor(I)V

    goto :goto_0

    .line 728
    :cond_2
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009d

    aput v2, v0, v1

    .line 729
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 730
    iget-object p1, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 734
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lzui/widget/SlideView;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009d
        0x101009c
        0x101009e
        0x101031b
    .end array-data
.end method

.method public setOnSlideListener(Lzui/widget/SlideView$OnSlideListener;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lzui/widget/SlideView;->mOnSlideListener:Lzui/widget/SlideView$OnSlideListener;

    return-void
.end method

.method public setOnSlideOutItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lzui/widget/SlideView;->mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnViewCheckedChangedListener(Lzui/widget/SlideView$OnViewCheckedChangeListener;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lzui/widget/SlideView;->mCheckedChangeListener:Lzui/widget/SlideView$OnViewCheckedChangeListener;

    return-void
.end method

.method public setOnViewPressedistener(Lzui/widget/SlideView$OnViewPressedListener;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lzui/widget/SlideView;->mOnViewPressedListener:Lzui/widget/SlideView$OnViewPressedListener;

    return-void
.end method

.method public setParams(Lzui/widget/SlideView$SlideViewParams;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lzui/widget/SlideView;->updateParams(Lzui/widget/SlideView$SlideViewParams;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 624
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 625
    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setDividerState(Z)V

    .line 626
    iget-object v0, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lzui/widget/SlideView;->mFixed:Z

    if-nez v1, :cond_3

    .line 631
    iget-boolean v1, p0, Lzui/widget/SlideView;->mLockPressUI:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 632
    iget v2, p0, Lzui/widget/SlideView;->mSlidingStatus:I

    if-nez v2, :cond_1

    .line 633
    iget v2, p0, Lzui/widget/SlideView;->mBgPressedColor:I

    if-eq v2, v1, :cond_0

    .line 634
    invoke-virtual {p0, v2}, Lzui/widget/SlideView;->setBackgroundColor(I)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lzui/widget/SlideView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 637
    iget-object v0, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 640
    :cond_1
    iget v0, p0, Lzui/widget/SlideView;->mBgColor:I

    if-eq v0, v1, :cond_2

    .line 641
    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->setBackgroundColor(I)V

    goto :goto_0

    .line 643
    :cond_2
    iget-object v0, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 644
    iget-object v0, p0, Lzui/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 649
    :cond_3
    :goto_0
    iget-object v0, p0, Lzui/widget/SlideView;->mOnViewPressedListener:Lzui/widget/SlideView$OnViewPressedListener;

    if-eqz v0, :cond_4

    .line 650
    invoke-interface {v0, p0, p1}, Lzui/widget/SlideView$OnViewPressedListener;->onPressed(Landroid/view/View;Z)V

    :cond_4
    return-void
.end method

.method public setSpaceHeight(I)V
    .locals 2

    .line 408
    iget v0, p0, Lzui/widget/SlideView;->mOriginalHeight:I

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lzui/widget/SlideView;->getHeight()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->mOriginalHeight:I

    .line 413
    :cond_0
    iget-object v0, p0, Lzui/widget/SlideView;->mSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 414
    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    iget-object v1, p0, Lzui/widget/SlideView;->mSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lzui/widget/SlideView;->mDownSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 418
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    iget-object p1, p0, Lzui/widget/SlideView;->mDownSpace:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lzui/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewChecked(Z)V
    .locals 1

    .line 328
    iget-boolean v0, p0, Lzui/widget/SlideView;->mEditing:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setViewFixed(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lzui/widget/SlideView;->mFixed:Z

    return-void
.end method

.method public setViewPosition(I)V
    .locals 0

    .line 343
    iput p1, p0, Lzui/widget/SlideView;->mPosition:I

    return-void
.end method

.method public showCheckItem(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lzui/widget/SlideView;->mEditing:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lzui/widget/SlideView;->mEditing:Z

    .line 231
    :goto_0
    iget-boolean v0, p0, Lzui/widget/SlideView;->mAnimating:Z

    if-nez v0, :cond_1

    .line 232
    invoke-direct {p0, p1}, Lzui/widget/SlideView;->setCheckMargin(Z)V

    :cond_1
    return-void
.end method

.method public shrink(Z)V
    .locals 1

    .line 367
    iget-object v0, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 370
    invoke-direct {p0, v0, v0}, Lzui/widget/SlideView;->smoothScrollTo(II)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0, v0, v0}, Lzui/widget/SlideView;->quickScrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startBounceAnimation(I)V
    .locals 10

    .line 884
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-float p1, p1

    .line 886
    iget v1, p0, Lzui/widget/SlideView;->mLeftSpaceWidth:I

    int-to-float v2, v1

    div-float v2, p1, v2

    iget v3, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_DISTANCE:F

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float v1, p1, v1

    .line 887
    iget v3, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_FACTOR_BASE:F

    mul-float/2addr v1, v3

    .line 889
    iget-object v3, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput p1, v6, v7

    neg-float p1, v2

    const/4 v2, 0x1

    aput p1, v6, v2

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 892
    iget v4, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_RUSH_DURATION:I

    int-to-long v8, v4

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 893
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 895
    iget-object v1, p0, Lzui/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v5, [F

    aput p1, v5, v7

    const/4 p1, 0x0

    aput p1, v5, v2

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 897
    iget v1, p0, Lzui/widget/SlideView;->BOUNCE_ANIM_BACK_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 898
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 899
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 900
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startEditModeAnimation(Z)V
    .locals 8

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lzui/widget/SlideView;->mAnimating:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lzui/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 288
    iget p1, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_START_MARGIN:I

    iput p1, p0, Lzui/widget/SlideView;->mCurrentPadding:I

    .line 289
    iget p1, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_END_MARGIN:I

    .line 290
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-wide/16 v3, 0x12c

    goto :goto_0

    .line 293
    :cond_0
    iget p1, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_END_MARGIN:I

    iput p1, p0, Lzui/widget/SlideView;->mCurrentPadding:I

    .line 294
    iget p1, p0, Lzui/widget/SlideView;->EDIT_ANIM_CHECK_START_MARGIN:I

    .line 295
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-wide/16 v3, 0x96

    .line 299
    :goto_0
    sget-object v5, Lzui/widget/SlideView;->CHECK_PADDING:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lzui/widget/SlideView;->mCurrentPadding:I

    aput v7, v6, v1

    aput p1, v6, v0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 300
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    iget-object v0, p0, Lzui/widget/SlideView;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startLeftSlidingFinishAnimation()V
    .locals 4

    .line 321
    sget-object v0, Lzui/widget/SlideView;->LEFT_SLIDING:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lzui/widget/SlideView;->mTranslateX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public updateBackground(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lzui/widget/SlideView;->mSpace:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v0, p0, Lzui/widget/SlideView;->mDownSpace:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
