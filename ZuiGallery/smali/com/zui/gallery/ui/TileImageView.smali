.class public Lcom/zui/gallery/ui/TileImageView;
.super Lcom/zui/gallery/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/TileImageView$TileDecoder;,
        Lcom/zui/gallery/ui/TileImageView$TileQueue;,
        Lcom/zui/gallery/ui/TileImageView$Tile;,
        Lcom/zui/gallery/ui/TileImageView$TileUploader;,
        Lcom/zui/gallery/ui/TileImageView$TileSource;
    }
.end annotation


# static fields
.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTileSize:I


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/zui/gallery/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcom/zui/gallery/util/ThreadPool;

.field private mTileDecoder:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/zui/gallery/ui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryContext;)V
    .locals 4

    .line 155
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mLevel:I

    .line 98
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 101
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    .line 104
    new-instance v1, Lcom/zui/gallery/ui/TileImageView$TileQueue;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zui/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/zui/gallery/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    .line 105
    new-instance v1, Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-direct {v1, v2}, Lcom/zui/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/zui/gallery/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    .line 106
    new-instance v1, Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-direct {v1, v2}, Lcom/zui/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/zui/gallery/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    .line 110
    iput v1, p0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 121
    new-instance v0, Lcom/zui/gallery/ui/TileImageView$TileUploader;

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/ui/TileImageView$TileUploader;-><init>(Lcom/zui/gallery/ui/TileImageView;Lcom/zui/gallery/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileUploader:Lcom/zui/gallery/ui/TileImageView$TileUploader;

    .line 156
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryContext;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    .line 157
    new-instance v1, Lcom/zui/gallery/ui/TileImageView$TileDecoder;

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/zui/gallery/ui/TileImageView;Lcom/zui/gallery/ui/TileImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileDecoder:Lcom/zui/gallery/util/Future;

    .line 158
    sget v0, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    if-nez v0, :cond_2

    .line 159
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isOnyx()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x1000

    .line 160
    sput p1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/ui/TileImageView;->isHighResolution(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x400

    .line 162
    sput p1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x200

    .line 167
    sput p1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/TileImageView;)Lcom/zui/gallery/ui/TileImageView$TileQueue;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 43
    sget v0, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/TileImageView;)Lcom/zui/gallery/ui/TileImageView$TileSource;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/TileImageView;III)Lcom/zui/gallery/ui/TileImageView$Tile;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/TileImageView;->getTile(III)Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/TileImageView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/ui/TileImageView;->mLevel:I

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/TileImageView;)Lcom/zui/gallery/ui/TileImageView$TileQueue;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    return-object p0
.end method

.method private activateTile(III)V
    .locals 3

    .line 571
    invoke-static {p1, p2, p3}, Lcom/zui/gallery/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    .line 572
    iget-object v2, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/TileImageView$Tile;

    if-eqz v2, :cond_1

    .line 574
    iget p1, v2, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 575
    iput p1, v2, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    :cond_0
    return-void

    .line 579
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/TileImageView;->obtainTile(III)Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object p1

    .line 580
    iget-object p2, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method static drawTile(Lcom/zui/gallery/ui/TileImageView$Tile;Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView$Tile;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-interface {p1, p0, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 p0, 0x1

    return p0

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView$Tile;->getParentTile()Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 676
    :cond_1
    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    .line 677
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 678
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 680
    :cond_2
    sget v1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 681
    sget v1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 683
    :goto_1
    iget p0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    iget v1, v0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    if-ne p0, v1, :cond_3

    .line 684
    iget p0, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 685
    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 687
    :cond_3
    sget p0, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    int-to-float p0, p0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v1

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 688
    sget p0, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    int-to-float p0, p0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v1

    div-float/2addr p0, v3

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :goto_2
    move-object p0, v0

    goto :goto_0
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p6

    neg-int v1, v1

    int-to-double v1, v1

    .line 313
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 314
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    .line 315
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getHeight()I

    move-result v5

    int-to-double v5, v5

    .line 317
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v9, v7, v3

    mul-double v11, v1, v5

    sub-double v13, v9, v11

    .line 320
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 319
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    mul-double/2addr v1, v3

    mul-double/2addr v7, v5

    add-double v3, v1, v7

    .line 322
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 321
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move/from16 v2, p2

    int-to-float v2, v2

    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p5

    div-float v5, v3, v4

    sub-float/2addr v2, v5

    float-to-double v5, v2

    .line 324
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    move/from16 v5, p3

    int-to-float v5, v5

    int-to-float v1, v1

    div-float v4, v1, v4

    sub-float/2addr v5, v4

    float-to-double v4, v5

    .line 325
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v2

    div-float v3, v3, p5

    add-float/2addr v5, v3

    float-to-double v5, v5

    .line 326
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    int-to-float v5, v4

    div-float v1, v1, p5

    add-float/2addr v5, v1

    float-to-double v5, v5

    .line 327
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 330
    sget v5, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    shl-int v5, v5, p4

    .line 331
    div-int/2addr v2, v5

    mul-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 332
    div-int/2addr v4, v5

    mul-int/2addr v5, v4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 333
    iget v5, v0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 334
    iget v5, v0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v5, p1

    .line 336
    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 9

    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v7, v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    .line 301
    invoke-direct/range {v2 .. v8}, Lcom/zui/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    return-void
.end method

.method private getTile(III)Lcom/zui/gallery/ui/TileImageView$Tile;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/zui/gallery/ui/TileImageView;->makeTileKey(III)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/TileImageView$Tile;

    return-object p1
.end method

.method public static isHighResolution(Landroid/content/Context;)Z
    .locals 2

    .line 148
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 150
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 151
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x800

    if-gt p0, v1, :cond_1

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isScreenNailAnimating()Z
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    instance-of v1, v0, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/gallery/ui/TiledScreenNail;

    .line 476
    invoke-virtual {v0}, Lcom/zui/gallery/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutTiles(IIFI)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v9, p2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->getWidth()I

    move-result v10

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->getHeight()I

    move-result v11

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v1, v1, p3

    .line 224
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->floorLog2(F)I

    move-result v1

    iget v2, v8, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    const/4 v12, 0x0

    invoke-static {v1, v12, v2}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v5

    iput v5, v8, Lcom/zui/gallery/ui/TileImageView;->mLevel:I

    .line 229
    iget v1, v8, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-eq v5, v1, :cond_0

    .line 230
    iget-object v15, v8, Lcom/zui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 231
    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    int-to-float v1, v10

    div-float/2addr v1, v13

    .line 232
    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/zui/gallery/ui/TileImageView;->mOffsetX:I

    int-to-float v1, v11

    div-float/2addr v1, v13

    .line 233
    iget v2, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/zui/gallery/ui/TileImageView;->mOffsetY:I

    .line 234
    iget v1, v8, Lcom/zui/gallery/ui/TileImageView;->mLevel:I

    shl-int v2, v14, v1

    int-to-float v2, v2

    mul-float v2, v2, p3

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v5, -0x2

    int-to-float v2, v10

    div-float/2addr v2, v13

    int-to-float v3, v0

    mul-float v3, v3, p3

    sub-float/2addr v2, v3

    .line 238
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v8, Lcom/zui/gallery/ui/TileImageView;->mOffsetX:I

    int-to-float v2, v11

    div-float/2addr v2, v13

    int-to-float v3, v9

    mul-float v3, v3, p3

    sub-float/2addr v2, v3

    .line 239
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v8, Lcom/zui/gallery/ui/TileImageView;->mOffsetY:I

    .line 242
    :cond_1
    :goto_0
    iget v2, v8, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v1, v7, 0x2

    .line 243
    iget v2, v8, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 245
    iget-object v11, v8, Lcom/zui/gallery/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    move v13, v7

    :goto_1
    if-ge v13, v10, :cond_2

    sub-int v1, v13, v7

    .line 247
    aget-object v2, v11, v1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v13

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 251
    :cond_2
    rem-int/lit8 v0, p4, 0x5a

    if-eqz v0, :cond_3

    return-void

    .line 253
    :cond_3
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, v8, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 255
    iget-object v0, v8, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 256
    iput-boolean v12, v8, Lcom/zui/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 260
    iget-object v0, v8, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    :goto_2
    if-ge v12, v0, :cond_7

    .line 262
    iget-object v1, v8, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/TileImageView$Tile;

    if-nez v1, :cond_4

    goto :goto_3

    .line 264
    :cond_4
    iget v2, v1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    if-lt v2, v7, :cond_5

    if-ge v2, v10, :cond_5

    sub-int/2addr v2, v7

    .line 265
    aget-object v2, v11, v2

    iget v3, v1, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    iget v4, v1, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    .line 266
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 267
    :cond_5
    iget-object v2, v8, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v12}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 270
    invoke-virtual {v8, v1}, Lcom/zui/gallery/ui/TileImageView;->recycleTile(Lcom/zui/gallery/ui/TileImageView$Tile;)V

    :cond_6
    :goto_3
    add-int/2addr v12, v14

    goto :goto_2

    .line 273
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    :goto_4
    if-ge v0, v10, :cond_a

    .line 276
    sget v1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    shl-int/2addr v1, v0

    sub-int v2, v0, v7

    .line 277
    aget-object v2, v11, v2

    .line 278
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_5
    if-ge v3, v4, :cond_9

    .line 279
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    :goto_6
    if-ge v5, v6, :cond_8

    .line 280
    invoke-direct {v8, v5, v3, v0}, Lcom/zui/gallery/ui/TileImageView;->activateTile(III)V

    add-int/2addr v5, v1

    goto :goto_6

    :cond_8
    add-int/2addr v3, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 284
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->invalidate()V

    return-void

    :catchall_0
    move-exception v0

    .line 273
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static makeTileKey(III)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x10

    shl-long/2addr v0, p0

    int-to-long v2, p1

    or-long/2addr v0, v2

    shl-long p0, v0, p0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private declared-synchronized obtainTile(III)Lcom/zui/gallery/ui/TileImageView$Tile;
    .locals 2

    monitor-enter p0

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 549
    iput v1, v0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 550
    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-object v0

    .line 553
    :cond_0
    :try_start_1
    new-instance v0, Lcom/zui/gallery/ui/TileImageView$Tile;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/gallery/ui/TileImageView$Tile;-><init>(Lcom/zui/gallery/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private uploadBackgroundTiles(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 5

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Lcom/zui/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 481
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 483
    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 487
    iget-object v3, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/TileImageView$Tile;

    if-eqz v3, :cond_0

    .line 488
    invoke-virtual {v3}, Lcom/zui/gallery/ui/TileImageView$Tile;->isContentValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    iget v4, v3, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    if-ne v4, p1, :cond_0

    const/4 v4, 0x2

    .line 490
    iput v4, v3, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 491
    iget-object v4, p0, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 498
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method decodeTile(Lcom/zui/gallery/ui/TileImageView$Tile;)Z
    .locals 4

    .line 519
    iget v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 520
    iput v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 522
    invoke-virtual {p1}, Lcom/zui/gallery/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    iget v2, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/16 v0, 0x40

    .line 525
    iput v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 526
    iget-object v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 527
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    iget-object v2, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 528
    iput-object v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z

    .line 531
    monitor-exit p0

    return v1

    :cond_2
    if-eqz v0, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    const/16 v2, 0x10

    .line 533
    :goto_0
    iput v2, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    if-eqz v0, :cond_4

    .line 535
    iget-object v2, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z

    .line 537
    iget-object p1, p0, Lcom/zui/gallery/ui/TileImageView;->mTileUploader:Lcom/zui/gallery/ui/TileImageView$TileUploader;

    iget-object p1, p1, Lcom/zui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 538
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mTileUploader:Lcom/zui/gallery/ui/TileImageView$TileUploader;

    invoke-interface {p1, v1}, Lcom/zui/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V

    .line 541
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 543
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public drawTile(Lcom/zui/gallery/glrenderer/GLCanvas;IIIFFF)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 631
    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    add-float v2, p5, p7

    add-float/2addr p7, p6

    .line 632
    invoke-virtual {v1, p5, p6, v2, p7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 633
    sget p5, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    int-to-float p6, p5

    int-to-float p5, p5

    const/4 p7, 0x0

    invoke-virtual {v0, p7, p7, p6, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 635
    invoke-direct {p0, p2, p3, p4}, Lcom/zui/gallery/ui/TileImageView;->getTile(III)Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 637
    invoke-virtual {p5}, Lcom/zui/gallery/ui/TileImageView$Tile;->isContentValid()Z

    move-result p6

    if-nez p6, :cond_2

    .line 638
    iget p6, p5, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 p7, 0x8

    const/4 v2, 0x0

    if-ne p6, p7, :cond_1

    .line 639
    iget p6, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQuota:I

    if-lez p6, :cond_0

    add-int/lit8 p6, p6, -0x1

    .line 640
    iput p6, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQuota:I

    .line 641
    invoke-virtual {p5, p1}, Lcom/zui/gallery/ui/TileImageView$Tile;->updateContent(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 643
    :cond_0
    iput-boolean v2, p0, Lcom/zui/gallery/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 645
    :cond_1
    iget p6, p5, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 p7, 0x10

    if-eq p6, p7, :cond_2

    .line 646
    iput-boolean v2, p0, Lcom/zui/gallery/ui/TileImageView;->mRenderComplete:Z

    .line 647
    invoke-virtual {p0, p5}, Lcom/zui/gallery/ui/TileImageView;->queueForDecode(Lcom/zui/gallery/ui/TileImageView$Tile;)V

    .line 650
    :cond_2
    :goto_0
    invoke-static {p5, p1, v0, v1}, Lcom/zui/gallery/ui/TileImageView;->drawTile(Lcom/zui/gallery/ui/TileImageView$Tile;Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p5

    if-eqz p5, :cond_3

    return-void

    .line 652
    :cond_3
    iget-object p5, p0, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz p5, :cond_4

    .line 653
    sget p6, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    shl-int p4, p6, p4

    .line 654
    invoke-interface {p5}, Lcom/zui/gallery/ui/ScreenNail;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget p6, p0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 655
    iget-object p6, p0, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {p6}, Lcom/zui/gallery/ui/ScreenNail;->getHeight()I

    move-result p6

    int-to-float p6, p6

    iget p7, p0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    int-to-float p7, p7

    div-float/2addr p6, p7

    int-to-float p7, p2

    mul-float/2addr p7, p5

    int-to-float v2, p3

    mul-float/2addr v2, p6

    add-int/2addr p2, p4

    int-to-float p2, p2

    mul-float/2addr p2, p5

    add-int/2addr p3, p4

    int-to-float p3, p3

    mul-float/2addr p3, p6

    .line 656
    invoke-virtual {v0, p7, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 658
    iget-object p2, p0, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {p2, p1, v0, v1}, Lcom/zui/gallery/ui/ScreenNail;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_4
    return-void
.end method

.method public freeTextures()V
    .locals 5

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/zui/gallery/ui/TileImageView;->mIsTextureFreed:Z

    .line 378
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileDecoder:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 385
    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView;->mTileDecoder:Lcom/zui/gallery/util/Future;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 390
    iget-object v4, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/TileImageView$Tile;

    .line 391
    invoke-virtual {v4}, Lcom/zui/gallery/ui/TileImageView$Tile;->recycle()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$Tile;->recycle()V

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    goto :goto_1

    .line 404
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/TileImageView;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    return-void

    :catchall_0
    move-exception v0

    .line 404
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getImageCenter(Landroid/graphics/Point;)V
    .locals 6

    .line 342
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getWidth()I

    move-result v0

    .line 343
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getHeight()I

    move-result v1

    .line 349
    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 350
    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    sub-int/2addr v2, v3

    .line 351
    iget v3, p0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    goto :goto_0

    .line 353
    :cond_0
    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    sub-int/2addr v2, v3

    .line 354
    iget v3, p0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    :goto_0
    sub-int/2addr v3, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    int-to-float v2, v2

    .line 359
    iget v5, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v1

    div-float/2addr v0, v4

    int-to-float v1, v3

    .line 360
    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public getImageRect()Landroid/graphics/Rect;
    .locals 6

    .line 833
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView;->mOffsetX:I

    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mOffsetY:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/ui/TileImageView;->mOffsetX:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/zui/gallery/ui/TileImageView;->mOffsetY:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 3

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 289
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 292
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/TileImageView$Tile;

    .line 295
    invoke-virtual {p0, v2}, Lcom/zui/gallery/ui/TileImageView;->recycleTile(Lcom/zui/gallery/ui/TileImageView$Tile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .line 183
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->invalidateTiles()V

    .line 184
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    .line 187
    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    .line 188
    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    goto :goto_0

    .line 190
    :cond_0
    invoke-interface {v0}, Lcom/zui/gallery/ui/TileImageView$TileSource;->getScreenNail()Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/TileImageView;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/zui/gallery/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/zui/gallery/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/zui/gallery/ui/TileImageView$TileSource;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    .line 195
    :goto_0
    iget v0, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    .line 196
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 202
    invoke-super/range {p0 .. p5}, Lcom/zui/gallery/ui/GLView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 203
    iget p1, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    iget p2, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    iget p3, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    iget p4, p0, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileDecoder:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v2, Lcom/zui/gallery/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/zui/gallery/ui/TileImageView;Lcom/zui/gallery/ui/TileImageView$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileDecoder:Lcom/zui/gallery/util/Future;

    .line 412
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v0, :cond_2

    .line 413
    iget v0, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/zui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/zui/gallery/ui/TileImageView;->mIsTextureFreed:Z

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/zui/gallery/ui/TileImageView$TileSource;->getScreenNail()Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/TileImageView;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    :cond_2
    return-void
.end method

.method declared-synchronized queueForDecode(Lcom/zui/gallery/ui/TileImageView$Tile;)V
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 513
    iput v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 514
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method queueForUpload(Lcom/zui/gallery/ui/TileImageView$Tile;)V
    .locals 2

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mUploadQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z

    .line 505
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iget-object p1, p0, Lcom/zui/gallery/ui/TileImageView;->mTileUploader:Lcom/zui/gallery/ui/TileImageView$TileUploader;

    iget-object p1, p1, Lcom/zui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mTileUploader:Lcom/zui/gallery/ui/TileImageView$TileUploader;

    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 505
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized recycleTile(Lcom/zui/gallery/ui/TileImageView$Tile;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 557
    monitor-exit p0

    return-void

    .line 558
    :cond_0
    :try_start_0
    iget v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    .line 559
    iput v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0x40

    .line 562
    :try_start_1
    iput v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 563
    iget-object v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 564
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 565
    iput-object v0, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/zui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x1

    .line 421
    iput v0, v9, Lcom/zui/gallery/ui/TileImageView;->mUploadQuota:I

    .line 422
    iput-boolean v0, v9, Lcom/zui/gallery/ui/TileImageView;->mRenderComplete:Z

    .line 424
    iget v0, v9, Lcom/zui/gallery/ui/TileImageView;->mLevel:I

    .line 425
    iget v1, v9, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    const/4 v2, 0x2

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    if-eqz v12, :cond_1

    .line 430
    invoke-interface {v10, v12}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v3

    int-to-float v5, v4

    .line 433
    invoke-interface {v10, v2, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 434
    invoke-interface {v10, v1, v5, v5, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v4

    int-to-float v2, v2

    .line 435
    invoke-interface {v10, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 439
    :cond_1
    :try_start_0
    iget v1, v9, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    if-eq v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    iget-object v1, v9, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, v9, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->noDraw()V

    .line 444
    :cond_2
    sget v1, Lcom/zui/gallery/ui/TileImageView;->sTileSize:I

    shl-int v13, v1, v0

    int-to-float v1, v13

    .line 445
    iget v2, v9, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    mul-float v14, v1, v2

    .line 446
    iget-object v15, v9, Lcom/zui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 448
    iget v1, v15, Landroid/graphics/Rect;->top:I

    move v8, v1

    move v7, v11

    :goto_1
    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v1, :cond_5

    .line 449
    iget v1, v9, Lcom/zui/gallery/ui/TileImageView;->mOffsetY:I

    int-to-float v1, v1

    int-to-float v2, v7

    mul-float/2addr v2, v14

    add-float v16, v1, v2

    .line 450
    iget v1, v15, Landroid/graphics/Rect;->left:I

    move v6, v1

    move v5, v11

    :goto_2
    iget v1, v15, Landroid/graphics/Rect;->right:I

    if-ge v6, v1, :cond_3

    .line 451
    iget v1, v9, Lcom/zui/gallery/ui/TileImageView;->mOffsetX:I

    int-to-float v1, v1

    int-to-float v2, v5

    mul-float/2addr v2, v14

    add-float v17, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v6

    move v4, v8

    move/from16 v18, v5

    move v5, v0

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v20, v8

    move v8, v14

    .line 452
    invoke-virtual/range {v1 .. v8}, Lcom/zui/gallery/ui/TileImageView;->drawTile(Lcom/zui/gallery/glrenderer/GLCanvas;IIIFFF)V

    add-int v6, v19, v13

    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v17

    move/from16 v8, v20

    goto :goto_2

    :cond_3
    move/from16 v17, v7

    move/from16 v20, v8

    add-int v8, v20, v13

    add-int/lit8 v7, v17, 0x1

    goto :goto_1

    .line 455
    :cond_4
    iget-object v0, v9, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v0, :cond_5

    .line 456
    iget-object v1, v9, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    iget v3, v9, Lcom/zui/gallery/ui/TileImageView;->mOffsetX:I

    iget v4, v9, Lcom/zui/gallery/ui/TileImageView;->mOffsetY:I

    iget v0, v9, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    int-to-float v0, v0

    iget v2, v9, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    .line 457
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v0, v9, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    int-to-float v0, v0

    iget v6, v9, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    .line 458
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v2, p1

    .line 456
    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/ui/ScreenNail;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v12, :cond_6

    .line 464
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 467
    :cond_6
    iget-boolean v0, v9, Lcom/zui/gallery/ui/TileImageView;->mRenderComplete:Z

    if-eqz v0, :cond_7

    .line 468
    iget-boolean v0, v9, Lcom/zui/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v0, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/ui/TileImageView;->uploadBackgroundTiles(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    goto :goto_3

    .line 470
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/TileImageView;->invalidate()V

    :cond_8
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    if-eqz v12, :cond_9

    .line 464
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 465
    :cond_9
    throw v0
.end method

.method public setModel(Lcom/zui/gallery/ui/TileImageView$TileSource;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView;->mModel:Lcom/zui/gallery/ui/TileImageView$TileSource;

    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1

    .line 364
    iget v0, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 366
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterX:I

    .line 367
    iput p2, p0, Lcom/zui/gallery/ui/TileImageView;->mCenterY:I

    .line 368
    iput p3, p0, Lcom/zui/gallery/ui/TileImageView;->mScale:F

    .line 369
    iput p4, p0, Lcom/zui/gallery/ui/TileImageView;->mRotation:I

    .line 370
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    .line 371
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    return-void
.end method
