.class public Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;
.super Landroid/view/View;
.source "MicroviewOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;,
        Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;
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

.field private mSeekBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

.field private mSlowBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

.field private mSlowBarLong:Landroid/graphics/Bitmap;

.field private mSlowBarPaint:Landroid/graphics/Paint;

.field private mSlowBarShort:Landroid/graphics/Bitmap;

.field private mSlowIndicator:Landroid/graphics/Bitmap;

.field private mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

.field private mSlowRegionPainFill:Landroid/graphics/Paint;

.field private mSlowRegionPainSolid:Landroid/graphics/Paint;

.field private mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

.field private mState:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

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

.field private mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

.field private mTrimRegionPain:Landroid/graphics/Paint;

.field private mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

.field private mViewFrameBitmap:Landroid/graphics/Bitmap;

.field private volatile needDrawLoadPercent:Z

.field private onlyShowProgressBar:Z

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

    .line 150
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "OperationBar"

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    .line 129
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    .line 250
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OperationBar"

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    .line 129
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    .line 250
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "OperationBar"

    .line 31
    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    const/4 p3, -0x1

    .line 75
    iput p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    .line 96
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 126
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    .line 129
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    .line 250
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, "OperationBar"

    .line 31
    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    const/4 p3, -0x1

    .line 75
    iput p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    .line 96
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 126
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    .line 129
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    .line 250
    iput-boolean p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->showSlowBar:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressing:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedCorrection:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedCorrection:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->updateTimeFromPos()V

    return-void
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->starTrimBarAlphaAnim(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->collapseSlowBar()V

    return-void
.end method

.method static synthetic access$2000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->startScaleSlowBarAnim(Z)V

    return-void
.end method

.method static synthetic access$2102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isSlowRegionClick:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSeekBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    return p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    return p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;JJJJ)J
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->clampPosition(JJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->MIN_DISTANCE:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_DISTACNE:I

    return p0
.end method

.method static synthetic access$3100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Landroid/graphics/Rect;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    return p0
.end method

.method static synthetic access$3300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Landroid/graphics/Paint;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Landroid/graphics/Paint;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    return p0
.end method

.method static synthetic access$3700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    return p0
.end method

.method static synthetic access$3800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_CAN_SPLIT_MIN_DISTANCE:I

    return p0
.end method

.method static synthetic access$3900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    return p0
.end method

.method static synthetic access$702(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    return p1
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;II)I
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->whichPressed(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    return-object p0
.end method

.method private clampPosition(JJJJ)J
    .locals 0

    sub-long/2addr p7, p3

    sub-long/2addr p5, p3

    .line 743
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p7, p8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private collapseSlowBar()V
    .locals 3

    const/4 v0, 0x0

    .line 1237
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->startScaleSlowBarAnim(Z)V

    .line 1238
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    if-eqz v2, :cond_0

    .line 1239
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isSlowRegionClick:Z

    .line 1240
    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateActive(Z)V

    .line 1241
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    invoke-interface {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;->onNoneReginClick()V

    :cond_0
    return-void
.end method

.method private drawBG(Landroid/graphics/Canvas;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrameThumbnail(Landroid/graphics/Canvas;)V
    .locals 5

    .line 632
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->width:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 635
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawIndicatorSpace(Landroid/graphics/Canvas;)V
    .locals 9

    .line 559
    iget v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->width:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 561
    :cond_0
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_WIDTH:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    .line 562
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 563
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 564
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    if-lt v4, v5, :cond_8

    .line 566
    :cond_1
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 569
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 570
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 571
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 572
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 573
    :cond_4
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 575
    :cond_5
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 576
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    if-le v4, v5, :cond_6

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 577
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 578
    :cond_6
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 581
    :cond_7
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 584
    :cond_8
    :goto_0
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_WIDTH:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 586
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 587
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    if-lt v4, v5, :cond_9

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 588
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    sub-int/2addr v5, v7

    if-gt v4, v5, :cond_9

    .line 589
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    int-to-float v7, v4

    iget v8, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 592
    :cond_9
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 593
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    if-lt v4, v5, :cond_a

    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 594
    invoke-virtual {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 595
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 599
    :cond_a
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_SPEED_POINT_STEP:I

    add-int/2addr v3, v4

    .line 600
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->NORMAL_SPEED_POINT_STEP:I

    add-int/2addr v2, v4

    .line 601
    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_HEIGHT:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    if-le v4, v0, :cond_0

    return-void
.end method

.method private drawLoadPercentRect(Landroid/graphics/Canvas;)V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mLoadingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPercentRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 530
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->loadPercentText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    add-int/lit8 v2, v2, 0x50

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawSlowBar(Landroid/graphics/Canvas;)V
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 728
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawSlowRegion(Landroid/graphics/Canvas;)V
    .locals 7

    .line 717
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 720
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 721
    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarHeight()F

    move-result v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionPainFill:Landroid/graphics/Paint;

    move-object v1, p1

    .line 718
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawThumbnailSpace(Landroid/graphics/Canvas;)V
    .locals 0

    .line 712
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawFrameThumbnail(Landroid/graphics/Canvas;)V

    .line 713
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawTrimRegion(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawTrimRegion(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 641
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarPaint:Landroid/graphics/Paint;

    .line 642
    iget-object v2, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isActivte()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 644
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    :cond_0
    move-object v9, v1

    .line 646
    iget-boolean v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    if-nez v1, :cond_4

    .line 647
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v11, v1

    add-long/2addr v4, v11

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 655
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v11, v1

    add-long/2addr v4, v11

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v8, :cond_2

    .line 663
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v13, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v10, v1

    add-long/2addr v13, v10

    sub-long/2addr v13, v3

    long-to-float v4, v13

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v6, v1

    iget-object v10, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 667
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 668
    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 671
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 672
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->width:I

    int-to-float v4, v4

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 677
    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v10, v1

    add-long/2addr v4, v10

    long-to-float v4, v4

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 682
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    long-to-float v2, v1

    iget v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    int-to-float v3, v1

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->width:I

    int-to-float v4, v4

    iget v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 688
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v2, v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 689
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 690
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 688
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 692
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 693
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v2, v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    .line 694
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v4, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 695
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 693
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v8, :cond_6

    .line 701
    iget-boolean v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v10, v4

    goto :goto_3

    .line 702
    :cond_6
    :goto_2
    iget-object v10, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBarActivePaint:Landroid/graphics/Paint;

    .line 704
    :goto_3
    iget-boolean v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    if-nez v1, :cond_7

    .line 706
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->updatePlayBar()V

    .line 707
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    iget-wide v2, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    long-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_TOP:I

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private getBarPosFromTime(J)J
    .locals 4

    .line 436
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 437
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-long p1, p1

    return-wide p1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    .line 439
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    div-long/2addr v1, p1

    long-to-int p1, v1

    add-int/2addr v0, p1

    int-to-long p1, v0

    return-wide p1
.end method

.method private getSeekTime(JJ)J
    .locals 0

    add-long/2addr p1, p3

    .line 848
    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iget-wide p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    mul-long/2addr p1, p3

    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    .line 849
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method private inEndTrim(II)Z
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isPressEndBar(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inPlayBar(II)Z
    .locals 8

    int-to-long v0, p1

    .line 801
    iget-wide v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    const-wide/16 v4, 0x32

    sub-long v6, v2, v4

    cmp-long p1, v0, v6

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    int-to-long v6, p1

    add-long/2addr v2, v6

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_TOP:I

    if-lt p2, p1, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_HEIGHT:I

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

    .line 756
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isPressBarEnd(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar1Region(II)Z
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isPressRegion(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar1Start(II)Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isPressBarStart(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar2End(II)Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isPressBarEnd(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar2Region(II)Z
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isPressRegion(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inSlowBar2Start(II)Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isPressBarStart(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private inStartTrim(II)Z
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isPressStartBar(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 155
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v0, 0x7f060249

    .line 157
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    mul-int/lit8 p2, p2, 0x2

    int-to-long v0, p2

    .line 158
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->MIN_DISTANCE:J

    .line 159
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v0, 0x7f060246

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->width:I

    .line 160
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v0, 0x7f060245

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->height:I

    .line 161
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->width:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->height:I

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    .line 162
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operation bar width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mThumbnail:Ljava/util/List;

    .line 165
    new-instance p2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    .line 167
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f060247

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_INDICATOR_SPACE_HEIGHT:I

    .line 168
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f060248

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->THUMBNAIL_SPACE_HEIGHT:I

    .line 170
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0702f8

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    .line 171
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0702f9

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    .line 172
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_WIDTH:I

    .line 173
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_HEIGHT:I

    .line 174
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_INDICATOR_SPACE_HEIGHT:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    .line 175
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602f3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 176
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    .line 178
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f090028

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->NORMAL_SPEED_POINT_STEP:I

    .line 179
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f090031

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_SPEED_POINT_STEP:I

    .line 181
    iget p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_INDICATOR_SPACE_HEIGHT:I

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    .line 182
    iget p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->THUMBNAIL_SPACE_HEIGHT:I

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    .line 184
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0702bb

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    .line 185
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f06028c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 186
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    .line 187
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_HEIGHT:I

    .line 188
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_TOP:I

    .line 190
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602f2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    .line 191
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602ed

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MAX_HEIGHT:I

    .line 192
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602ef

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_HEIGHT:I

    .line 193
    iget p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_TOP:I

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v2, 0x7f0602f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    .line 195
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f090032

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_DUARTION:I

    .line 196
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0602ee

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_DISTACNE:I

    mul-int/lit8 p2, p2, 0x2

    .line 197
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_CAN_SPLIT_MIN_DISTANCE:I

    .line 200
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fa

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    .line 201
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fb

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    .line 202
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_WIDTH:I

    .line 203
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_HEIGHT:I

    .line 205
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f070081

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 206
    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f070082

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    .line 208
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;

    invoke-direct {v1, p0, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;)V

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 209
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    iget v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mLoadingRect:Landroid/graphics/Rect;

    .line 210
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initPaint(Landroid/content/res/Resources;)V

    return-void
.end method

.method private initPaint(Landroid/content/res/Resources;)V
    .locals 5

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBarPaint:Landroid/graphics/Paint;

    const v1, 0x7f05016f

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBarActivePaint:Landroid/graphics/Paint;

    const v1, 0x7f090029

    .line 217
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarPaint:Landroid/graphics/Paint;

    const v1, 0x7f050216

    .line 219
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    const v1, 0x7f050215

    .line 221
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNoneTrimRegionPain:Landroid/graphics/Paint;

    const v2, 0x7f050217

    .line 229
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarPaint:Landroid/graphics/Paint;

    const v2, 0x7f0501a9

    .line 231
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionPainFill:Landroid/graphics/Paint;

    const v2, 0x7f0501aa

    .line 233
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionPainSolid:Landroid/graphics/Paint;

    .line 235
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionPainSolid:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionPainSolid:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTranslatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPercentRectPaint:Landroid/graphics/Paint;

    .line 242
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f050220

    .line 244
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 246
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPercentTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initTrimTimeIfNeeded()V
    .locals 4

    .line 458
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v0, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    :cond_0
    return-void
.end method

.method private starTrimBarAlphaAnim(Z)V
    .locals 4

    .line 1285
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

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

    .line 1290
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1291
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1292
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    goto :goto_1

    :cond_1
    if-gt v0, v1, :cond_2

    .line 1296
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1297
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimRegionPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1298
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    .line 1302
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    .line 1303
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1305
    :cond_3
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    .line 1306
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1307
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1308
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$2;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1317
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->alpahAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startScaleSlowBarAnim(Z)V
    .locals 4

    .line 1248
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-nez v0, :cond_0

    return-void

    .line 1250
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarHeight()F

    move-result v0

    if-eqz p1, :cond_1

    .line 1251
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MAX_HEIGHT:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_HEIGHT:I

    :goto_0
    int-to-float v1, v1

    if-eqz p1, :cond_2

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_3

    .line 1255
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarHeight(F)V

    .line 1256
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    goto :goto_1

    :cond_2
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_3

    .line 1260
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarHeight(F)V

    .line 1261
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    .line 1265
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    .line 1266
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1268
    :cond_4
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    .line 1269
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1270
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->anim:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1271
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->anim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1279
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private update(Z)V
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initTrimTimeIfNeeded()V

    .line 465
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->updatePlayedBarAndTrimBarFromTime(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return-void
.end method

.method private updateBarPosition()V
    .locals 11

    .line 375
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->BALL_WIDTH:I

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_SPEED_POINT_STEP:I

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->revert_offet:I

    .line 376
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    .line 377
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->updateIsValid(Z)V

    if-eqz v0, :cond_4

    .line 381
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    iget-wide v6, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getBarPosFromTime(J)J

    move-result-wide v4

    iget v6, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    .line 385
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getBarPosFromTime(J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    .line 386
    iget-wide v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-wide v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    iput-wide v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    goto :goto_1

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    .line 392
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    .line 394
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

    if-eqz v1, :cond_5

    .line 395
    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v4, v4, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    iget-object v6, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;->onTrimingMove(JJ)V

    goto :goto_2

    .line 398
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    const-string v4, "duration has not set "

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    .line 400
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    .line 402
    :cond_5
    :goto_2
    iget-wide v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getBarPosFromTime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    .line 403
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v1, :cond_9

    .line 404
    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    iget-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_8

    .line 423
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    iget-wide v1, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getBarPosFromTime(J)J

    move-result-wide v1

    .line 424
    iget-object v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    iget-wide v3, v3, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    invoke-direct {p0, v3, v4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getBarPosFromTime(J)J

    move-result-wide v3

    .line 425
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v5

    long-to-float v6, v1

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    int-to-float v8, v7

    iget v9, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    int-to-long v9, v9

    add-long/2addr v1, v9

    long-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {v5, v6, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v1

    long-to-float v2, v3

    iget v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    int-to-float v6, v5

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    int-to-long v7, v7

    add-long/2addr v3, v7

    long-to-float v3, v3

    iget v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 405
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 406
    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    .line 407
    iget-object v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v5

    int-to-float v6, v1

    iget v7, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    int-to-float v8, v7

    iget v9, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    add-int/2addr v1, v9

    int-to-float v1, v1

    iget v9, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v5, v6, v8, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 409
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;

    move-result-object v1

    int-to-float v5, v4

    iget v6, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_TOP:I

    int-to-float v7, v6

    iget v8, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_WIDTH:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    iget v8, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->SLOW_BAR_MIN_HEIGHT:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v1, v5, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v0, :cond_8

    .line 412
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 413
    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v4

    int-to-long v4, v4

    .line 412
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    .line 414
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 415
    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v4

    int-to-long v4, v4

    .line 414
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    .line 416
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    if-eqz v1, :cond_8

    .line 417
    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    iget-wide v2, v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    iget-object v4, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    iget-wide v4, v4, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;->onSlowTimeChange(JJ)V

    .line 431
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateValid(Z)V

    :cond_9
    return-void
.end method

.method private updatePlayedBarAndTrimBarFromTime(Z)V
    .locals 11

    .line 444
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 446
    iget-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getBarPosFromTime(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    const-wide/16 v5, 0x0

    .line 448
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v0, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v7, p1

    add-long/2addr v7, v0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v0, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    int-to-long v9, p1

    sub-long v9, v0, v9

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->clampPosition(JJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->updateBarPosition()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTimeFromPos()V
    .locals 5

    .line 853
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    .line 854
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    .line 855
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    .line 856
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    .line 858
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->getSeekTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    :cond_0
    return-void
.end method

.method private whichPressed(II)I
    .locals 2

    .line 821
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 824
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inStartTrim(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 826
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inEndTrim(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 829
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inPlayBar(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 831
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inSlowBar1Start(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 833
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inSlowBar1End(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 835
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inSlowBar1Region(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x8

    return p1

    .line 837
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inSlowBar2Start(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x6

    return p1

    .line 839
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inSlowBar2End(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x7

    return p1

    .line 841
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->inSlowBar2Region(II)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x9

    return p1

    :cond_9
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

    .line 298
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mThumbnail:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return-void
.end method

.method public declared-synchronized deleteSlowRegin(I)V
    .locals 2

    monitor-enter p0

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-nez v0, :cond_0

    goto :goto_1

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 898
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->exchange(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)V

    .line 899
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateActive(Z)V

    .line 900
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateValid(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 902
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateValid(Z)V

    .line 904
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    :cond_3
    monitor-exit p0

    return-void

    .line 895
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

    .line 276
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDuration: mTotalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    sget v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->MIN_DURATION:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 280
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->MIN_DISTANCE:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x5dc

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    .line 287
    iget-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->MIN_DISTANCE:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    .line 288
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->MIN_DISTANCE:J

    .line 294
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->updateBarPosition()V

    return-void
.end method

.method public initPlayBar(J)V
    .locals 0

    .line 327
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    return-void
.end method

.method public initReady(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    .line 309
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    return-void
.end method

.method public initSlowBar(IIZ)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 346
    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    .line 347
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    .line 348
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {p1, p3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$202(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;Z)Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 350
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->startScaleSlowBarAnim(Z)V

    :cond_0
    return-void
.end method

.method public initSlowTime(II)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 270
    iput-wide v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    :cond_0
    return-void
.end method

.method public initTrimBar(JJZ)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    if-eqz v0, :cond_1

    .line 332
    iput-wide p1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    .line 333
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iput-wide p3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-static {v0, p5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->access$302(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;Z)Z

    if-eqz p5, :cond_0

    .line 336
    iget-object p5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarActivitePaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    :cond_0
    iget-object p5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

    if-eqz p5, :cond_1

    .line 339
    invoke-interface {p5, p1, p2, p3, p4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;->onTrimingMove(JJ)V

    :cond_1
    return-void
.end method

.method public isSlowBarActivie()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->access$200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrimBarActivie()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isActivte()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public neeShowLoadPercent(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    .line 357
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 538
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 540
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->showSlowBar:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawBG(Landroid/graphics/Canvas;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawSlowRegion(Landroid/graphics/Canvas;)V

    .line 544
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawThumbnailSpace(Landroid/graphics/Canvas;)V

    .line 545
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->showSlowBar:Z

    if-eqz v0, :cond_1

    .line 546
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawIndicatorSpace(Landroid/graphics/Canvas;)V

    .line 547
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawSlowBar(Landroid/graphics/Canvas;)V

    .line 549
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    if-eqz v0, :cond_2

    .line 550
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->drawLoadPercentRect(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 496
    sget-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->PAUSED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mState:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 487
    sget-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->PLAYING:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mState:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    .line 488
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 489
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->collapseSlowBar()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 911
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return v1

    .line 916
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->needDrawLoadPercent:Z

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return v1

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    .line 922
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressing:Z

    const/4 v0, -0x1

    .line 923
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPressedThumb:I

    .line 924
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 926
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->starTrimBarAlphaAnim(Z)V

    .line 928
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    :cond_3
    return v1
.end method

.method public release()V
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1324
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mNormalIndicator:Landroid/graphics/Bitmap;

    .line 1325
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1326
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1328
    :cond_1
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowIndicator:Landroid/graphics/Bitmap;

    .line 1329
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1330
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1332
    :cond_2
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_left:Landroid/graphics/Bitmap;

    .line 1333
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1334
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1336
    :cond_3
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mArrow_right:Landroid/graphics/Bitmap;

    .line 1337
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1338
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1340
    :cond_4
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayBar:Landroid/graphics/Bitmap;

    .line 1341
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarShort:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1342
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1344
    :cond_5
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarShort:Landroid/graphics/Bitmap;

    .line 1345
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 1346
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1348
    :cond_6
    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    .line 1349
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mThumbnail:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1350
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

    .line 1352
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public setOnlyShowProgressBar(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onlyShowProgressBar:Z

    .line 256
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return-void
.end method

.method public setSeekBarListerner(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSeekBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

    return-void
.end method

.method public setSlowBarLitener(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    return-void
.end method

.method public setTimes(JJJJZ)V
    .locals 2

    .line 470
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTotalTime:J

    cmp-long p3, v0, p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide p3, p3, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    cmp-long p3, p3, p5

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide p3, p3, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    cmp-long p3, p3, p7

    if-nez p3, :cond_0

    return-void

    .line 476
    :cond_0
    iput-wide p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mCurrentTime:J

    .line 477
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iput-wide p5, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    .line 478
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iput-wide p7, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    .line 479
    invoke-direct {p0, p9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->update(Z)V

    return-void
.end method

.method public setTrimListener(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimingBarListener:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

    return-void
.end method

.method public setViewFrameBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mViewFrameBitmap:Landroid/graphics/Bitmap;

    .line 304
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    return-void
.end method

.method public showEnded()V
    .locals 1

    .line 483
    sget-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->ENDED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mState:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    return-void
.end method

.method public showSlowBar(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->showSlowBar:Z

    if-eqz p1, :cond_0

    .line 263
    new-instance p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionFirst:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    .line 264
    new-instance p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mSlowRegionSecond:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    :cond_0
    return-void
.end method

.method public declared-synchronized splitSlowRegin()V
    .locals 0

    monitor-enter p0

    .line 885
    monitor-exit p0

    return-void
.end method

.method public updateLoadPercent(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    if-ltz v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->res:Landroid/content/res/Resources;

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

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->loadPercentText:Ljava/lang/String;

    .line 367
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mLoadingRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_TOP:I

    iget v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_HEIGHT:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    return-void
.end method

.method public updatePlayBar()V
    .locals 13

    .line 888
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v0, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->TRIM_BAR_WIDTH:I

    int-to-long v2, v2

    add-long v9, v0, v2

    .line 889
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mTrimBarRegion:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    iget-wide v0, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->PLAYED_BAR_WIDTH:I

    int-to-long v2, v2

    sub-long v11, v0, v2

    .line 890
    iget-wide v5, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->clampPosition(JJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->mPlayedBarLeft:J

    return-void
.end method
