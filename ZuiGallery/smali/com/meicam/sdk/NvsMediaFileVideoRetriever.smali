.class public Lcom/meicam/sdk/NvsMediaFileVideoRetriever;
.super Ljava/lang/Object;
.source "NvsMediaFileVideoRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;
    }
.end annotation


# static fields
.field public static final RETRIEVER_ERROR_CODE_CANCEL:I = 0x1

.field public static final RETRIEVER_ERROR_CODE_NO_ERROR:I = 0x0

.field public static final RETRIEVER_ERROR_UNKNOWN:I = 0xffff

.field public static final RETRIEVER_ERROR_VIDEO_DECODER_ERROR:I = 0x4

.field public static final RETRIEVER_ERROR_VIDEO_DECODING_ERROR:I = 0x5

.field public static final RETRIEVER_ERROR_VIDEO_ENCODER_SETUP_ERROR:I = 0x2

.field public static final RETRIEVER_ERROR_VIDEO_ENCODING_ERROR:I = 0x3

.field public static final VIDEO_RETRIEVER_FLAG_ONE_FRAME_IN_SEGMENT:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallbackHanlder:Landroid/os/Handler;

.field private m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

.field private m_contextInterface:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NvsMediaFileVideoRetriever"

    .line 36
    iput-object v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

    .line 83
    iput-object v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->mCallbackHanlder:Landroid/os/Handler;

    .line 87
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    return-void
.end method

.method private native nativeCancelTask(JJ)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeDecodeVideoSegment(JLjava/lang/String;JJIIII)J
.end method

.method private native nativeGetAVFileInfo(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;
.end method

.method private native nativeInit()J
.end method


# virtual methods
.method public cancelTask(J)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->nativeCancelTask(JJ)V

    .line 175
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public decodeVideoSegment(Ljava/lang/String;JJIII)J
    .locals 14

    move-object v13, p0

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v2, v13, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    const/4 v9, 0x1

    move-object v1, p0

    move-object v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->nativeDecodeVideoSegment(JLjava/lang/String;JJIIII)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public decodeVideoSegment(Ljava/lang/String;JJIIII)J
    .locals 14

    move-object v13, p0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v2, v13, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    move-object v1, p0

    move-object v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->nativeDecodeVideoSegment(JLjava/lang/String;JJIIII)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->release()V

    .line 92
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->nativeGetAVFileInfo(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public isReleased()Z
    .locals 4

    .line 107
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyFinish(JI)V
    .locals 8

    .line 197
    iget-object v2, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

    .line 198
    iget-object v6, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->mCallbackHanlder:Landroid/os/Handler;

    if-eqz v2, :cond_1

    if-eqz v6, :cond_0

    .line 201
    new-instance v7, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$2;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$2;-><init>(Lcom/meicam/sdk/NvsMediaFileVideoRetriever;Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;JI)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;->notifyFinsih(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyProgress(JF)V
    .locals 8

    .line 180
    iget-object v2, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

    .line 181
    iget-object v6, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->mCallbackHanlder:Landroid/os/Handler;

    if-eqz v2, :cond_1

    if-eqz v6, :cond_0

    .line 184
    new-instance v7, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$1;-><init>(Lcom/meicam/sdk/NvsMediaFileVideoRetriever;Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;JF)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;->notifyProgress(JF)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected notifySengmentData(JLjava/nio/ByteBuffer;IIIIIJZ)V
    .locals 15

    move-object v10, p0

    move/from16 v11, p6

    .line 215
    iget-object v12, v10, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

    .line 216
    iget-object v13, v10, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->mCallbackHanlder:Landroid/os/Handler;

    if-eqz v12, :cond_4

    if-eqz v13, :cond_0

    .line 219
    new-instance v14, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$3;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$3;-><init>(Lcom/meicam/sdk/NvsMediaFileVideoRetriever;Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;JLjava/nio/ByteBuffer;IIII)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    move-object v0, v12

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 226
    invoke-interface/range {v0 .. v7}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;->notifySengmentData(JLjava/nio/ByteBuffer;IIII)V

    :goto_0
    if-eqz p11, :cond_4

    .line 229
    new-instance v0, Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoFrameInfo;-><init>()V

    move/from16 v1, p4

    .line 230
    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    move/from16 v1, p5

    .line 231
    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v11, :cond_3

    const/4 v3, 0x5

    if-eq v11, v3, :cond_2

    const/16 v3, 0xa

    if-eq v11, v3, :cond_1

    .line 243
    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 240
    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    goto :goto_1

    .line 237
    :cond_2
    iput v2, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    goto :goto_1

    .line 234
    :cond_3
    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    :goto_1
    move/from16 v1, p7

    .line 247
    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->displayRotation:I

    move-wide/from16 v3, p9

    .line 248
    iput-wide v3, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameTimestamp:J

    .line 249
    iput-boolean v2, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->isFullRangeYuv:Z

    .line 250
    iput-boolean v2, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->isRec601:Z

    .line 251
    iput-boolean v2, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->flipHorizontally:Z

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 252
    invoke-interface {v12, v1, v2, v0, v3}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;->notifySengmentData(JLcom/meicam/sdk/NvsVideoFrameInfo;Ljava/nio/ByteBuffer;)V

    :cond_4
    return-void
.end method

.method public release()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->nativeClose(J)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_contextInterface:J

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMeidaFileVideoRetrieverCallback(Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;Landroid/os/Handler;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->m_callback:Lcom/meicam/sdk/NvsMediaFileVideoRetriever$MeidaFileVideoRetrieverCallback;

    .line 116
    iput-object p2, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->mCallbackHanlder:Landroid/os/Handler;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 118
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meicam/sdk/NvsMediaFileVideoRetriever;->mCallbackHanlder:Landroid/os/Handler;

    :cond_0
    return-void
.end method
