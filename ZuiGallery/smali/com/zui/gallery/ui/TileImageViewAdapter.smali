.class public Lcom/zui/gallery/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/zui/gallery/ui/TileImageView$TileSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mOwnScreenNail:Z

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcom/zui/gallery/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateLevelCount()I
    .locals 2

    .line 75
    iget v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    .line 76
    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 75
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->ceilLog2(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 5

    shl-int v0, p4, p1

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, v0

    add-int/2addr v0, p3

    invoke-direct {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 159
    monitor-exit p0

    return-object p3

    .line 160
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    .line 166
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 168
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isColorModeStand()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 169
    :cond_1
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isColorModeNature()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :cond_2
    shl-int v4, v3, p1

    .line 172
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 176
    monitor-enter p2

    .line 177
    :try_start_1
    invoke-virtual {p2, v0, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 178
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    const-string p2, "TileImageViewAdapter"

    const-string v4, "fail in decoding region"

    .line 181
    invoke-static {p2, v4}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_3
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v2

    .line 186
    :cond_4
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {p4, p4, p2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 188
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    shr-int/2addr v3, p1

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    shr-int p1, v0, p1

    int-to-float p1, p1

    invoke-virtual {p4, v2, v3, p1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 178
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 162
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 49
    :try_start_0
    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 51
    iput v1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    .line 52
    iput v1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    .line 53
    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/zui/gallery/ui/ScreenNail;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 5

    .line 96
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isM11PadDevicie()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    shl-int v0, p4, p1

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, v0

    add-int/2addr v0, p3

    invoke-direct {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 110
    monitor-exit p0

    return-object p3

    .line 114
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    .line 116
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v3

    invoke-virtual {v3, p4, p4}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    .line 122
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 125
    :cond_4
    :goto_1
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 126
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 127
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    shl-int p1, v2, p1

    .line 128
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    iput-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 133
    :try_start_1
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :try_start_2
    invoke-virtual {p2, v1, p4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 135
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v3, :cond_5

    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    .line 138
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object p1

    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 139
    iput-object p3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_5
    if-nez v3, :cond_6

    const-string p1, "TileImageViewAdapter"

    const-string p2, "fail in decoding region"

    .line 144
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v3

    :catchall_0
    move-exception p1

    .line 135
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 137
    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p2, v3, :cond_7

    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_7

    .line 138
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object p2

    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 139
    iput-object p3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 141
    :cond_7
    throw p1

    :catchall_2
    move-exception p1

    .line 116
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 69
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 70
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    .line 71
    invoke-direct {p0}, Lcom/zui/gallery/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScreenNail(Lcom/zui/gallery/ui/ScreenNail;II)V
    .locals 0

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    .line 61
    iput p2, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 62
    iput p3, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/zui/gallery/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
