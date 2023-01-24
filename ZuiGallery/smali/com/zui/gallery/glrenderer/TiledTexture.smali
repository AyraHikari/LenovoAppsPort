.class public Lcom/zui/gallery/glrenderer/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/zui/gallery/glrenderer/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/glrenderer/TiledTexture$Tile;,
        Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I = 0x1

.field private static final CONTENT_SIZE:I = 0xfe

.field private static final INIT_CAPACITY:I = 0x8

.field private static final TILE_SIZE:I = 0x100

.field private static final UPLOAD_TILE_LIMIT:J = 0x4L

.field private static sBitmapPaint:Landroid/graphics/Paint;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sCanvasP3:Landroid/graphics/Canvas;

.field private static final sFreeTileLock:Ljava/lang/Object;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sUpLoadBitmapP3:Landroid/graphics/Bitmap;

.field private static sUploadBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I

.field private sFreeTileHead:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileHead:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mUploadIndex:I

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget v2, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 239
    iget v4, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/TiledTexture;->obtainTile()Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    move-result-object v6

    .line 241
    iput v3, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    .line 242
    iput v5, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    .line 243
    iput-object p1, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 244
    iget v7, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    sub-int/2addr v7, v3

    const/16 v8, 0xfe

    .line 245
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v9, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    sub-int/2addr v9, v5

    .line 246
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 244
    invoke-virtual {v6, v7, v8}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->setSize(II)V

    .line 247
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v5, v5, 0xfe

    goto :goto_1

    :cond_0
    add-int/lit16 v3, v3, 0xfe

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    iput-object p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/glrenderer/TiledTexture;Lcom/zui/gallery/glrenderer/GLCanvas;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/TiledTexture;->uploadNextTile(Lcom/zui/gallery/glrenderer/GLCanvas;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Landroid/graphics/Canvas;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Paint;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Canvas;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sCanvasP3:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Paint;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/Bitmap;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUpLoadBitmapP3:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/Bitmap;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static freeResources()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 268
    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 269
    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 270
    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 271
    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUpLoadBitmapP3:Landroid/graphics/Bitmap;

    .line 272
    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUpLoadBitmapP3:Landroid/graphics/Bitmap;

    return-void
.end method

.method private freeTile(Lcom/zui/gallery/glrenderer/TiledTexture$Tile;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->invalidateContent()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p1, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 195
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileHead:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    iput-object v1, p1, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    .line 197
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileHead:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 3

    .line 305
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr p4, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p3

    mul-float/2addr p1, p7

    add-float/2addr p5, p1

    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private obtainTile()Lcom/zui/gallery/glrenderer/TiledTexture$Tile;
    .locals 4

    .line 202
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileHead:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    invoke-direct {v1, v2}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;-><init>(Lcom/zui/gallery/glrenderer/TiledTexture$1;)V

    monitor-exit v0

    return-object v1

    .line 205
    :cond_0
    iget-object v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    iput-object v3, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->sFreeTileHead:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    .line 206
    iput-object v2, v1, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    .line 207
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareResources()V
    .locals 4

    .line 276
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 277
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v2, Lcom/zui/gallery/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 279
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 281
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 282
    sget-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {v1, v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sUpLoadBitmapP3:Landroid/graphics/Bitmap;

    .line 285
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/zui/gallery/glrenderer/TiledTexture;->sUpLoadBitmapP3:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/zui/gallery/glrenderer/TiledTexture;->sCanvasP3:Landroid/graphics/Canvas;

    return-void
.end method

.method private uploadNextTile(Lcom/zui/gallery/glrenderer/GLCanvas;)Z
    .locals 5

    .line 212
    iget v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    .line 214
    :cond_0
    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    iget v2, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mUploadIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mUploadIndex:I

    aget-object v0, v0, v2

    .line 219
    iget-object v2, v0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->isLoaded()Z

    move-result v2

    .line 221
    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->updateContent(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    if-nez v2, :cond_1

    .line 227
    invoke-virtual {v0, p1, v4, v4}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 229
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v0, v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    return v3

    :catchall_0
    move-exception p1

    .line 229
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 386
    iget v4, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/TiledTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 17

    move-object/from16 v1, p0

    .line 334
    iget-object v0, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 335
    iget-object v10, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move/from16 v2, p4

    int-to-float v2, v2

    .line 336
    iget v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    int-to-float v3, v3

    div-float v11, v2, v3

    move/from16 v2, p5

    int-to-float v2, v2

    .line 337
    iget v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 338
    iget-object v13, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    monitor-enter v13

    const/4 v2, 0x0

    .line 339
    :try_start_0
    iget-object v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v14, v3

    move v15, v2

    :goto_0
    if-ge v15, v14, :cond_0

    .line 340
    iget-object v2, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    aget-object v9, v2, v15

    .line 341
    iget v2, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v2, v2

    iget v3, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    iget v2, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v2, v2

    iget v3, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v8, p2

    int-to-float v6, v8

    move/from16 v7, p3

    int-to-float v3, v7

    move-object v2, v10

    move/from16 v16, v3

    move-object v3, v0

    move/from16 v7, v16

    move v8, v11

    move-object/from16 v16, v10

    move-object v10, v9

    move v9, v12

    .line 343
    invoke-static/range {v2 .. v9}, Lcom/zui/gallery/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 344
    iget v2, v10, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v10, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 345
    iget-object v2, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v4, p1

    invoke-interface {v4, v10, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    goto :goto_0

    .line 347
    :cond_0
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 352
    iget-object v10, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 353
    iget-object v11, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 354
    iget v12, v0, Landroid/graphics/RectF;->left:F

    .line 355
    iget v13, v0, Landroid/graphics/RectF;->top:F

    .line 356
    iget v14, v2, Landroid/graphics/RectF;->left:F

    .line 357
    iget v15, v2, Landroid/graphics/RectF;->top:F

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v16, v3, v4

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v17, v2, v3

    .line 361
    iget-object v9, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    monitor-enter v9

    const/4 v2, 0x0

    .line 362
    :try_start_0
    iget-object v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v8, v3

    move v7, v2

    :goto_0
    if-ge v7, v8, :cond_1

    .line 363
    iget-object v2, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    aget-object v6, v2, v7

    .line 364
    iget v2, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v2, v2

    iget v3, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    iget v2, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v2, v2

    iget v3, v6, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v3, v3

    invoke-virtual {v10, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 366
    invoke-virtual {v10, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    goto :goto_1

    :cond_0
    move-object v2, v11

    move-object v3, v10

    move v4, v12

    move v5, v13

    move-object v0, v6

    move v6, v14

    move/from16 v18, v7

    move v7, v15

    move/from16 v19, v8

    move/from16 v8, v16

    move-object/from16 v20, v9

    move/from16 v9, v17

    .line 367
    :try_start_1
    invoke-static/range {v2 .. v9}, Lcom/zui/gallery/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 368
    iget v2, v0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v10, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v2, p1

    .line 369
    invoke-interface {v2, v0, v10, v11}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_1
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v0, p2

    move/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_0

    :cond_1
    move-object/from16 v20, v9

    .line 371
    monitor-exit v20

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v20, v9

    :goto_2
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public drawMixed(Lcom/zui/gallery/glrenderer/GLCanvas;IFIIII)V
    .locals 17

    move-object/from16 v1, p0

    .line 315
    iget-object v0, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 316
    iget-object v10, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move/from16 v2, p6

    int-to-float v2, v2

    .line 317
    iget v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    int-to-float v3, v3

    div-float v11, v2, v3

    move/from16 v2, p7

    int-to-float v2, v2

    .line 318
    iget v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 319
    iget-object v13, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    monitor-enter v13

    const/4 v2, 0x0

    .line 320
    :try_start_0
    iget-object v3, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v14, v3

    move v15, v2

    :goto_0
    if-ge v15, v14, :cond_0

    .line 321
    iget-object v2, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    aget-object v9, v2, v15

    .line 322
    iget v2, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v2, v2

    iget v3, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 323
    iget v2, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v2, v2

    iget v3, v9, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v8, p4

    int-to-float v6, v8

    move/from16 v7, p5

    int-to-float v3, v7

    move-object v2, v10

    move/from16 v16, v3

    move-object v3, v0

    move/from16 v7, v16

    move v8, v11

    move-object/from16 v16, v10

    move-object v10, v9

    move v9, v12

    .line 324
    invoke-static/range {v2 .. v9}, Lcom/zui/gallery/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 325
    iget v2, v10, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v10, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 326
    iget-object v7, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v8, v1, Lcom/zui/gallery/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v3, p1

    move-object v4, v10

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v3 .. v8}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawMixed(Lcom/zui/gallery/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    goto :goto_0

    .line 328
    :cond_0
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 254
    iget v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    monitor-enter v0

    const/4 v1, 0x0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 261
    iget-object v3, p0, Lcom/zui/gallery/glrenderer/TiledTexture;->mTiles:[Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/zui/gallery/glrenderer/TiledTexture;->freeTile(Lcom/zui/gallery/glrenderer/TiledTexture$Tile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
