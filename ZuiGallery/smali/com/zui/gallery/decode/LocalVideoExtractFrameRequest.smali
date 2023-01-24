.class public Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;
.super Lcom/zui/gallery/cache/ImageCacheRequest;
.source "LocalVideoExtractFrameRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;
    }
.end annotation


# instance fields
.field private final DURATION_IN_SEC:I

.field private final MAX_FRAME_COUNT:I

.field private final MIN_FRAME_COUNT:I

.field private TASK_COUNT:I

.field private frame_height:I

.field private mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mLocalFilePath:Ljava/lang/String;

.field private needCreate:Z

.field private pre_frame_width:I

.field private srcBitmap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail_width:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILjava/lang/String;ILjava/util/List;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/app/GalleryApp;",
            "Lcom/zui/gallery/data/Path;",
            "JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)V"
        }
    .end annotation

    move-object v7, p0

    .line 44
    invoke-static {p5}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/cache/ImageCacheRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V

    const/16 v0, 0xa

    .line 29
    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->MIN_FRAME_COUNT:I

    const/16 v0, 0x1e

    .line 30
    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->MAX_FRAME_COUNT:I

    const/4 v0, 0x0

    .line 35
    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->thumbnail_width:I

    const/4 v0, 0x3

    .line 38
    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->TASK_COUNT:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->needCreate:Z

    move v0, p7

    .line 45
    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->DURATION_IN_SEC:I

    move-object v0, p6

    .line 46
    iput-object v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mLocalFilePath:Ljava/lang/String;

    .line 47
    iget-object v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->thumbnail_width:I

    .line 49
    iget-object v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->frame_height:I

    move/from16 v0, p9

    .line 51
    iput-boolean v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->needCreate:Z

    move-object/from16 v0, p8

    .line 52
    iput-object v0, v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->srcBitmap:Ljava/util/List;

    if-eqz p10, :cond_0

    const-string v0, "ImageCacheRequest"

    const-string v1, "extract 4k Video"

    .line 55
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->extractFrame(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private doTask(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v7, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;-><init>(Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v7}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    return-void
.end method

.method private extractFrame(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 10

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 64
    iget v2, p2, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->startIndex:I

    const/4 v3, 0x0

    .line 65
    :goto_0
    iget v4, p2, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->extractCount:I

    const-string v5, "ImageCacheRequest"

    if-ge v3, v4, :cond_4

    .line 66
    iget v4, p2, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->extractStartTime:I

    int-to-float v4, v4

    iget v6, p2, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->preFrameSecond:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v6

    float-to-long v6, v4

    .line 68
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    const/4 v9, 0x2

    if-lt v4, v8, :cond_0

    .line 69
    new-instance v4, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 70
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 71
    invoke-virtual {p4, v6, v7, v9, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {p4, v6, v7, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    .line 76
    iget v6, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->pre_frame_width:I

    iget v7, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->frame_height:I

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 78
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_4

    .line 80
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_1
    if-eqz v4, :cond_3

    .line 86
    aput-object v4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 90
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extract frame at time "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_4
    :goto_3
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 94
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    const-string p3, "sec"

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_5

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extract canclled spend time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    div-long/2addr v6, v2

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 99
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " extract "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->extractCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " frame spend time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    div-long/2addr v6, v2

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 130
    iget-boolean p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->needCreate:Z

    const-string v0, "ImageCacheRequest"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p1, "frame thumbnail not exit and not need create "

    .line 131
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->srcBitmap:Ljava/util/List;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 135
    iget-object p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->srcBitmap:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    const-string v2, "create video frame from best select frame"

    .line 144
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v0, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->thumbnail_width:I

    div-int v2, v0, p2

    iput v2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->pre_frame_width:I

    .line 146
    iget v2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->frame_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, p2, :cond_7

    .line 151
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v1

    .line 158
    :cond_2
    iget-object v6, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->srcBitmap:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    .line 159
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 162
    :cond_3
    iget v7, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->pre_frame_width:I

    iget v8, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->frame_height:I

    invoke-static {v6, v7, v8, v3}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 164
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_4

    .line 166
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object v1

    :cond_5
    int-to-float v7, v5

    const/4 v8, 0x0

    .line 171
    invoke-virtual {v2, v6, v7, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    iget v6, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->pre_frame_width:I

    add-int/2addr v5, v6

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    .line 177
    :cond_8
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    iget-object v2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v2, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;-><init>(Lcom/zui/gallery/app/GalleryApp;Landroid/media/MediaMetadataRetriever;)V

    .line 180
    iget p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->thumbnail_width:I

    invoke-virtual {v0, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setVideoWidth(I)V

    .line 181
    iget p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->frame_height:I

    invoke-virtual {v0, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setFrameHeight(I)V

    const/16 p2, 0xa

    .line 182
    invoke-virtual {v0, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setFrameCount(I)V

    .line 183
    iget p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->TASK_COUNT:I

    invoke-virtual {v0, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setTaskCount(I)V

    .line 184
    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->decodeVideo(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
