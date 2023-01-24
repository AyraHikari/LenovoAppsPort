.class Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailDecoder.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->doTask(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

.field final synthetic val$bitmapArr:[Landroid/graphics/Bitmap;

.field final synthetic val$decoderListener:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;

.field final synthetic val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

.field final synthetic val$jobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

.field final synthetic val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;Lcom/zui/gallery/util/ThreadPool$JobContext;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->this$0:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    iput-object p2, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iput-object p3, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$decoderListener:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;

    iput-object p4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$jobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    iput-object p5, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$bitmapArr:[Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 8

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iget v2, v2, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->extractCount:I

    const-string v3, "LocalVideoThumbnailDecoder"

    if-ge p1, v2, :cond_5

    .line 127
    iget-object v2, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iget-wide v4, v2, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->extractStartTime:J

    long-to-float v2, v4

    iget-object v4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iget v4, v4, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->preFrameSecond:F

    int-to-float v5, p1

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    float-to-long v4, v2

    .line 129
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    const/4 v7, 0x2

    if-lt v2, v6, :cond_0

    .line 130
    new-instance v2, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 131
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 132
    iget-object v6, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->this$0:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    invoke-static {v6}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->access$000(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)Landroid/media/MediaMetadataRetriever;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v7, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->this$0:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    invoke-static {v2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->access$000(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)Landroid/media/MediaMetadataRetriever;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 137
    iget-object v4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iget v4, v4, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->startIndex:I

    add-int/2addr v4, p1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$decoderListener:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;

    if-eqz v4, :cond_1

    .line 138
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;->onFirstFrameDecoder(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->this$0:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    invoke-static {v4}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->access$100(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)I

    move-result v4

    iget-object v5, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->this$0:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    invoke-static {v5}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->access$200(Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 142
    iget-object v4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$jobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-interface {v4}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_5

    .line 144
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_4

    .line 150
    iget-object v3, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$bitmapArr:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iget v4, v4, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->startIndex:I

    add-int/2addr v4, p1

    aput-object v2, v3, v4

    goto :goto_2

    .line 153
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extract frame at time "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 156
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$jobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    const-string v2, "sec"

    const-wide/16 v4, 0x3e8

    if-eqz p1, :cond_6

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " extract canclled spend time "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    div-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 161
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " extract "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$info:Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;

    iget v6, v6, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->extractCount:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " frame spend time "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    div-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_4
    iget-object p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$1;->val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1
.end method
