.class Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;
.super Ljava/lang/Thread;
.source "AbstractPhotoSmartSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AbstractPhotoSmartSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerThread"
.end annotation


# instance fields
.field private volatile bend:Z

.field private datas:[B

.field private decoder:Landroid/media/MediaCodec;

.field private extractor:Landroid/media/MediaExtractor;

.field volatile isDone:Z

.field volatile isPlaying:Z

.field private mHeight:I

.field private mWidth:I

.field private size:I

.field private starttime:J

.field final synthetic this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isPlaying:Z

    .line 98
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isDone:Z

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;-><init>(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)V

    return-void
.end method

.method private drainDecoder()V
    .locals 33

    move-object/from16 v1, p0

    .line 194
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 195
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 196
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    move-wide v9, v7

    move v5, v6

    move-object v4, v0

    move v0, v5

    .line 197
    :goto_0
    iget-boolean v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isPlaying:Z

    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isInterrupted()Z

    move-result v11

    if-nez v11, :cond_d

    iget-boolean v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    if-nez v11, :cond_d

    const-wide/16 v11, 0x2710

    if-nez v0, :cond_1

    .line 199
    iget-object v14, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v14, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v16

    if-ltz v16, :cond_1

    .line 201
    aget-object v14, v3, v16

    .line 202
    iget-object v15, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v14, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v18

    if-gez v18, :cond_0

    .line 204
    sget-object v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    const-string v14, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v14}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v15, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v14, 0x1

    goto :goto_1

    .line 209
    :cond_0
    iget-object v15, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/16 v17, 0x0

    iget-object v14, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    .line 210
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    const/16 v21, 0x0

    .line 209
    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 215
    iget-object v14, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1
    move v14, v0

    .line 220
    :goto_1
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v11, 0x0

    .line 221
    iput-object v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    const/4 v12, -0x3

    if-eq v0, v12, :cond_a

    const/4 v12, -0x2

    if-eq v0, v12, :cond_9

    const/4 v12, -0x1

    if-eq v0, v12, :cond_8

    .line 252
    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v12, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->size:I

    if-gtz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    move v12, v6

    .line 253
    :goto_2
    iput-boolean v12, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    .line 255
    aget-object v12, v4, v0

    .line 256
    iget-object v15, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    if-eqz v15, :cond_3

    array-length v15, v15

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eq v15, v6, :cond_3

    .line 257
    iput-object v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    .line 259
    :cond_3
    iget v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->size:I

    if-lez v6, :cond_5

    .line 260
    iget-object v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    if-nez v11, :cond_4

    .line 261
    new-array v6, v6, [B

    iput-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    .line 263
    :cond_4
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v5, v5, 0x1

    :cond_5
    sub-long/2addr v9, v7

    const-wide/32 v11, 0x3d090

    cmp-long v6, v9, v11

    if-gtz v6, :cond_6

    .line 267
    iget-boolean v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    if-nez v6, :cond_6

    .line 268
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 270
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    iget v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mWidth:I

    iget v12, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mHeight:I

    iget-object v15, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v15

    move-wide/from16 v21, v9

    invoke-virtual/range {v17 .. v24}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->processFrame(II[BJZZ)V

    goto :goto_3

    .line 272
    :cond_6
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 273
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v6, v9, v10}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$500(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;J)V

    .line 275
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    iget v15, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mWidth:I

    iget v13, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mHeight:I

    iget-object v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->datas:[B

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v25, v6

    move/from16 v26, v15

    move/from16 v27, v13

    move-object/from16 v28, v11

    move-wide/from16 v29, v9

    invoke-virtual/range {v25 .. v32}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->processFrame(II[BJZZ)V

    const-wide/32 v11, 0x3d090

    add-long/2addr v7, v11

    .line 278
    :goto_3
    iget-boolean v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    if-eqz v6, :cond_7

    .line 279
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 280
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v6, v9, v10}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$500(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;J)V

    .line 282
    :cond_7
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v11, 0x1

    invoke-virtual {v6, v0, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v13, v11

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_8
    move v15, v6

    const/4 v13, 0x1

    goto/16 :goto_4

    .line 227
    :cond_9
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 228
    sget-object v6, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Output format has changed to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "color-format"

    .line 229
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 230
    sget-object v11, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const-string v6, " ColorFormat 0x%x(%d)"

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-static {v11, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    const-string/jumbo v11, "stride"

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-static {v6, v11}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$302(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I

    .line 238
    iget-object v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    const-string/jumbo v11, "slice-height"

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$402(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I

    .line 239
    sget-object v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "video width "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mWidth:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " height "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mHeight:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mStride "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    .line 240
    invoke-static {v11}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$300(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " SliceHeight "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v11}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$400(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-static {v0, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 242
    sget-object v6, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    const-string v11, "get vide stride and slice_height exception "

    invoke-static {v6, v11, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    iget v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mWidth:I

    invoke-static {v0, v6}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$302(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I

    .line 244
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    iget v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mHeight:I

    invoke-static {v0, v6}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$402(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I

    goto :goto_4

    :cond_a
    move v15, v6

    const/4 v13, 0x1

    .line 224
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v4, v0

    .line 285
    :goto_4
    iget v0, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v13, v15

    :goto_5
    iput-boolean v13, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    .line 287
    iget-boolean v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->bend:Z

    if-eqz v0, :cond_c

    .line 290
    sget-object v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process video frame spend time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v6, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->starttime:J

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " totalFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    move v0, v14

    move v6, v15

    goto/16 :goto_0

    .line 296
    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 297
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 298
    iget-object v0, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method

.method private initDecoder()V
    .locals 7

    .line 144
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$200(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    move v1, v0

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 157
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video/"

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "width"

    .line 159
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mWidth:I

    const-string v4, "height"

    .line 160
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mHeight:I

    .line 161
    iget-object v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    iget v5, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mWidth:I

    invoke-static {v4, v5}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$302(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I

    .line 162
    iget-object v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    iget v5, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->mHeight:I

    invoke-static {v4, v5}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$402(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I

    .line 163
    iget-object v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    const-string v5, "durationUs"

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->videoDuration:J

    .line 164
    iget-object v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const/16 v1, 0x15

    const-string v4, "color-format"

    .line 165
    invoke-virtual {v2, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;->onBestFrameSequenceError(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->decoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_3

    .line 182
    sget-object v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t find video info!"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catch_1
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;->onBestFrameSequenceError(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method

.method private isCancelled()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isPlaying:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->starttime:J

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isDone:Z

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;->onBestFrameSequenceStart()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->initDecoder()V

    .line 127
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->drainDecoder()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isDone:Z

    .line 129
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    iget-boolean v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isPlaying:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;->onBestFrameSequenceDone()V

    goto :goto_1

    .line 131
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-static {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;->onBestFrameSequenceCanclled()V

    .line 136
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->this$0:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->doStop()V

    return-void
.end method

.method public stopPlaying()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isPlaying:Z

    .line 110
    invoke-static {}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->interrupt()V

    :cond_0
    return-void
.end method
