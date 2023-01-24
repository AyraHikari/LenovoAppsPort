.class public Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;,
        Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalVideoThumbnailDecoder"


# instance fields
.field private FRAME_COUNT:I

.field private TASK_COUNT:I

.field private final mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mFrameHeight:I

.field private final mMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mVideoWidth:I

.field private pre_frame_width:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Landroid/media/MediaMetadataRetriever;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->TASK_COUNT:I

    const/16 v0, 0xa

    .line 23
    iput v0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->FRAME_COUNT:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mVideoWidth:I

    .line 29
    iput-object p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 30
    iput-object p2, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->pre_frame_width:I

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mFrameHeight:I

    return p0
.end method

.method private combineBitmap([Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 106
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 107
    aget-object v3, p1, v1

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 109
    iget v5, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->pre_frame_width:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p2, v2, v5, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 111
    :cond_0
    iget v2, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->pre_frame_width:I

    mul-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p2, v3, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method private doTask(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;)V
    .locals 9

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v8, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;-><init>(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;Lcom/zui/gallery/util/ThreadPool$JobContext;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v8}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    return-void
.end method

.method private recycleBitmap([Landroid/graphics/Bitmap;)V
    .locals 4

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public decodeVideo(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v6, p0

    const-string v7, "LocalVideoThumbnailDecoder"

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 51
    iget v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mVideoWidth:I

    iget v1, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->FRAME_COUNT:I

    div-int/2addr v0, v1

    iput v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->pre_frame_width:I

    .line 52
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    iget v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->TASK_COUNT:I

    invoke-direct {v10, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 53
    iget v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mVideoWidth:I

    iget v1, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mFrameHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 54
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    iget v2, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->FRAME_COUNT:I

    int-to-long v3, v2

    div-long v13, v0, v3

    .line 58
    iget v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->TASK_COUNT:I

    div-int v15, v2, v0

    .line 59
    rem-int v16, v2, v0

    .line 60
    new-array v5, v2, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    move v4, v0

    .line 61
    :goto_0
    iget v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->TASK_COUNT:I

    const/4 v1, 0x0

    if-ge v4, v0, :cond_2

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {v6, v5}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->recycleBitmap([Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    int-to-long v0, v4

    int-to-long v2, v15

    mul-long/2addr v2, v13

    mul-long v18, v0, v2

    mul-int v21, v4, v15

    .line 69
    iget v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->TASK_COUNT:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_1

    add-int v0, v15, v16

    move/from16 v20, v0

    goto :goto_1

    :cond_1
    move/from16 v20, v15

    .line 72
    :goto_1
    new-instance v2, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    long-to-float v0, v13

    move-object/from16 v17, v2

    move/from16 v22, v0

    invoke-direct/range {v17 .. v22}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;-><init>(JIIF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v5

    move/from16 v17, v4

    move-object v4, v10

    move-wide/from16 v18, v13

    move-object v13, v5

    move-object/from16 v5, p2

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->doTask(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;)V

    add-int/lit8 v4, v17, 0x1

    move-object v5, v13

    move-wide/from16 v13, v18

    goto :goto_0

    :cond_2
    move-object v13, v5

    .line 78
    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "extract frame interrupted"

    .line 80
    invoke-static {v7, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-direct {v6, v13}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->recycleBitmap([Landroid/graphics/Bitmap;)V

    return-object v1

    .line 86
    :cond_3
    invoke-direct {v6, v13, v12}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->combineBitmap([Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 87
    invoke-direct {v6, v13}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->recycleBitmap([Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v0, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->FRAME_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frame spend time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "millisec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v7, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method public setFrameCount(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->FRAME_COUNT:I

    return-void
.end method

.method public setFrameHeight(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mFrameHeight:I

    return-void
.end method

.method public setTaskCount(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->TASK_COUNT:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->mVideoWidth:I

    return-void
.end method
