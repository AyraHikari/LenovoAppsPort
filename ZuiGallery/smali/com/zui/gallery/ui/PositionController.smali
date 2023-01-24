.class Lcom/zui/gallery/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/PositionController$Gap;,
        Lcom/zui/gallery/ui/PositionController$Box;,
        Lcom/zui/gallery/ui/PositionController$Platform;,
        Lcom/zui/gallery/ui/PositionController$Animatable;,
        Lcom/zui/gallery/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_MOVE:I = 0xa

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I

.field private static final BOX_MAX:I = 0xa

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I

.field private static final HORIZONTAL_SLACK:I

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

.field private static final IMAGE_GAP:I

.field public static final IMAGE_THUMBNAIL_BACKGROUND_HEIGHT:I

.field public static final IMAGE_THUMBNAIL_BOTTOM_PADDING:I

.field public static final IMAGE_THUMBNAIL_BOTTOM_PADDING_WORKMODE:I

.field private static final IMAGE_THUMBNAIL_GAP:I

.field public static final IMAGE_THUMBNAIL_SIZE:I

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 5.0f

.field private static SCALE_MAX_EXTRA:F = 0.0f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PositionController"


# instance fields
.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/zui/gallery/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/RangeArray<",
            "Lcom/zui/gallery/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mContinuousShotMode:Z

.field private mExtraScalingRange:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/zui/gallery/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/RangeArray<",
            "Lcom/zui/gallery/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mInScale:Z

.field private mIsFirst:Z

.field private mListener:Lcom/zui/gallery/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

.field private mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

.field private mRects:Lcom/zui/gallery/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/RangeArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempBoxes:Lcom/zui/gallery/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/RangeArray<",
            "Lcom/zui/gallery/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/zui/gallery/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/RangeArray<",
            "Lcom/zui/gallery/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 68
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/gallery/ui/PositionController;->ANIM_TIME:[I

    const v0, 0x3fcccccd    # 1.6f

    .line 89
    sput v0, Lcom/zui/gallery/ui/PositionController;->SCALE_MAX_EXTRA:F

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 99
    sput-object v0, Lcom/zui/gallery/ui/PositionController;->CENTER_OUT_INDEX:[I

    const/16 v0, 0x10

    .line 101
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->IMAGE_GAP:I

    const/16 v0, 0xc

    .line 102
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->HORIZONTAL_SLACK:I

    const/high16 v0, 0x40300000    # 2.75f

    .line 103
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_GAP:I

    .line 104
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    const/high16 v0, 0x42110000    # 36.25f

    .line 105
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING:I

    const v0, 0x42a28000    # 81.25f

    .line 106
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING_WORKMODE:I

    const/16 v0, 0x4b

    .line 107
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BACKGROUND_HEIGHT:I

    const/4 v0, 0x0

    .line 194
    :goto_0
    sget-object v1, Lcom/zui/gallery/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 195
    div-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    neg-int v2, v2

    .line 198
    :cond_0
    sget-object v3, Lcom/zui/gallery/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v2, v3, v0

    move v0, v1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x190
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2bc
        0x190
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/ui/PositionController$Listener;)V
    .locals 6

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mExtraScalingRange:Z

    .line 94
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mContinuousShotMode:Z

    const/16 v1, 0x4b0

    .line 113
    iput v1, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    .line 114
    iput v1, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PositionController;->mConstrained:Z

    .line 162
    new-instance v1, Lcom/zui/gallery/ui/PositionController$Platform;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/ui/PositionController$Platform;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    .line 163
    new-instance v1, Lcom/zui/gallery/util/RangeArray;

    const/16 v3, -0xa

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Lcom/zui/gallery/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    .line 166
    new-instance v1, Lcom/zui/gallery/util/RangeArray;

    const/16 v5, 0x9

    invoke-direct {v1, v3, v5}, Lcom/zui/gallery/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    .line 168
    new-instance v1, Lcom/zui/gallery/util/RangeArray;

    invoke-direct {v1, v3, v4}, Lcom/zui/gallery/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mTempBoxes:Lcom/zui/gallery/util/RangeArray;

    .line 169
    new-instance v1, Lcom/zui/gallery/util/RangeArray;

    invoke-direct {v1, v3, v5}, Lcom/zui/gallery/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mTempGaps:Lcom/zui/gallery/util/RangeArray;

    .line 172
    new-instance v1, Lcom/zui/gallery/util/RangeArray;

    invoke-direct {v1, v3, v4}, Lcom/zui/gallery/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    .line 173
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mIsFirst:Z

    .line 204
    iput-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mListener:Lcom/zui/gallery/ui/PositionController$Listener;

    .line 206
    new-instance p1, Lcom/zui/gallery/ui/FlingScroller;

    invoke-direct {p1}, Lcom/zui/gallery/ui/FlingScroller;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

    .line 209
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->initPlatform()V

    move p1, v3

    :goto_0
    if-gt p1, v4, :cond_0

    .line 211
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    new-instance v0, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->initBox(I)V

    .line 213
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v4, :cond_1

    .line 216
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    new-instance p2, Lcom/zui/gallery/ui/PositionController$Gap;

    invoke-direct {p2, p0, v2}, Lcom/zui/gallery/ui/PositionController$Gap;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    invoke-virtual {p1, v3, p2}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 217
    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/PositionController;->initGap(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    :cond_1
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isAlaskaDevice()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 221
    sput p1, Lcom/zui/gallery/ui/PositionController;->SCALE_MAX_EXTRA:F

    :cond_2
    return-void
.end method

.method static synthetic access$1000()F
    .locals 1

    .line 34
    sget v0, Lcom/zui/gallery/ui/PositionController;->SCALE_MAX_EXTRA:F

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 34
    sget v0, Lcom/zui/gallery/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/PositionController;FI)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/PositionController;F)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/PositionController;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mFocusX:F

    return p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/PositionController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mBoundLeft:I

    return p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/PositionController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mBoundRight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/PositionController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrained:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/PositionController;)Landroid/graphics/Rect;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/PositionController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    return p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/ui/PositionController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    return p0
.end method

.method static synthetic access$2100()[I
    .locals 1

    .line 34
    sget-object v0, Lcom/zui/gallery/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/PositionController;->mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/ui/PositionController;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2400(Lcom/zui/gallery/ui/PositionController;F)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/ui/PositionController;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mFocusY:F

    return p0
.end method

.method static synthetic access$2600(Lcom/zui/gallery/ui/PositionController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    return p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/ui/PositionController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/PositionController;->mListener:Lcom/zui/gallery/ui/PositionController$Listener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/PositionController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/zui/gallery/ui/PositionController;->mInScale:Z

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/util/RangeArray;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/PositionController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/zui/gallery/ui/PositionController;->mExtraScalingRange:Z

    return p0
.end method

.method private calculateStableBound(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1332
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 5

    .line 1307
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1310
    invoke-direct {p0, p2, p1}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;F)I

    move-result v1

    .line 1311
    invoke-direct {p0, p2, p1}, Lcom/zui/gallery/ui/PositionController;->heightOf(Lcom/zui/gallery/ui/PositionController$Box;F)I

    move-result p2

    .line 1314
    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoundLeft:I

    .line 1315
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoundRight:I

    .line 1316
    iget v1, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p2, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    .line 1317
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    .line 1321
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1322
    iput v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    iput v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    .line 1326
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1327
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mBoundRight:I

    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mBoundLeft:I

    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .line 590
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 591
    iget-wide v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 593
    :cond_0
    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method private convertBoxToRect(I)V
    .locals 6

    .line 825
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 826
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 828
    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v3, v3, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 829
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v3

    .line 830
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/PositionController;->heightOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v0

    if-nez p1, :cond_0

    .line 832
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    .line 833
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr p1, v4

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 834
    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 836
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v4, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 837
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Gap;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 839
    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v4, p1

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 840
    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 843
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 844
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Gap;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 846
    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v4, p1

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 847
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 850
    :cond_2
    :goto_0
    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 851
    iget p1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method private debugMoveBox([I)V
    .locals 4

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveBox:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 972
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 973
    aget v2, p1, v1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    const-string v2, " N"

    .line 975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, " "

    .line 977
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PositionController"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpRect(I)V
    .locals 4

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ["

    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    .line 818
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 820
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PositionController"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpState()V
    .locals 7

    const/16 v0, -0xa

    move v1, v0

    :goto_0
    const-string v2, "PositionController"

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PositionController$Gap;

    iget v4, v4, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x15

    if-ge v1, v4, :cond_1

    .line 796
    sget-object v4, Lcom/zui/gallery/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/zui/gallery/ui/PositionController;->dumpRect(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gt v0, v3, :cond_4

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    :goto_3
    if-gt v4, v3, :cond_3

    .line 801
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and rect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "intersects!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private gapToSide(Lcom/zui/gallery/ui/PositionController$Box;)I
    .locals 2

    .line 439
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v1

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float p1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private getDefaultGapSize(I)I
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 422
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 423
    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/PositionController;->gapToSide(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->gapToSide(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private getMaximalScale(Lcom/zui/gallery/ui/PositionController$Box;)F
    .locals 1

    .line 1267
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x40a00000    # 5.0f

    return p1
.end method

.method private getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F
    .locals 4

    .line 1252
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    .line 1253
    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1255
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 1257
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    .line 1258
    iget v1, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    .line 1261
    iget v3, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1263
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getTargetScale(Lcom/zui/gallery/ui/PositionController$Box;)F
    .locals 4

    .line 1344
    iget-wide v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1345
    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    :goto_0
    return p1
.end method

.method private heightOf(Lcom/zui/gallery/ui/PositionController$Box;)I
    .locals 1

    .line 764
    iget v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private heightOf(Lcom/zui/gallery/ui/PositionController$Box;F)I
    .locals 0

    .line 774
    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private initBox(I)V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 924
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    .line 925
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    const/4 v0, 0x1

    .line 926
    iput-boolean v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mUseViewSize:Z

    .line 927
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    .line 928
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getMaximalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    const/4 v0, 0x0

    .line 929
    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 930
    iget v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v0, -0x1

    .line 931
    iput-wide v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 v0, -0x1

    .line 932
    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    return-void
.end method

.method private initBox(ILcom/zui/gallery/ui/PhotoView$Size;)V
    .locals 2

    .line 937
    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 942
    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    .line 943
    iget p2, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    iput p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    const/4 p2, 0x0

    .line 944
    iput-boolean p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mUseViewSize:Z

    .line 945
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    .line 946
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getMaximalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    .line 947
    iput p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 948
    iget p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    iput p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v0, -0x1

    .line 949
    iput-wide v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 p2, -0x1

    .line 950
    iput p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    return-void

    .line 938
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->initBox(I)V

    return-void
.end method

.method private initGap(I)V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 957
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getDefaultGapSize(I)I

    move-result p1

    iput p1, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    .line 958
    iget p1, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    iput p1, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    const-wide/16 v1, -0x1

    .line 959
    iput-wide v1, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    return-void
.end method

.method private initGap(II)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 964
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->getDefaultGapSize(I)I

    move-result p1

    iput p1, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    .line 965
    iput p2, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    const-wide/16 p1, -0x1

    .line 966
    iput-wide p1, v0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    return-void
.end method

.method private initPlatform()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController$Platform;->updateDefaultXY()V

    .line 916
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 917
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    .line 918
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_0

    neg-float p0, p0

    :cond_0
    const p1, 0x3ca3d70a    # 0.02f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 784
    sget-object v1, Lcom/zui/gallery/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/PositionController;->convertBoxToRect(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .line 702
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->layoutAndSetPosition()V

    .line 703
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mListener:Lcom/zui/gallery/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PositionController$Listener;->invalidate()V

    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 318
    iget-boolean v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mUseViewSize:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    return v2

    .line 324
    :cond_0
    iput-boolean p4, v0, Lcom/zui/gallery/ui/PositionController$Box;->mUseViewSize:Z

    .line 326
    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    if-ne p2, v3, :cond_1

    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    if-ne p3, v3, :cond_1

    return v2

    :cond_1
    if-le p2, p3, :cond_2

    .line 338
    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    int-to-float v3, p2

    goto :goto_0

    .line 339
    :cond_2
    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    int-to-float v2, v2

    int-to-float v3, p3

    :goto_0
    div-float/2addr v2, v3

    .line 341
    iput p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    .line 342
    iput p3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    if-eqz v1, :cond_3

    if-nez p4, :cond_3

    .line 348
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/PositionController;->getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result p2

    iput p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 p2, -0x1

    .line 349
    iput-wide p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    goto :goto_1

    .line 351
    :cond_3
    iget p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr p2, v2

    iput p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    .line 352
    iget p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr p2, v2

    iput p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mFromScale:F

    .line 353
    iget p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    mul-float/2addr p2, v2

    iput p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    :goto_1
    if-nez p1, :cond_4

    .line 357
    iget p1, p0, Lcom/zui/gallery/ui/PositionController;->mFocusX:F

    div-float/2addr p1, v2

    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mFocusX:F

    .line 358
    iget p1, p0, Lcom/zui/gallery/ui/PositionController;->mFocusY:F

    div-float/2addr p1, v2

    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mFocusY:F

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private snapAndRedraw()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController$Platform;->startSnapback()Z

    const/16 v0, -0xa

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/PositionController$Box;->startSnapback()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 712
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PositionController$Gap;->startSnapback()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->redraw()V

    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultY:I

    invoke-static {v0, p1, v1, p4}, Lcom/zui/gallery/ui/PositionController$Platform;->access$300(Lcom/zui/gallery/ui/PositionController$Platform;III)Z

    move-result p1

    const/4 v0, 0x0

    or-int/2addr p1, v0

    .line 721
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-static {v0, p2, p3, p4}, Lcom/zui/gallery/ui/PositionController$Box;->access$400(Lcom/zui/gallery/ui/PositionController$Box;IFI)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->redraw()V

    :cond_0
    return p1
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 368
    iget-boolean v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mUseViewSize:Z

    if-eqz v2, :cond_1

    return v1

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 373
    iput-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 375
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 376
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 377
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 378
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 377
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    .line 379
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x5

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 386
    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    iput v2, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    .line 387
    iget v2, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/ui/PositionController$Gap;->doAnimation(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private updateScaleAndGapLimit()V
    .locals 4

    const/16 v0, -0xa

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Box;

    .line 408
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/PositionController;->getMinimalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v3

    iput v3, v2, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    .line 409
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/PositionController;->getMaximalScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v3

    iput v3, v2, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 414
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3

    .line 1336
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-direct {p0, v1, p1}, Lcom/zui/gallery/ui/PositionController;->heightOf(Lcom/zui/gallery/ui/PositionController$Box;F)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3

    .line 1340
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-direct {p0, v1, p1}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;F)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I
    .locals 1

    .line 759
    iget v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private widthOf(Lcom/zui/gallery/ui/PositionController$Box;F)I
    .locals 0

    .line 769
    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .line 729
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    const/16 v1, -0xa

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 732
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 733
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/PositionController$Box;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v3, :cond_3

    .line 737
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 738
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Gap;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 743
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->redraw()V

    :cond_4
    return-void
.end method

.method public beginScale(FF)V
    .locals 3

    .line 525
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 526
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 527
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 528
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    const/4 v2, 0x1

    .line 529
    iput-boolean v2, p0, Lcom/zui/gallery/ui/PositionController;->mInScale:Z

    .line 530
    iget v1, v1, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mFocusX:F

    .line 531
    iget p1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mFocusY:F

    return-void
.end method

.method public convertScreenToThumbnail(I)I
    .locals 2

    .line 861
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v0

    int-to-float p1, p1

    .line 862
    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public endScale()V
    .locals 1

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mInScale:Z

    .line 561
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public flingPage(II)Z
    .locals 15

    move-object v0, p0

    .line 639
    iget-object v1, v0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 640
    iget-object v3, v0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    .line 643
    iget v4, v1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v4}, Lcom/zui/gallery/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    .line 644
    invoke-direct {p0, v4}, Lcom/zui/gallery/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController;->getImageAtEdges()I

    move-result v4

    if-lez p1, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    :cond_2
    move v9, v2

    goto :goto_0

    :cond_3
    move/from16 v9, p1

    :goto_0
    if-lez p2, :cond_4

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    :cond_5
    move v10, v2

    goto :goto_1

    :cond_6
    move/from16 v10, p2

    :goto_1
    if-nez v9, :cond_7

    if-nez v10, :cond_7

    return v2

    .line 662
    :cond_7
    iget-object v6, v0, Lcom/zui/gallery/ui/PositionController;->mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

    iget v7, v3, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v8, v1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget v11, v0, Lcom/zui/gallery/ui/PositionController;->mBoundLeft:I

    iget v12, v0, Lcom/zui/gallery/ui/PositionController;->mBoundRight:I

    iget v13, v0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    iget v14, v0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-virtual/range {v6 .. v14}, Lcom/zui/gallery/ui/FlingScroller;->fling(IIIIIIII)V

    .line 664
    iget-object v2, v0, Lcom/zui/gallery/ui/PositionController;->mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/FlingScroller;->getFinalX()I

    move-result v2

    .line 665
    iget-object v3, v0, Lcom/zui/gallery/ui/PositionController;->mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/FlingScroller;->getFinalY()I

    move-result v3

    .line 666
    sget-object v4, Lcom/zui/gallery/ui/PositionController;->ANIM_TIME:[I

    iget-object v5, v0, Lcom/zui/gallery/ui/PositionController;->mPageScroller:Lcom/zui/gallery/ui/FlingScroller;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/FlingScroller;->getDuration()I

    move-result v5

    const/4 v6, 0x6

    aput v5, v4, v6

    .line 667
    iget v1, v1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    move-result v1

    return v1
.end method

.method public forceImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V
    .locals 1

    .line 270
    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 273
    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    iput v0, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    .line 274
    iget p2, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    iput p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getImageAtEdges()I
    .locals 5

    .line 1204
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1205
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    .line 1206
    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 1208
    iget v3, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/zui/gallery/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    const/4 v1, 0x2

    .line 1211
    :cond_0
    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoundRight:I

    if-lt v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x1

    .line 1214
    :cond_1
    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    if-gt v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x8

    .line 1217
    :cond_2
    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    if-lt v0, v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/gallery/ui/PositionController$Box;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1187
    :goto_0
    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    return v0
.end method

.method public getImageScale()F
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/gallery/ui/PositionController$Box;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1192
    :goto_0
    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    return v0
.end method

.method public getImageWidth()I
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/gallery/ui/PositionController$Box;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1182
    :goto_0
    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    return v0
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method public getThumbnailIndexOfRect(IIII)I
    .locals 1

    :goto_0
    if-lt p4, p3, :cond_1

    .line 899
    invoke-virtual {p0, p4}, Lcom/zui/gallery/ui/PositionController;->getThumbnailPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 900
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_1
    const p4, 0x7fffffff

    :goto_1
    return p4
.end method

.method public getThumbnailPosition(I)Landroid/graphics/Rect;
    .locals 8

    .line 867
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 868
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 870
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 871
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 873
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/zui/gallery/ui/PositionController;->convertScreenToThumbnail(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 874
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 875
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-le v5, v6, :cond_1

    .line 876
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/zui/gallery/ui/PositionController;->convertScreenToThumbnail(I)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 877
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sget v5, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 878
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/zui/gallery/ui/PositionController;->convertScreenToThumbnail(I)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 879
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sget v2, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 881
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zui/gallery/ui/PositionController;->convertScreenToThumbnail(I)I

    move-result v5

    sget v6, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 882
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 883
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zui/gallery/ui/PositionController;->convertScreenToThumbnail(I)I

    move-result v5

    sget v6, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 884
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sget v5, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v7

    add-float/2addr v0, v5

    float-to-int v0, v0

    sub-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 890
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v2, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_GAP:I

    add-int/2addr v0, v2

    mul-int/2addr p1, v0

    add-int/2addr p1, v3

    .line 891
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v0

    sget v2, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 892
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public hasDeletingBox()Z
    .locals 3

    const/16 v0, -0xa

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Box;

    iget v1, v1, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hitTest(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 676
    sget-object v1, Lcom/zui/gallery/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    .line 677
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 678
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .line 747
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationKind:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget-wide v5, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    .line 749
    invoke-virtual {v0, v4}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    .line 750
    invoke-virtual {v0, v4}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    iget-wide v5, v0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public isAtMinimalScale()Z
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/gallery/ui/PositionController$Box;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1171
    :goto_0
    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v0}, Lcom/zui/gallery/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v0

    return v0
.end method

.method public isCenter()Z
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/gallery/ui/PositionController$Box;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1176
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v3, v3, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_1

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isContinuousShotMode()Z
    .locals 1

    .line 1349
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mContinuousShotMode:Z

    return v0
.end method

.method public isImageScaled()Z
    .locals 6

    .line 1196
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1198
    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v1, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveBox([IZZZ[Lcom/zui/gallery/ui/PhotoView$Size;)V
    .locals 9

    .line 1005
    new-instance p2, Lcom/zui/gallery/util/RangeIntArray;

    const/16 p3, -0xa

    const/16 v0, 0xa

    invoke-direct {p2, p1, p3, v0}, Lcom/zui/gallery/util/RangeIntArray;-><init>([III)V

    .line 1008
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->layoutAndSetPosition()V

    move p1, p3

    :goto_0
    if-gt p1, v0, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1011
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mRects:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1012
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_1
    const/4 v1, 0x0

    if-gt p1, v0, :cond_1

    .line 1017
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mTempBoxes:Lcom/zui/gallery/util/RangeArray;

    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-virtual {v2, p1, v3}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1018
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p1, v1}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_2
    if-ge p1, v0, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mTempGaps:Lcom/zui/gallery/util/RangeArray;

    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PositionController$Gap;

    invoke-virtual {v2, p1, v3}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1022
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p1, v1}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_3
    const v2, 0x7fffffff

    if-gt p1, v0, :cond_4

    .line 1027
    invoke-virtual {p2, p1}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_4

    .line 1030
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mTempBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-virtual {v2, p1, v4}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1031
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mTempBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v3, v1}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    move p1, p3

    :goto_5
    if-ge p1, v0, :cond_8

    .line 1036
    invoke-virtual {p2, p1}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v4, p1, 0x1

    .line 1039
    invoke-virtual {p2, v4}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_7

    .line 1043
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mTempGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, v3}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/ui/PositionController$Gap;

    invoke-virtual {v4, p1, v5}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1044
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mTempGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v3, v1}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    move p1, p3

    move v1, p1

    :goto_7
    if-gt p1, v0, :cond_b

    .line 1051
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    goto :goto_9

    .line 1053
    :cond_9
    :goto_8
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mTempBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1056
    :cond_a
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mTempBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Box;

    invoke-virtual {v3, p1, v1}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, p1, 0xa

    .line 1057
    aget-object v1, p5, v1

    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/ui/PositionController;->initBox(ILcom/zui/gallery/ui/PhotoView$Size;)V

    move v1, v5

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_b
    move p1, p3

    :goto_a
    if-gt p1, v0, :cond_d

    .line 1066
    invoke-virtual {p2, p1}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result p5

    if-eq p5, v2, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    move p5, v0

    :goto_c
    if-lt p5, p3, :cond_f

    .line 1070
    invoke-virtual {p2, p5}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result v1

    if-eq v1, v2, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 p5, p5, -0x1

    goto :goto_c

    :cond_f
    :goto_d
    const/4 v1, 0x0

    if-le p1, v0, :cond_10

    .line 1076
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    iget-object p5, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p5, p5, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iput p5, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    move p1, v1

    move p5, p1

    :cond_10
    add-int/lit8 v3, p1, 0x1

    .line 1085
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_e
    if-ge v3, p5, :cond_12

    .line 1086
    invoke-virtual {p2, v3}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result v4

    if-eq v4, v2, :cond_11

    goto :goto_f

    .line 1088
    :cond_11
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1089
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, v3}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1090
    invoke-direct {p0, v4}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v6

    .line 1091
    invoke-direct {p0, v5}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v7

    .line 1092
    iget v4, v4, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 1093
    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/PositionController;->getDefaultGapSize(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v5, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    .line 1094
    iget v4, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v5}, Lcom/zui/gallery/ui/PositionController;->heightOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iput v4, v5, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_12
    add-int/lit8 v3, p5, -0x1

    const/4 v4, -0x1

    .line 1098
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_10
    if-le v3, p1, :cond_14

    .line 1099
    invoke-virtual {p2, v3}, Lcom/zui/gallery/util/RangeIntArray;->get(I)I

    move-result v4

    if-eq v4, v2, :cond_13

    goto :goto_11

    .line 1101
    :cond_13
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1102
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, v3}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1103
    invoke-direct {p0, v4}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v6

    .line 1104
    invoke-direct {p0, v5}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v7

    .line 1105
    iget v4, v4, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v7, 0x2

    sub-int/2addr v7, v6

    sub-int/2addr v4, v7

    .line 1106
    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/PositionController;->getDefaultGapSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, v5, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    .line 1107
    iget v4, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v5}, Lcom/zui/gallery/ui/PositionController;->heightOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iput v4, v5, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    :goto_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_14
    move p2, p3

    move v2, p2

    :goto_12
    if-ge p2, v0, :cond_18

    .line 1113
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, p2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    goto :goto_15

    .line 1115
    :cond_15
    :goto_13
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mTempGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1118
    :cond_16
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mTempGaps:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Gap;

    invoke-virtual {v3, p2, v2}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1119
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1120
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1121
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v4

    .line 1122
    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v6

    if-lt p2, p1, :cond_17

    if-ge p2, p5, :cond_17

    .line 1124
    iget v3, v3, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    sub-int/2addr v3, v2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v4, v2

    sub-int/2addr v3, v4

    .line 1125
    invoke-direct {p0, p2, v3}, Lcom/zui/gallery/ui/PositionController;->initGap(II)V

    goto :goto_14

    .line 1127
    :cond_17
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/PositionController;->initGap(I)V

    :goto_14
    move v2, v5

    :goto_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_18
    add-int/lit8 p1, p1, -0x1

    :goto_16
    if-lt p1, p3, :cond_19

    .line 1134
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1135
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1136
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v3

    .line 1137
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v4

    .line 1138
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 1139
    iget p2, p2, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v4, v3

    sub-int/2addr p2, v4

    iget v3, v5, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr p2, v3

    iput p2, v2, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    :cond_19
    :goto_17
    add-int/lit8 p5, p5, 0x1

    if-gt p5, v0, :cond_1a

    .line 1143
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    add-int/lit8 p2, p5, -0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1144
    iget-object p3, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {p3, p5}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1145
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v2

    .line 1146
    invoke-direct {p0, p3}, Lcom/zui/gallery/ui/PositionController;->widthOf(Lcom/zui/gallery/ui/PositionController$Box;)I

    move-result v3

    .line 1147
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, p2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 1148
    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v2, v4

    add-int/2addr p1, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    iget p2, p2, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr p1, p2

    iput p1, p3, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    goto :goto_17

    .line 1152
    :cond_1a
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    iget p1, p1, Lcom/zui/gallery/ui/PositionController$Box;->mAbsoluteX:I

    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p2, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    sub-int/2addr p1, p2

    .line 1153
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p3, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 1154
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p3, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mFromX:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mFromX:I

    .line 1155
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget p3, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    .line 1157
    iget-boolean p1, p0, Lcom/zui/gallery/ui/PositionController;->mConstrained:Z

    if-eq p1, p4, :cond_1b

    .line 1158
    iput-boolean p4, p0, Lcom/zui/gallery/ui/PositionController;->mConstrained:Z

    .line 1159
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1160
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1163
    :cond_1b
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public resetLongPictureToFullView()V
    .locals 5

    .line 516
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 519
    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageW:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 521
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public resetToFullView()V
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 512
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public scaleBy(FFF)I
    .locals 4

    .line 540
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 541
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 542
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 548
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/PositionController;->getTargetScale(Lcom/zui/gallery/ui/PositionController$Box;)F

    move-result v2

    mul-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 549
    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mFocusX:F

    mul-float/2addr v2, p1

    sub-float/2addr p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 550
    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mFocusY:F

    mul-float/2addr v3, p1

    sub-float/2addr p3, v3

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/4 v2, 0x1

    .line 551
    invoke-direct {p0, p2, p3, p1, v2}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    .line 552
    iget p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 554
    :cond_0
    iget p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public scrollMoveFilmX(I)V
    .locals 3

    .line 630
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 633
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    .line 634
    iget v1, v1, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    add-int/2addr v1, p1

    .line 635
    iget p1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    const/16 v2, 0xa

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public scrollPage(II)V
    .locals 5

    .line 603
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 607
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    .line 609
    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 611
    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    add-int/2addr v2, p1

    .line 612
    iget p1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    add-int/2addr p1, p2

    .line 616
    iget p2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    if-eq p2, v3, :cond_2

    if-ge p1, p2, :cond_1

    .line 618
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mListener:Lcom/zui/gallery/ui/PositionController$Listener;

    sub-int/2addr p2, p1

    const/4 v4, 0x2

    invoke-interface {v3, p2, v4}, Lcom/zui/gallery/ui/PositionController$Listener;->onPull(II)V

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    .line 620
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mListener:Lcom/zui/gallery/ui/PositionController$Listener;

    sub-int v3, p1, v3

    invoke-interface {p2, v3, v1}, Lcom/zui/gallery/ui/PositionController$Listener;->onPull(II)V

    .line 624
    :cond_2
    :goto_0
    iget p2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    iget v3, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-static {p1, p2, v3}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 626
    iget p2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 264
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController$Platform;->updateDefaultXY()V

    .line 265
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->updateScaleAndGapLimit()V

    .line 266
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public setContinuousShotMode(Z)V
    .locals 0

    .line 1353
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PositionController;->mContinuousShotMode:Z

    return-void
.end method

.method public setExtraScalingRange(Z)V
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 396
    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PositionController;->mExtraScalingRange:Z

    if-nez p1, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    :cond_1
    return-void
.end method

.method public setImageSize(ILcom/zui/gallery/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 3

    .line 279
    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    if-eqz v0, :cond_8

    iget v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 283
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    iget-object p3, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/PositionController$Platform;->updateDefaultXY()V

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    .line 288
    :goto_0
    iget v2, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    iget p2, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    invoke-direct {p0, p1, v2, p2, v1}, Lcom/zui/gallery/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result p1

    or-int/2addr p1, p3

    if-nez p1, :cond_2

    return-void

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->updateScaleAndGapLimit()V

    .line 294
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result p1

    .line 295
    iget-object p2, p0, Lcom/zui/gallery/ui/PositionController;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isSecureCameraCall()Z

    move-result p2

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    if-eqz v1, :cond_6

    .line 298
    iget-boolean p1, p0, Lcom/zui/gallery/ui/PositionController;->mIsFirst:Z

    if-eqz p1, :cond_5

    .line 299
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    return-void

    .line 302
    :cond_5
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController;->skipToFinalPosition()V

    .line 303
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PositionController;->mIsFirst:Z

    goto :goto_1

    .line 305
    :cond_6
    iget-boolean p1, p0, Lcom/zui/gallery/ui/PositionController;->mIsFirst:Z

    if-eqz p1, :cond_7

    return-void

    .line 308
    :cond_7
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    :cond_8
    :goto_1
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setViewSize(II)V
    .locals 3

    .line 231
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    if-ne p2, v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    .line 236
    iput p1, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    .line 237
    iput p2, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    .line 238
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->initPlatform()V

    const/16 v1, -0xa

    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    const/4 v2, 0x1

    .line 241
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/zui/gallery/ui/PositionController;->setBoxSize(IIIZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->updateScaleAndGapLimit()V

    if-eqz v0, :cond_2

    .line 249
    iget-object p1, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Box;

    .line 250
    iget p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    iput p2, p1, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController;->skipToFinalPosition()V

    :cond_3
    return-void
.end method

.method public skipAnimation()V
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    iput v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 456
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mToY:I

    iput v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    .line 457
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iput-wide v2, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    :cond_0
    const/16 v0, -0xa

    move v1, v0

    :goto_0
    const/16 v4, 0xa

    if-gt v1, v4, :cond_2

    .line 460
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PositionController$Box;

    .line 461
    iget-wide v5, v4, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_1

    .line 463
    :cond_1
    iget v5, v4, Lcom/zui/gallery/ui/PositionController$Box;->mToY:I

    iput v5, v4, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 464
    iget v5, v4, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    iput v5, v4, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    .line 465
    iput-wide v2, v4, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v4, :cond_4

    .line 468
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 469
    iget-wide v5, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    goto :goto_3

    .line 471
    :cond_3
    iget v5, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mToGap:I

    iput v5, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    .line 472
    iput-wide v2, v1, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 474
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->redraw()V

    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .line 482
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController;->stopAnimation()V

    .line 483
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    .line 484
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController;->skipAnimation()V

    return-void
.end method

.method public snapback()V
    .locals 0

    .line 478
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 7

    .line 575
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 576
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PositionController$Box;

    .line 577
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PositionController$Gap;

    .line 579
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v4, v3, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v5, v5, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultY:I

    const/16 v6, 0x9

    invoke-static {v3, v4, v5, v6}, Lcom/zui/gallery/ui/PositionController$Platform;->access$300(Lcom/zui/gallery/ui/PositionController$Platform;III)Z

    .line 581
    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v0, v1, v3, v6}, Lcom/zui/gallery/ui/PositionController$Box;->access$400(Lcom/zui/gallery/ui/PositionController$Box;IFI)Z

    .line 582
    iget v0, v2, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v2, v1, v0, v6}, Lcom/zui/gallery/ui/PositionController$Box;->access$400(Lcom/zui/gallery/ui/PositionController$Box;IFI)Z

    .line 583
    iget v0, p1, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {p1, v0, v6}, Lcom/zui/gallery/ui/PositionController$Gap;->doAnimation(II)Z

    .line 584
    invoke-direct {p0}, Lcom/zui/gallery/ui/PositionController;->redraw()V

    return-void
.end method

.method public startHorizontalSlide()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 567
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v2, v2, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .line 444
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    const/16 v0, -0xa

    move v3, v0

    :goto_0
    const/16 v4, 0xa

    if-gt v3, v4, :cond_0

    .line 446
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PositionController$Box;

    iput-wide v1, v4, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    .line 449
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController;->mGaps:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PositionController$Gap;

    iput-wide v1, v3, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .line 1229
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iput v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    iput v1, v0, Lcom/zui/gallery/ui/PositionController$Platform;->mFromX:I

    return-void
.end method

.method public zoomIn(FFF)V
    .locals 3

    .line 492
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 493
    iget v0, p0, Lcom/zui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController;->mBoxes:Lcom/zui/gallery/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 497
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController;->mPlatform:Lcom/zui/gallery/ui/PositionController$Platform;

    iget v1, v1, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p1, v1

    .line 498
    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p2, v1

    neg-float p1, p1

    mul-float/2addr p1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    neg-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 503
    invoke-direct {p0, p3}, Lcom/zui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 504
    iget v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoundLeft:I

    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundRight:I

    invoke-static {p1, v1, v2}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 505
    iget v1, p0, Lcom/zui/gallery/ui/PositionController;->mBoundTop:I

    iget v2, p0, Lcom/zui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-static {p2, v1, v2}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p2

    .line 506
    iget v1, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v1, v0}, Lcom/zui/gallery/common/Utils;->clamp(FFF)F

    move-result p3

    const/4 v0, 0x4

    .line 507
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/gallery/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method
