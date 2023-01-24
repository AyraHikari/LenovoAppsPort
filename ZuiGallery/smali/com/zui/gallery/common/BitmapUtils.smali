.class public Lcom/zui/gallery/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final CONTINUES_COVER_MARK1_COLOR:I = 0x66

.field private static final CONTINUES_COVER_MARK2_COLOR:I = 0xc4

.field private static final CONTINUES_COVER_MARK_HEIGHT:I = 0x5

.field private static final CONTINUES_COVER_OFFSET_X:I = 0x6

.field private static final CONTINUES_COVER_OFFSET_Y:I = 0x3

.field private static DEFAULT_BUFFER_SIZE:I = 0x100000

.field private static final DEFAULT_JPEG_QUALITY:I = 0x50

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final UNCONSTRAINED:I = -0x1

.field private static final faceRectDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapTo_JPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "BitmapUtils"

    const/4 v1, 0x0

    .line 577
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 579
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_0
    const-string p1, "FILE IS ALREADY exist"

    .line 581
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 584
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 585
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 586
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :cond_1
    const-string p0, "compress error"

    .line 588
    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 599
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 591
    :goto_3
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x0

    if-eqz v1, :cond_2

    .line 596
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 599
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return p0

    :goto_5
    if-eqz v1, :cond_3

    .line 596
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 599
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 601
    :cond_3
    :goto_6
    throw p0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1082
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BitmapUtils"

    const-string v1, "close fail "

    .line 1084
    invoke-static {v0, v1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    const/16 v0, 0x50

    .line 437
    invoke-static {p0, v0}, Lcom/zui/gallery/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2

    .line 441
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 442
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 443
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int v0, p0, p1

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    float-to-double v2, v0

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p3, v2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    :goto_0
    if-ne p2, v1, :cond_2

    return v0

    .line 106
    :cond_2
    div-int/2addr p0, p2

    div-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 107
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static computeSampleSize(F)I
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v2, v0

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 140
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result p0

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x7

    .line 141
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method public static computeSampleSize(IIII)I
    .locals 0

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/zui/gallery/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    .line 90
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 91
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 131
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->prevPowerOf2(I)I

    move-result p0

    goto :goto_0

    .line 132
    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 0

    .line 115
    div-int/2addr p0, p2

    div-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x8

    if-gt p0, p1, :cond_1

    .line 120
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->prevPowerOf2(I)I

    move-result p0

    goto :goto_0

    .line 121
    :cond_1
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static createContinuesCover(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 470
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 471
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 472
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, -0x1

    .line 473
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    const/4 v6, 0x5

    const/16 v7, 0xc

    const/4 v8, 0x0

    if-ne p1, v5, :cond_0

    .line 476
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v10, v0, -0xc

    invoke-direct {v9, v7, v8, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_1

    .line 479
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v10, v1, -0x5

    add-int/lit8 v11, v0, -0xc

    invoke-direct {v9, v7, v10, v11, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 482
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v10, v1, -0x5

    add-int/lit8 v11, v0, -0xc

    invoke-direct {v9, v10, v7, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 486
    :cond_2
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v10, v0, -0xc

    invoke-direct {v9, v8, v7, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 489
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 490
    invoke-virtual {v3, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 491
    invoke-virtual {v3, p0, v7, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v11, 0x66

    .line 492
    invoke-virtual {v3, v11, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 493
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 495
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    const/4 v11, 0x6

    if-ne p1, v5, :cond_3

    sub-int/2addr v0, v11

    .line 497
    invoke-virtual {v9, v11, v8, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    add-int/lit8 v6, v1, -0x5

    sub-int/2addr v0, v11

    .line 500
    invoke-virtual {v9, v11, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    add-int/lit8 v6, v1, -0x5

    sub-int/2addr v0, v11

    .line 503
    invoke-virtual {v9, v6, v11, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    sub-int/2addr v0, v11

    .line 507
    invoke-virtual {v9, v8, v11, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    const/16 v0, 0xb4

    const/high16 v6, 0x41000000    # 8.0f

    if-ne p1, v5, :cond_6

    .line 512
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_6
    const/high16 v11, -0x3f000000    # -8.0f

    if-ne p1, v4, :cond_7

    .line 514
    invoke-virtual {v3, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 516
    invoke-virtual {v3, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_8
    if-ne p1, v0, :cond_9

    .line 518
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 520
    :cond_9
    :goto_2
    invoke-virtual {v3, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 521
    invoke-virtual {v3, p0, v7, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v6, 0xc4

    .line 522
    invoke-virtual {v3, v6, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 523
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    const/16 v6, 0x10

    int-to-float v1, v1

    int-to-float v6, v6

    sub-float v8, v1, v6

    div-float/2addr v8, v1

    .line 528
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v9, 0x3f800000    # 1.0f

    if-eq p1, v5, :cond_b

    if-ne p1, v4, :cond_a

    goto :goto_3

    .line 532
    :cond_a
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    .line 530
    :cond_b
    :goto_3
    invoke-virtual {v1, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_4
    if-ne p1, v5, :cond_c

    .line 535
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_c
    if-ne p1, v4, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    if-ne p1, v0, :cond_f

    .line 541
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 544
    :cond_f
    :goto_5
    invoke-virtual {v3, p0, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 380
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 384
    array-length v3, p0

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 428
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :cond_0
    const-wide/32 v2, 0x186a0

    const/4 p0, 0x2

    .line 391
    :try_start_3
    invoke-virtual {v1, v2, v3, p0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 428
    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object p0

    :catch_2
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_5
    const-string v2, "BitmapUtils"

    const-string v3, "createVideoThumbnail"

    .line 421
    invoke-static {v2, v3, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 428
    :try_start_6
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_1
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 432
    :catch_5
    :cond_2
    throw p0
.end method

.method public static genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;JJZZLcom/zui/gallery/util/ThreadPool$JobContext;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 612
    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    .line 613
    invoke-virtual {v7, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    .line 617
    new-instance v9, Landroid/media/MediaMuxer;

    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-direct {v9, v11, v10}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 621
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v8}, Ljava/util/HashMap;-><init>(I)V

    const/4 v12, -0x1

    move v13, v10

    :goto_0
    if-ge v13, v8, :cond_3

    .line 625
    invoke-virtual {v7, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    const-string v15, "mime"

    .line 626
    invoke-virtual {v14, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v10, "audio/"

    .line 630
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v16, 0x1

    if-eqz v10, :cond_0

    if-eqz p6, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v10, "video/"

    .line 632
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz p7, :cond_1

    const-string v10, "durationUs"

    .line 634
    invoke-virtual {v14, v10}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_2

    .line 638
    invoke-virtual {v7, v13}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 639
    invoke-virtual {v9, v14}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v10

    .line 640
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "max-input-size"

    .line 641
    invoke-virtual {v14, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 642
    invoke-virtual {v14, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    if-le v10, v12, :cond_2

    move v12, v10

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_0

    .line 647
    :cond_3
    invoke-interface/range {p8 .. p8}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 648
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V

    .line 649
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    return-void

    :cond_4
    if-gez v12, :cond_5

    .line 653
    sget v12, Lcom/zui/gallery/common/BitmapUtils;->DEFAULT_BUFFER_SIZE:I

    .line 657
    :cond_5
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 658
    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 659
    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x9

    .line 662
    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v16, 0x0

    const-string v15, "BitmapUtils"

    if-eqz v0, :cond_9

    .line 665
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    long-to-int v0, v1

    .line 666
    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v18, v5

    long-to-int v5, v3

    .line 667
    :try_start_1
    div-int/lit16 v5, v5, 0x3e8

    if-ne v0, v5, :cond_8

    const-wide/16 v5, 0x3e8

    add-long v20, v3, v5

    cmp-long v0, v20, v13

    if-lez v0, :cond_7

    sub-long v0, v1, v5

    cmp-long v2, v0, v16

    if-ltz v2, :cond_6

    move-wide v1, v0

    goto :goto_2

    :cond_6
    move-wide v3, v13

    move-wide/from16 v1, v16

    goto :goto_2

    :cond_7
    move-wide/from16 v3, v20

    .line 680
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startTime "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " endTime "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " video duration "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide/from16 v18, v5

    :goto_3
    const-string v5, "parser video duration exception "

    .line 682
    invoke-static {v15, v5, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_9
    move-wide/from16 v18, v5

    :goto_4
    if-eqz v10, :cond_a

    .line 687
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 689
    invoke-virtual {v9, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_a
    cmp-long v0, v1, v16

    if-lez v0, :cond_b

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    const/4 v0, 0x2

    .line 694
    invoke-virtual {v7, v1, v2, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 696
    :cond_b
    invoke-interface/range {p8 .. p8}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 697
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V

    .line 698
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 699
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    return-void

    .line 708
    :cond_c
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 709
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 712
    :try_start_2
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    move-wide/from16 v5, v16

    .line 713
    :goto_5
    invoke-interface/range {p8 .. p8}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    .line 714
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 715
    invoke-virtual {v7, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 716
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v2, :cond_d

    const-string v0, "Saw input EOS."

    .line 717
    invoke-static {v15, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 718
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    .line 721
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    iput-wide v12, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v10, v3, v16

    if-lez v10, :cond_e

    .line 722
    iget-wide v12, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v10, v12, v3

    if-ltz v10, :cond_e

    const-string v0, "The current sample is over the trim end time."

    .line 723
    invoke-static {v15, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 726
    :cond_e
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 727
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    const-wide/16 v12, 0x1

    add-long/2addr v5, v12

    .line 729
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "extract frame count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string/jumbo v10, "writeSample"

    .line 732
    invoke-static {v15, v10}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    const-string v10, "advance"

    .line 734
    invoke-static {v15, v10}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 742
    :cond_f
    :goto_6
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V

    .line 743
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V

    .line 744
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 745
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    :try_start_3
    const-string v0, "The source video file is malformed"

    .line 740
    invoke-static {v15, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 747
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trim video spend time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 742
    :goto_8
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V

    .line 743
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V

    .line 744
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 745
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 746
    throw v0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    .line 166
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getFaceRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 0

    const-class p0, Lcom/zui/gallery/common/BitmapUtils;

    monitor-enter p0

    .line 343
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1025
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "."

    .line 1028
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1029
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_1

    .line 1030
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1031
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1032
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1089
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1090
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1089
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1091
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1094
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xbdbdbe

    .line 1095
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1097
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1099
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060089

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/4 v5, 0x1

    .line 1101
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1103
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1104
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f05002c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 1105
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1106
    invoke-virtual {v1, v4, v3, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1107
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v4

    .line 1108
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1109
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1110
    invoke-virtual {v1, v5, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1112
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1113
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 1114
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1115
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-object v0
.end method

.method public static isImageType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1040
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "."

    .line 1043
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 1044
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v2

    if-le v3, v1, :cond_1

    .line 1045
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1046
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1048
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file type is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BitmapUtils"

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "image/"

    .line 1050
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 457
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/jpeg"

    .line 458
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "image/"

    .line 450
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "image/gif"

    .line 451
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isVideoType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1061
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "."

    .line 1064
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 1065
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v2

    if-le v3, v1, :cond_1

    .line 1066
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1067
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1068
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1069
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "video/"

    .line 1070
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method public static recycleSilently(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 352
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "BitmapUtils"

    const-string/jumbo v1, "unable recycle bitmap"

    .line 354
    invoke-static {v0, v1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    if-lt v0, p1, :cond_1

    if-lt v1, p2, :cond_1

    .line 219
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_1
    if-lt v0, p1, :cond_2

    if-ge v1, p2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    if-ge v0, p1, :cond_3

    if-lt v1, p2, :cond_3

    goto :goto_0

    .line 225
    :cond_3
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 228
    :goto_0
    invoke-static {p0}, Lcom/zui/gallery/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-float/2addr v3, v2

    .line 229
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float/2addr v5, v2

    .line 230
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 231
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p2, v1

    .line 232
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 234
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    .line 235
    invoke-virtual {v4, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object v0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 192
    invoke-static {p0}, Lcom/zui/gallery/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {p1, p1, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 196
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v5

    .line 197
    invoke-virtual {v4, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 199
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v4, p0, v1, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    .line 202
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public static resizeAndFaceCropCenter(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 9

    .line 255
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 256
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 262
    invoke-static {p0}, Lcom/zui/gallery/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 265
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 268
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    iget v8, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-direct {v1, v3, v7, v8, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 271
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float p2, v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    .line 272
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v7, v2, v7

    div-float/2addr v7, v3

    .line 274
    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, p2

    .line 275
    iget p2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v7

    .line 277
    new-instance v1, Landroid/graphics/RectF;

    add-float v7, v3, v2

    add-float/2addr v2, p2

    invoke-direct {v1, v3, p2, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 280
    invoke-virtual {v5, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    neg-float v1, v3

    neg-float p2, p2

    .line 281
    invoke-virtual {v4, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 285
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    move v3, v6

    .line 288
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v7, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    .line 289
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v7, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v7

    sub-float/2addr v3, v2

    cmpg-float v2, v3, v6

    if-gez v2, :cond_3

    move v3, v6

    .line 294
    :cond_3
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    :goto_0
    move p2, v6

    goto :goto_1

    .line 296
    :cond_4
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    .line 297
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    sub-float/2addr p2, v1

    cmpg-float v1, p2, v6

    if-gez v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    neg-float v1, v3

    neg-float p2, p2

    .line 302
    invoke-virtual {v4, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    :goto_2
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 307
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 308
    invoke-virtual {v4, p0, v6, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_6

    .line 319
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-object p1
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 148
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p0

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 156
    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 175
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    return-object p0

    .line 179
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 363
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 364
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 365
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 367
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static saveAsVideo(Ljava/lang/String;JJLjava/lang/String;ZZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 894
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAsVideoUsingMuxer  lenth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p3

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v12, "BitmapUtils"

    invoke-static {v12, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v13, Landroid/media/MediaExtractor;

    invoke-direct {v13}, Landroid/media/MediaExtractor;-><init>()V

    move-object v4, v13

    move-object v5, v0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 900
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 901
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    .line 904
    new-instance v14, Landroid/media/MediaMuxer;

    const/4 v15, 0x0

    move-object/from16 v5, p5

    invoke-direct {v14, v5, v15}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 908
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    move v5, v15

    :goto_0
    if-ge v5, v4, :cond_3

    .line 912
    invoke-virtual {v13, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v7, "mime"

    .line 913
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveAsVideoUsingMuxer  mime = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "audio/"

    .line 917
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v15, 0x1

    if-eqz v9, :cond_0

    if-eqz p6, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v9, "video/"

    .line 919
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p7, :cond_1

    const-string v7, "durationUs"

    .line 921
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_2

    .line 925
    invoke-virtual {v13, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 926
    invoke-virtual {v14, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    .line 927
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "max-input-size"

    .line 928
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 929
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x0

    goto :goto_0

    .line 936
    :cond_3
    sget v15, Lcom/zui/gallery/common/BitmapUtils;->DEFAULT_BUFFER_SIZE:I

    .line 940
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v4, v9

    move-object v5, v0

    move-wide/from16 v6, p1

    move-object v10, v8

    move-object v11, v9

    move-wide/from16 v8, p3

    .line 941
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/16 v0, 0x18

    .line 942
    invoke-virtual {v11, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x9

    .line 945
    invoke-virtual {v11, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 948
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " video duration "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "parser video duration exception "

    .line 951
    invoke-static {v12, v5, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 956
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 958
    invoke-virtual {v14, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_5
    const-wide/16 v4, 0x0

    .line 978
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 979
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 980
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bufferSize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :try_start_1
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->start()V

    const/4 v7, 0x0

    .line 985
    :goto_3
    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 986
    invoke-virtual {v13, v0, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 987
    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v7, :cond_6

    const-string v0, "Saw input EOS."

    .line 988
    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 989
    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 992
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 997
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 998
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8

    const-wide/16 v15, 0x1

    add-long/2addr v4, v15

    .line 1000
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extract frame count "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " trackIndex ="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v14, v8, v0, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string/jumbo v8, "writeSample"

    .line 1003
    invoke-static {v12, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->advance()Z

    const-string v8, "advance"

    .line 1005
    invoke-static {v12, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    :try_start_2
    const-string v0, "The source video file is malformed"

    .line 1011
    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    :goto_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1014
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->stop()V

    .line 1015
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->release()V

    .line 1016
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    .line 1017
    invoke-virtual {v11}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trim video spend time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1013
    :goto_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1014
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->stop()V

    .line 1015
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->release()V

    .line 1016
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    .line 1017
    invoke-virtual {v11}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1018
    throw v0
.end method

.method public static saveAsVideoUsingMuxer(Lcom/zui/gallery/data/MicroVideoInfo;Ljava/lang/String;ZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 758
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, v0, Lcom/zui/gallery/data/MicroVideoInfo;->videoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 761
    iget-wide v5, v0, Lcom/zui/gallery/data/MicroVideoInfo;->fileSize:J

    iget-wide v7, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    sub-long v11, v5, v7

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAsVideoUsingMuxer  lenth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v13, "BitmapUtils"

    invoke-static {v13, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v14, Landroid/media/MediaExtractor;

    invoke-direct {v14}, Landroid/media/MediaExtractor;-><init>()V

    .line 764
    iget-wide v7, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    move-object v5, v14

    move-object v6, v4

    move-wide v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 765
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v5

    .line 768
    new-instance v15, Landroid/media/MediaMuxer;

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-direct {v15, v6, v9}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 772
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v5}, Ljava/util/HashMap;-><init>(I)V

    move v6, v9

    :goto_0
    if-ge v6, v5, :cond_3

    .line 776
    invoke-virtual {v14, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "mime"

    .line 777
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 780
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, "saveAsVideoUsingMuxer  mime = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audio/"

    .line 781
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "video/"

    .line 783
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, "durationUs"

    .line 785
    invoke-virtual {v7, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 789
    invoke-virtual {v14, v6}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 790
    invoke-virtual {v15, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    .line 791
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "max-input-size"

    .line 792
    invoke-virtual {v7, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 793
    invoke-virtual {v7, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    const/4 v9, 0x0

    goto :goto_0

    .line 800
    :cond_3
    sget v9, Lcom/zui/gallery/common/BitmapUtils;->DEFAULT_BUFFER_SIZE:I

    .line 804
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 805
    iget-wide v5, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    move-wide/from16 v17, v5

    move-object v5, v7

    move-object v6, v4

    move-object v4, v7

    move-wide/from16 v7, v17

    move-wide/from16 v17, v1

    move v2, v9

    move-object/from16 v16, v10

    const/4 v1, 0x0

    move-wide v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/16 v0, 0x18

    .line 806
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x9

    .line 809
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 812
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " video duration "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v6, "parser video duration exception "

    .line 815
    invoke-static {v13, v6, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 820
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 822
    invoke-virtual {v15, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_5
    const-wide/16 v5, 0x0

    .line 842
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 843
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 844
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " bufferSize "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :try_start_1
    invoke-virtual {v15}, Landroid/media/MediaMuxer;->start()V

    .line 849
    :goto_3
    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 850
    invoke-virtual {v14, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 851
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v2, :cond_6

    const-string v0, "Saw input EOS."

    .line 852
    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    .line 856
    :cond_6
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 861
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 862
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v2

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extract frame count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " trackIndex ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v8, v16

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v2, v0, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string/jumbo v2, "writeSample"

    .line 867
    invoke-static {v13, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->advance()Z

    const-string v2, "advance"

    .line 869
    invoke-static {v13, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    :try_start_2
    const-string v0, "The source video file is malformed"

    .line 875
    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    :goto_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 878
    invoke-virtual {v15}, Landroid/media/MediaMuxer;->stop()V

    .line 879
    invoke-virtual {v15}, Landroid/media/MediaMuxer;->release()V

    .line 880
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->release()V

    .line 881
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trim video spend time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 877
    :goto_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 878
    invoke-virtual {v15}, Landroid/media/MediaMuxer;->stop()V

    .line 879
    invoke-virtual {v15}, Landroid/media/MediaMuxer;->release()V

    .line 880
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->release()V

    .line 881
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 882
    throw v0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 5

    const/4 p0, 0x0

    .line 554
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "thumbnail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 558
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 559
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 560
    :try_start_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, p0, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 570
    :catch_1
    :cond_1
    throw p1

    :catch_2
    move-object v1, p0

    :catch_3
    :goto_1
    if-eqz p0, :cond_2

    .line 566
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    :goto_2
    return-object v1
.end method
