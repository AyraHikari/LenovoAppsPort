.class public Lcom/zui/gallery/app/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x100000

.field private static final LOGTAG:Ljava/lang/String; = "VideoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 16

    .line 305
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v8, v2

    move v7, v4

    .line 308
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 309
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move v11, v4

    :goto_1
    int-to-long v12, v11

    .line 310
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 311
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    invoke-static {v12, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    if-ltz v12, :cond_0

    .line 315
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    .line 314
    invoke-static {v12, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    aput-wide v8, v1, v12

    .line 317
    :cond_0
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v12

    long-to-double v12, v12

    .line 318
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v4, v0, :cond_5

    .line 323
    aget-wide v5, v1, v4

    cmpl-double v7, v5, p1

    if-lez v7, :cond_4

    if-eqz p3, :cond_3

    return-wide v5

    :cond_3
    return-wide v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 333
    aget-wide v0, v1, v0

    return-wide v0
.end method

.method private static genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "VideoUtils"

    .line 132
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    .line 133
    invoke-virtual {v4, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v5

    .line 139
    new-instance v6, Landroid/media/MediaMuxer;

    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-direct {v6, v8, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 143
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v9, -0x1

    move v10, v7

    :goto_0
    if-ge v10, v5, :cond_3

    .line 147
    invoke-virtual {v4, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string v12, "mime"

    .line 148
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "audio/"

    .line 152
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v13, "video/"

    .line 154
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move v14, v7

    :goto_1
    if-eqz v14, :cond_2

    .line 159
    invoke-virtual {v4, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 160
    invoke-virtual {v6, v11}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v12

    .line 161
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "max-input-size"

    .line 162
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 163
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    if-le v11, v9, :cond_2

    move v9, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    if-gez v9, :cond_4

    const/high16 v9, 0x100000

    .line 174
    :cond_4
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 175
    invoke-virtual {v5, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 176
    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz v0, :cond_5

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 182
    invoke-virtual {v6, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_5
    if-lez v1, :cond_6

    mul-int/lit16 v0, v1, 0x3e8

    int-to-long v0, v0

    const/4 v5, 0x2

    .line 187
    invoke-virtual {v4, v0, v1, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 195
    :cond_6
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 198
    :try_start_0
    invoke-virtual {v6}, Landroid/media/MediaMuxer;->start()V

    .line 200
    :goto_2
    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 201
    invoke-virtual {v4, v0, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 202
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v5, :cond_7

    const-string v0, "Saw input EOS."

    .line 203
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    .line 207
    :cond_7
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-lez v2, :cond_8

    .line 208
    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-int/lit16 v5, v2, 0x3e8

    int-to-long v11, v5

    cmp-long v5, v9, v11

    if-lez v5, :cond_8

    const-string v0, "The current sample is over the trim end time."

    .line 209
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_3
    invoke-virtual {v6}, Landroid/media/MediaMuxer;->stop()V

    goto :goto_4

    .line 212
    :cond_8
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 213
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 217
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    :try_start_1
    const-string v0, "The source video file is malformed"

    .line 225
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_4
    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    .line 228
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    return-void

    .line 227
    :goto_5
    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    .line 228
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 229
    throw v0
.end method

.method public static startMute(Ljava/lang/String;Lcom/zui/gallery/util/SaveVideoFileInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p1, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/app/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lcom/zui/gallery/app/VideoUtils;->startMuteUsingMp4Parser(Ljava/lang/String;Lcom/zui/gallery/util/SaveVideoFileInfo;)V

    :goto_0
    return-void
.end method

.method private static startMuteUsingMp4Parser(Ljava/lang/String;Lcom/zui/gallery/util/SaveVideoFileInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object p1, p1, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 94
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vide"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1, v0}, Lcom/zui/gallery/app/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 99
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/app/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/zui/gallery/app/VideoUtils;->trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V

    :goto_0
    return-void
.end method

.method private static trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    .line 240
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    move/from16 v3, p2

    .line 242
    div-int/lit16 v3, v3, 0x3e8

    int-to-double v3, v3

    move/from16 v5, p3

    .line 243
    div-int/lit16 v5, v5, 0x3e8

    int-to-double v5, v5

    .line 250
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 251
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_0

    if-nez v9, :cond_1

    .line 262
    invoke-static {v10, v3, v4, v8}, Lcom/zui/gallery/app/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v3

    .line 263
    invoke-static {v10, v5, v6, v12}, Lcom/zui/gallery/app/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v5

    move v9, v12

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The startTime has already been corrected by another track with SyncSample. Not Supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move v7, v8

    move-wide/from16 v17, v13

    move-wide v13, v11

    move-wide v11, v15

    .line 274
    :goto_2
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_6

    .line 275
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move-wide/from16 p2, v11

    :goto_3
    int-to-long v11, v8

    .line 276
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v19

    cmp-long v11, v11, v19

    if-gez v11, :cond_5

    cmpg-double v11, v17, v3

    if-gtz v11, :cond_3

    move-wide v11, v13

    goto :goto_4

    :cond_3
    move-wide/from16 v11, p2

    :goto_4
    cmpg-double v19, v17, v5

    if-gtz v19, :cond_4

    move-wide/from16 v19, v3

    move-object v4, v2

    .line 292
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v2

    long-to-double v2, v2

    .line 293
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    move-wide/from16 v21, v5

    move-object v6, v4

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    add-double v17, v17, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, v13

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 p2, v11

    move-wide v15, v13

    move-wide v13, v2

    move-object v2, v6

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-object v6, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-object v6, v2

    move-wide/from16 v11, p2

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object v2, v6

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-object v6, v2

    .line 297
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    move-object v9, v2

    move-wide v13, v15

    invoke-direct/range {v9 .. v14}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    move-object v2, v6

    move-wide/from16 v5, v21

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v2, p1

    .line 299
    invoke-static {v2, v1}, Lcom/zui/gallery/app/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 108
    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object p1

    .line 109
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 113
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 114
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
