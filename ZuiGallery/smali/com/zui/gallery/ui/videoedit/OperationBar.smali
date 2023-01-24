.class public Lcom/zui/gallery/ui/videoedit/OperationBar;
.super Landroid/view/View;
.source "OperationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$State;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;,
        Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;
    }
.end annotation


# static fields
.field public static final BAR_NONE:I = -0x1

.field private static MIN_DURATION:I = 0x5dc

.field public static final PLAYEDBAR_CURRENT:I = 0x1

.field public static final SLOW_BAR1_END:I = 0x5

.field public static final SLOW_BAR1_START:I = 0x4

.field public static final SLOW_BAR2_END:I = 0x7

.field public static final SLOW_BAR2_START:I = 0x6

.field public static final SLOW_REGION1:I = 0x8

.field public static final SLOW_REGION2:I = 0x9

.field private static final TOUCH_PADDING:I = 0x32

.field public static final TRIMBAR_END:I = 0x3

.field public static final TRIMBAR_START:I = 0x2


# instance fields
.field private BALL_HEIGHT:I

.field private BALL_TOP:I

.field private BALL_WIDTH:I

.field private MIN_DISTANCE:J

.field private NORMAL_SPEED_POINT_STEP:I

.field private PLAYED_BAR_HEIGHT:I

.field private PLAYED_BAR_TOP:I

.field private PLAYED_BAR_WIDTH:I

.field private SLOW_BAR_CAN_SPLIT_MIN_DISTANCE:I

.field private SLOW_BAR_MAX_HEIGHT:I

.field private SLOW_BAR_MIN_DISTACNE:I

.field private SLOW_BAR_MIN_DUARTION:I

.field private SLOW_BAR_MIN_HEIGHT:I

.field private SLOW_BAR_TOP:I

.field private SLOW_BAR_WIDTH:I

.field private SLOW_INDICATOR_SPACE_HEIGHT:I

.field private SLOW_SPEED_POINT_STEP:I

.field private TAG:Ljava/lang/String;

.field private THUMBNAIL_SPACE_HEIGHT:I

.field private TRIM_BAR_HEIGHT:I

.field private TRIM_BAR_TOP:I

.field private TRIM_BAR_WIDTH:I

.field private alpahAnim:Landroid/animation/ObjectAnimator;

.field private anim:Landroid/animation/ObjectAnimator;

.field private canDeleteSlowRegin:Z

.field private canSpliteSlowRegin:Z

.field private height:I

.field private volatile isReady:Z

.field private isSlowRegionClick:Z

.field private loadPercentText:Ljava/lang/String;

.field private mArrow_left:Landroid/graphics/Bitmap;

.field private mArrow_right:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mFrameBitmapRect:Landroid/graphics/Rect;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLoadingRect:Landroid/graphics/Rect;

.field private mNoneTrimRegionPain:Landroid/graphics/Paint;

.field private mNormalIndicator:Landroid/graphics/Bitmap;

.field private mPercentRectPaint:Landroid/graphics/Paint;

.field private mPercentTextPaint:Landroid/graphics/Paint;

.field private mPlayBar:Landroid/graphics/Bitmap;

.field private mPlayBarActivePaint:Landroid/graphics/Paint;

.field private mPlayBarPaint:Landroid/graphics/Paint;

.field private mPlayedBarLeft:J

.field private mPressedCorrection:J

.field private mPressedThumb:I

.field private mPressing:Z

.field private mProgressBar:Landroid/graphics/Rect;

.field private mSeekBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;

.field private mSlowBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

.field private mSlowBarLong:Landroid/graphics/Bitmap;

.field private mSlowBarPaint:Landroid/graphics/Paint;

.field private mSlowBarShort:Landroid/graphics/Bitmap;

.field private mSlowIndicator:Landroid/graphics/Bitmap;

.field private mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

.field private mSlowRegionPainFill:Landroid/graphics/Paint;

.field private mSlowRegionPainSolid:Landroid/graphics/Paint;

.field private mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

.field private mState:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

.field private mThumbnail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalTime:J

.field private mTranslatePaint:Landroid/graphics/Paint;

.field private mTrimBarActivitePaint:Landroid/graphics/Paint;

.field private mTrimBarPaint:Landroid/graphics/Paint;

.field private mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

.field private mTrimRegionPain:Landroid/graphics/Paint;

.field private mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

.field private mViewFrameBitmap:Landroid/graphics/Bitmap;

.field private volatile needDrawLoadPercent:Z

.field private res:Landroid/content/res/Resources;

.field private revert_offet:I

.field private showSlowBar:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "OperationBar"

    .line 32
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    .line 130
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OperationBar"

    .line 32
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    .line 130
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "OperationBar"

    .line 32
    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    const/4 p3, -0x1

    .line 76
    iput p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    .line 97
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 127
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    .line 130
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, "OperationBar"

    .line 32
    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    const/4 p3, -0x1

    .line 76
    iput p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    .line 97
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 127
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    .line 130
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->showSlowBar:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressing:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/videoedit/OperationBar;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedCorrection:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedCorrection:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/videoedit/OperationBar;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->starTrimBarAlphaAnim(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->collapseSlowBar()V

    return-void
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->startScaleSlowBarAnim(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isSlowRegionClick:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSeekBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    return p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_WIDTH:I

    return p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/ui/videoedit/OperationBar;JJJJ)J
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->clampPosition(JJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->updateTimeFromPos()V

    return-void
.end method

.method static synthetic access$2700(Lcom/zui/gallery/ui/videoedit/OperationBar;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/ui/videoedit/OperationBar;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->MIN_DISTANCE:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_DISTACNE:I

    return p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Landroid/graphics/Rect;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    return p0
.end method

.method static synthetic access$3200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/zui/gallery/ui/videoedit/OperationBar;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/zui/gallery/ui/videoedit/OperationBar;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    return p0
.end method

.method static synthetic access$3600(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    return p0
.end method

.method static synthetic access$3700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_CAN_SPLIT_MIN_DISTANCE:I

    return p0
.end method

.method static synthetic access$3800(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    return p0
.end method

.method static synthetic access$702(Lcom/zui/gallery/ui/videoedit/OperationBar;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    return p1
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/videoedit/OperationBar;II)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->whichPressed(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    return-object p0
.end method

.method private clampPosition(JJJJ)J
    .locals 0

    sub-long/2addr p7, p3

    sub-long/2addr p5, p3

    .line 731
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p7, p8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private collapseSlowBar()V
    .locals 3

    const/4 v0, 0x0

    .line 1203
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->startScaleSlowBarAnim(Z)V

    .line 1204
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    if-eqz v2, :cond_0

    .line 1205
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isSlowRegionClick:Z

    .line 1206
    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateActive(Z)V

    .line 1207
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    invoke-interface {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;->onNoneReginClick()V

    :cond_0
    return-void
.end method

.method private drawBG(Landroid/graphics/Canvas;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrameThumbnail(Landroid/graphics/Canvas;)V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mFrameBitmapRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawIndicatorSpace(Landroid/graphics/Canvas;)V
    .locals 9

    .line 551
    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->width:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 553
    :cond_0
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_WIDTH:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    .line 554
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 555
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 556
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    if-lt v4, v5, :cond_8

    .line 558
    :cond_1
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 561
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 562
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 563
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 564
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 565
    :cond_4
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 567
    :cond_5
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 568
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_6

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 569
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 570
    :cond_6
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 573
    :cond_7
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 576
    :cond_8
    :goto_0
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_WIDTH:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 578
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$600(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 579
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    if-lt v4, v5, :cond_9

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 580
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    sub-int/2addr v5, v7

    if-gt v4, v5, :cond_9

    .line 581
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    int-to-float v7, v4

    iget v8, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 584
    :cond_9
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 585
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    if-lt v4, v5, :cond_a

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 586
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 587
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 591
    :cond_a
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_SPEED_POINT_STEP:I

    add-int/2addr v3, v4

    .line 592
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->NORMAL_SPEED_POINT_STEP:I

    add-int/2addr v2, v4

    .line 593
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_HEIGHT:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    if-le v4, v0, :cond_0

    return-void
.end method

.method private drawLoadPercentRect(Landroid/graphics/Canvas;)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mLoadingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPercentRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 522
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->loadPercentText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 523
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    add-int/lit8 v2, v2, 0x50

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawSlowBar(Landroid/graphics/Canvas;)V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$400(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 716
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$500(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawSlowRegion(Landroid/graphics/Canvas;)V
    .locals 7

    .line 705
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 708
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 709
    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarHeight()F

    move-result v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionPainFill:Landroid/graphics/Paint;

    move-object v1, p1

    .line 706
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawThumbnailSpace(Landroid/graphics/Canvas;)V
    .locals 0

    .line 700
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawFrameThumbnail(Landroid/graphics/Canvas;)V

    .line 701
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawTrimRegion(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawTrimRegion(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 633
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarPaint:Landroid/graphics/Paint;

    .line 634
    iget-object v2, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isActivte()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 636
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    :cond_0
    move-object v9, v1

    .line 638
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v10, v1

    add-long/2addr v4, v10

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 646
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v10, v1

    add-long/2addr v4, v10

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_2

    .line 654
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v11, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v13, v1

    add-long/2addr v11, v13

    sub-long/2addr v11, v3

    long-to-float v4, v11

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v6, v1

    iget-object v11, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 658
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 659
    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 662
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 663
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->width:I

    int-to-float v4, v4

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 668
    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v11, v1

    add-long/2addr v4, v11

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 673
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->width:I

    int-to-float v4, v4

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 679
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v2, v2, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 680
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 681
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 679
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 683
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_4

    .line 684
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v2, v2, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    .line 685
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    add-long/2addr v2, v5

    long-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 686
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 684
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    if-nez v8, :cond_5

    .line 691
    iget-boolean v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    if-nez v1, :cond_6

    .line 692
    :cond_5
    iget-object v4, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBarActivePaint:Landroid/graphics/Paint;

    .line 694
    :cond_6
    iget-boolean v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    if-nez v1, :cond_7

    .line 695
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    iget-wide v2, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    long-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_TOP:I

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private getBarPosFromTime(J)J
    .locals 4

    .line 428
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 429
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-long p1, p1

    return-wide p1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    .line 431
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    div-long/2addr v1, p1

    long-to-int p1, v1

    add-int/2addr v0, p1

    int-to-long p1, v0

    return-wide p1
.end method

.method private getSeekTime(JJ)J
    .locals 0

    add-long/2addr p1, p3

    .line 833
    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iget-wide p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    mul-long/2addr p1, p3

    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    .line 834
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method private inEndTrim(II)Z
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isPressEndBar(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inPlayBar(II)Z
    .locals 8

    int-to-long v0, p1

    .line 789
    iget-wide v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    const-wide/16 v4, 0x32

    sub-long v6, v2, v4

    cmp-long p1, v0, v6

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_WIDTH:I

    int-to-long v6, p1

    add-long/2addr v2, v6

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_TOP:I

    if-lt p2, p1, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_HEIGHT:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private inSlowBar1End(II)Z
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isPressBarEnd(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar1Region(II)Z
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isPressRegion(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar1Start(II)Z
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isPressBarStart(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar2End(II)Z
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isPressBarEnd(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar2Region(II)Z
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isPressRegion(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar2Start(II)Z
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isPressBarStart(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inStartTrim(II)Z
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isPressStartBar(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 157
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v0, 0x7f060383

    .line 159
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    mul-int/lit8 p2, p2, 0x2

    int-to-long v0, p2

    .line 160
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->MIN_DISTANCE:J

    .line 161
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v0, 0x7f06014f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->width:I

    .line 162
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v0, 0x7f06014e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->height:I

    .line 163
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->width:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->height:I

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    .line 164
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operation bar width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mThumbnail:Ljava/util/List;

    .line 167
    new-instance p2, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;Lcom/zui/gallery/ui/videoedit/OperationBar$1;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    .line 169
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602f0

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_INDICATOR_SPACE_HEIGHT:I

    .line 170
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f06033f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->THUMBNAIL_SPACE_HEIGHT:I

    .line 172
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0702f8

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    .line 173
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0702f9

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    .line 174
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_WIDTH:I

    .line 175
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_HEIGHT:I

    .line 176
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_INDICATOR_SPACE_HEIGHT:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    .line 177
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602f3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 178
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    .line 180
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f090028

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->NORMAL_SPEED_POINT_STEP:I

    .line 181
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f090031

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_SPEED_POINT_STEP:I

    .line 183
    iget p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_INDICATOR_SPACE_HEIGHT:I

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    .line 184
    iget p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->THUMBNAIL_SPACE_HEIGHT:I

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    .line 186
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0702f3

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    .line 187
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f06028c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 188
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_WIDTH:I

    .line 189
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_HEIGHT:I

    .line 190
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_TOP:I

    .line 192
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602f2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    .line 193
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602ed

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MAX_HEIGHT:I

    .line 194
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602ef

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_HEIGHT:I

    .line 195
    iget p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_TOP:I

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v2, 0x7f0602f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    .line 197
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f090032

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_DUARTION:I

    .line 198
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602ee

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_DISTACNE:I

    mul-int/lit8 p2, p2, 0x2

    .line 199
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_CAN_SPLIT_MIN_DISTANCE:I

    .line 202
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fa

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    .line 203
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fb

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    .line 204
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_WIDTH:I

    .line 205
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_HEIGHT:I

    .line 207
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f070081

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 208
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f070082

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    .line 210
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;

    invoke-direct {v1, p0, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;Lcom/zui/gallery/ui/videoedit/OperationBar$1;)V

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 211
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mLoadingRect:Landroid/graphics/Rect;

    .line 212
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initPaint(Landroid/content/res/Resources;)V

    return-void
.end method

.method private initPaint(Landroid/content/res/Resources;)V
    .locals 5

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBarPaint:Landroid/graphics/Paint;

    const v1, 0x7f05016f

    .line 217
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBarActivePaint:Landroid/graphics/Paint;

    const v1, 0x7f090029

    .line 219
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarPaint:Landroid/graphics/Paint;

    const v1, 0x7f050216

    .line 221
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    const v1, 0x7f050215

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    const v2, 0x7f050217

    .line 231
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarPaint:Landroid/graphics/Paint;

    const v2, 0x7f0501a9

    .line 233
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionPainFill:Landroid/graphics/Paint;

    const v2, 0x7f0501aa

    .line 235
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionPainSolid:Landroid/graphics/Paint;

    .line 237
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionPainSolid:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionPainSolid:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTranslatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPercentRectPaint:Landroid/graphics/Paint;

    .line 244
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f050220

    .line 246
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initTrimTimeIfNeeded()V
    .locals 4

    .line 450
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v0, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    :cond_0
    return-void
.end method

.method private starTrimBarAlphaAnim(Z)V
    .locals 4

    .line 1251
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    :goto_0
    if-eqz p1, :cond_1

    if-lt v0, v1, :cond_2

    .line 1256
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1257
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1258
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    goto :goto_1

    :cond_1
    if-gt v0, v1, :cond_2

    .line 1262
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1263
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1264
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    .line 1268
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    .line 1269
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1271
    :cond_3
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    .line 1272
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1273
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1274
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/gallery/ui/videoedit/OperationBar$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/videoedit/OperationBar$2;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1283
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startScaleSlowBarAnim(Z)V
    .locals 4

    .line 1214
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-nez v0, :cond_0

    return-void

    .line 1216
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarHeight()F

    move-result v0

    if-eqz p1, :cond_1

    .line 1217
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MAX_HEIGHT:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_HEIGHT:I

    :goto_0
    int-to-float v1, v1

    if-eqz p1, :cond_2

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_3

    .line 1221
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarHeight(F)V

    .line 1222
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    goto :goto_1

    :cond_2
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_3

    .line 1226
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarHeight(F)V

    .line 1227
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    .line 1231
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    .line 1232
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1234
    :cond_4
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    .line 1235
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1236
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->anim:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1237
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->anim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/gallery/ui/videoedit/OperationBar$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/videoedit/OperationBar$1;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1245
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private update(Z)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initTrimTimeIfNeeded()V

    .line 457
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->updatePlayedBarAndTrimBarFromTime(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    return-void
.end method

.method private updateBarPosition()V
    .locals 11

    .line 367
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->BALL_WIDTH:I

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_SPEED_POINT_STEP:I

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->revert_offet:I

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    .line 369
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->updateIsValid(Z)V

    if-eqz v0, :cond_4

    .line 373
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    iget-wide v6, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getBarPosFromTime(J)J

    move-result-wide v4

    iget v6, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    .line 377
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getBarPosFromTime(J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    .line 378
    iget-wide v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-wide v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    iput-wide v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    goto :goto_1

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    .line 384
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    .line 386
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

    if-eqz v1, :cond_5

    .line 387
    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v4, v4, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    iget-object v6, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;->onTrimingMove(JJ)V

    goto :goto_2

    .line 390
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    const-string v4, "duration has not set "

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    .line 392
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    .line 394
    :cond_5
    :goto_2
    iget-wide v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getBarPosFromTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    .line 395
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v1, :cond_9

    .line 396
    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_8

    .line 415
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getBarPosFromTime(J)J

    move-result-wide v1

    .line 416
    iget-object v3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    iget-wide v3, v3, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    invoke-direct {p0, v3, v4}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getBarPosFromTime(J)J

    move-result-wide v3

    .line 417
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$400(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v5

    long-to-float v6, v1

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    int-to-float v8, v7

    iget v9, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    int-to-long v9, v9

    add-long/2addr v1, v9

    long-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {v5, v6, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 419
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$500(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v1

    long-to-float v2, v3

    iget v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    int-to-float v6, v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    int-to-long v7, v7

    add-long/2addr v3, v7

    long-to-float v3, v3

    iget v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 397
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 398
    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    .line 399
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$400(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v5

    int-to-float v6, v1

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    int-to-float v8, v7

    iget v9, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    add-int/2addr v1, v9

    int-to-float v1, v1

    iget v9, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v5, v6, v8, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 401
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$500(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v1

    int-to-float v5, v4

    iget v6, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_TOP:I

    int-to-float v7, v6

    iget v8, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_WIDTH:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    iget v8, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v1, v5, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v0, :cond_8

    .line 404
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 405
    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v4

    int-to-long v4, v4

    .line 404
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    .line 406
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 407
    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v4

    int-to-long v4, v4

    .line 406
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    .line 408
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    if-eqz v1, :cond_8

    .line 409
    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    iget-wide v2, v2, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    iget-wide v4, v4, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;->onSlowTimeChange(JJ)V

    .line 423
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateValid(Z)V

    :cond_9
    return-void
.end method

.method private updatePlayedBarAndTrimBarFromTime(Z)V
    .locals 11

    .line 436
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 438
    iget-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 439
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getBarPosFromTime(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    const-wide/16 v5, 0x0

    .line 440
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v0, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v7, p1

    add-long/2addr v7, v0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v0, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_WIDTH:I

    int-to-long v9, p1

    sub-long v9, v0, v9

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/zui/gallery/ui/videoedit/OperationBar;->clampPosition(JJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->updateBarPosition()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTimeFromPos()V
    .locals 5

    .line 838
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayedBarLeft:J

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    .line 839
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget v3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    .line 840
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    .line 841
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$600(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    .line 843
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/OperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    :cond_0
    return-void
.end method

.method private whichPressed(II)I
    .locals 1

    .line 809
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inStartTrim(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 811
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inEndTrim(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 814
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inPlayBar(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 816
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inSlowBar1Start(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 818
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inSlowBar1End(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 820
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inSlowBar1Region(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x8

    return p1

    .line 822
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inSlowBar2Start(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 824
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inSlowBar2End(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    .line 826
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->inSlowBar2Region(II)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addThumbnail(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mThumbnail:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    return-void
.end method

.method public declared-synchronized deleteSlowRegin(I)V
    .locals 2

    monitor-enter p0

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-nez v0, :cond_0

    goto :goto_1

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 877
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->exchange(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)V

    .line 878
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateActive(Z)V

    .line 879
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateValid(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 881
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateValid(Z)V

    .line 883
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :cond_3
    monitor-exit p0

    return-void

    .line 874
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initDuration(J)V
    .locals 4

    .line 267
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    .line 268
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDuration: mTotalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    sget v2, Lcom/zui/gallery/ui/videoedit/OperationBar;->MIN_DURATION:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->PLAYED_BAR_WIDTH:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->MIN_DISTANCE:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x5dc

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    .line 278
    iget-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->MIN_DISTANCE:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    .line 279
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->MIN_DISTANCE:J

    .line 285
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->updateBarPosition()V

    return-void
.end method

.method public initPlayBar(J)V
    .locals 0

    .line 319
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    return-void
.end method

.method public initReady(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    .line 301
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    return-void
.end method

.method public initSlowBar(IIZ)V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 338
    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    .line 339
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    .line 340
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {p1, p3}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$202(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;Z)Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 342
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->startScaleSlowBarAnim(Z)V

    :cond_0
    return-void
.end method

.method public initSlowTime(II)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 261
    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    .line 262
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    :cond_0
    return-void
.end method

.method public initTrimBar(JJZ)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    if-eqz v0, :cond_1

    .line 324
    iput-wide p1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    .line 325
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iput-wide p3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-static {v0, p5}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->access$302(Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;Z)Z

    if-eqz p5, :cond_0

    .line 328
    iget-object p5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    :cond_0
    iget-object p5, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

    if-eqz p5, :cond_1

    .line 331
    invoke-interface {p5, p1, p2, p3, p4}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;->onTrimingMove(JJ)V

    :cond_1
    return-void
.end method

.method public isSlowBarActivie()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->access$200(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrimBarActivie()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isActivte()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public neeShowLoadPercent(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    .line 349
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 530
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 532
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->showSlowBar:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawBG(Landroid/graphics/Canvas;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawSlowRegion(Landroid/graphics/Canvas;)V

    .line 536
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawThumbnailSpace(Landroid/graphics/Canvas;)V

    .line 537
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->showSlowBar:Z

    if-eqz v0, :cond_1

    .line 538
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawIndicatorSpace(Landroid/graphics/Canvas;)V

    .line 539
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawSlowBar(Landroid/graphics/Canvas;)V

    .line 541
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    if-eqz v0, :cond_2

    .line 542
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->drawLoadPercentRect(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 488
    sget-object v0, Lcom/zui/gallery/ui/videoedit/OperationBar$State;->PAUSED:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mState:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 479
    sget-object v0, Lcom/zui/gallery/ui/videoedit/OperationBar$State;->PLAYING:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mState:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

    .line 480
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->collapseSlowBar()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 890
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->isReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    return v1

    .line 895
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->needDrawLoadPercent:Z

    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    return v1

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    .line 901
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressing:Z

    const/4 v0, -0x1

    .line 902
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPressedThumb:I

    .line 903
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->isChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 905
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->starTrimBarAlphaAnim(Z)V

    .line 907
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    :cond_3
    return v1
.end method

.method public release()V
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1290
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    .line 1291
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1292
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1294
    :cond_1
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    .line 1295
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1296
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1298
    :cond_2
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 1299
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1300
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1302
    :cond_3
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    .line 1303
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1304
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1306
    :cond_4
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    .line 1307
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarShort:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1308
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1310
    :cond_5
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarShort:Landroid/graphics/Bitmap;

    .line 1311
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 1312
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1314
    :cond_6
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    .line 1315
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mThumbnail:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 1318
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public setSeekBarListerner(Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSeekBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;

    return-void
.end method

.method public setSlowBarLitener(Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    return-void
.end method

.method public setTimes(JJJJZ)V
    .locals 2

    .line 462
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTotalTime:J

    cmp-long p3, v0, p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide p3, p3, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    cmp-long p3, p3, p5

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iget-wide p3, p3, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    cmp-long p3, p3, p7

    if-nez p3, :cond_0

    return-void

    .line 468
    :cond_0
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mCurrentTime:J

    .line 469
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iput-wide p5, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    .line 470
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    iput-wide p7, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    .line 471
    invoke-direct {p0, p9}, Lcom/zui/gallery/ui/videoedit/OperationBar;->update(Z)V

    return-void
.end method

.method public setTrimListener(Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

    return-void
.end method

.method public setViewFrameBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 294
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    .line 295
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->width:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v3, v1

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mFrameBitmapRect:Landroid/graphics/Rect;

    .line 296
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    return-void
.end method

.method public showEnded()V
    .locals 1

    .line 475
    sget-object v0, Lcom/zui/gallery/ui/videoedit/OperationBar$State;->ENDED:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mState:Lcom/zui/gallery/ui/videoedit/OperationBar$State;

    return-void
.end method

.method public showSlowBar(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->showSlowBar:Z

    if-eqz p1, :cond_0

    .line 254
    new-instance p1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    .line 255
    new-instance p1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    :cond_0
    return-void
.end method

.method public declared-synchronized splitSlowRegin()V
    .locals 0

    monitor-enter p0

    .line 870
    monitor-exit p0

    return-void
.end method

.method public updateLoadPercent(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    if-ltz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->res:Landroid/content/res/Resources;

    const v2, 0x7f10019b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr p1, v5

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->loadPercentText:Ljava/lang/String;

    .line 359
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->mLoadingRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_WIDTH:I

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_TOP:I

    iget v3, p0, Lcom/zui/gallery/ui/videoedit/OperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    return-void
.end method
