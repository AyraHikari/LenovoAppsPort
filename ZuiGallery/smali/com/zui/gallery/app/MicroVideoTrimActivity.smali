.class public Lcom/zui/gallery/app/MicroVideoTrimActivity;
.super Lcom/zui/gallery/app/MicroVideoEditBaseActivity;
.source "MicroVideoTrimActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private extractTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private hasMoved:Z

.field private isPlayCoverGone:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mCurrentState:I

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mVideoPlayer:Landroid/widget/VideoView;

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->hasMoved:Z

    .line 39
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlayCoverGone:Z

    .line 45
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    .line 390
    new-instance v0, Lcom/zui/gallery/app/MicroVideoTrimActivity$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity$3;-><init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/MicroVideoTrimActivity;)J
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->setProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/MicroVideoTrimActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initMediaPlayer()V
    .locals 11

    const/4 v0, 0x0

    .line 89
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x3

    .line 90
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 92
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 95
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 103
    iget-object v4, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-wide v6, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->offset:J

    iget-wide v8, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->length:J

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 105
    iput v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    const/4 v2, -0x1

    .line 109
    :try_start_3
    iput v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 114
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 118
    :catch_3
    :cond_1
    throw v0
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setProgress()J
    .locals 12

    .line 366
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v5, v1

    int-to-long v0, v0

    .line 368
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    .line 370
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    iget-wide v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimStartTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->hasMoved:Z

    if-nez v0, :cond_0

    .line 371
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimStartTime:J

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    .line 373
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->seekTo(I)V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->hasMoved:Z

    .line 378
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    iget-wide v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimEndTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 380
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimStartTime:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->seekTo(I)V

    .line 381
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimStartTime:J

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iget-wide v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    iget-wide v7, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimStartTime:J

    iget-wide v9, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mTrimEndTime:J

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->setTimes(JJJJZ)V

    .line 387
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    return-wide v0
.end method


# virtual methods
.method protected doSave(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->delete()V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playing:Z

    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlaying:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 66
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->initMediaPlayer()V

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    new-instance v1, Lcom/zui/gallery/app/MicroVideoTrimActivity$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity$1;-><init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected isPlaying()Z
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlaying:Z

    .line 308
    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlaying:Z

    return v0
.end method

.method public synthetic lambda$parseVideoThumbnailBitmap$0$MicroVideoTrimActivity(IILandroid/graphics/Bitmap;)V
    .locals 5

    .line 424
    div-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    invoke-static {p3, v0, p2, v1}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    invoke-virtual {p0, p3}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->scaleFrameBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 427
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    :cond_0
    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V

    .line 436
    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 437
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    mul-int v2, v1, p1

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 439
    invoke-virtual {p3, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected loadThumbnailFrame()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 266
    iput-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;-><init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;Lcom/zui/gallery/app/MicroVideoTrimActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 p1, 0x5

    .line 201
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    const-wide/16 v0, 0x0

    .line 202
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->lastSeekPosition:J

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 148
    iput-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    :cond_0
    const-wide/16 v2, 0xc8

    .line 151
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    .line 159
    iput-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 161
    :cond_1
    invoke-super {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, -0x1

    .line 217
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 5

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    invoke-super {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->onPause()V

    .line 139
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlaying()Z

    .line 140
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->pause()V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v0, 0x2

    .line 223
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    if-eqz p1, :cond_4

    .line 225
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoDuration:I

    .line 226
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 227
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mVideoDuration ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroVideo"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared mScreenWidth ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mScreenWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScreenHeight ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mScreenHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 231
    iget v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mScreenWidth:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mScreenHeight:I

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoWidth:I

    .line 239
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoHeight:I

    goto :goto_1

    .line 232
    :cond_1
    :goto_0
    iget v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mScreenWidth:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 233
    iget v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mScreenHeight:I

    int-to-float v3, v3

    int-to-float p1, p1

    div-float/2addr v3, p1

    .line 234
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 235
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoWidth:I

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 236
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoHeight:I

    .line 241
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 242
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrepared mVideoWidth ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mVideoHeight ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " scale ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoWidth:I

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoHeight:I

    if-eqz p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoWidth:I

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoHeight:I

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 251
    :cond_2
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->seekTo(I)V

    .line 252
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    if-eqz p1, :cond_4

    .line 253
    iget-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlayerReady:Z

    if-nez p1, :cond_3

    .line 254
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iget v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mVideoDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initDuration(J)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlayerReady:Z

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlayerReady:Z

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initReady(Z)V

    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    invoke-super {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->initView()V

    .line 128
    iget-wide v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->seekTo(I)V

    .line 129
    iget-boolean v2, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlaying:Z

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->play()V

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " isPlaying "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlaying:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekEnd()V
    .locals 0

    return-void
.end method

.method public onSeekMove(J)V
    .locals 3

    .line 175
    iput-wide p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->lastSeekPosition:J

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->hasMoved:Z

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seektime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->lastSeekPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-wide p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentPosition:J

    long-to-int p1, p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->seekTo(I)V

    .line 182
    iget-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlayCoverGone:Z

    if-nez p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/gallery/app/MicroVideoTrimActivity$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity$2;-><init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isPlayCoverGone:Z

    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 166
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->lastSeekPosition:J

    .line 167
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->pause()V

    return-void
.end method

.method public parseVideoThumbnailBitmap(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/media/MediaMetadataRetriever;)Landroid/graphics/Bitmap;
    .locals 3

    .line 416
    new-instance v0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;-><init>(Lcom/zui/gallery/app/GalleryApp;Landroid/media/MediaMetadataRetriever;)V

    .line 417
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f060246

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 418
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 419
    invoke-virtual {v0, p2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setVideoWidth(I)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setFrameHeight(I)V

    const/16 v2, 0x8

    .line 421
    invoke-virtual {v0, v2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setFrameCount(I)V

    const/4 v2, 0x3

    .line 422
    invoke-virtual {v0, v2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->setTaskCount(I)V

    .line 423
    new-instance v2, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;

    invoke-direct {v2, p0, p2, v1}, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;-><init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;II)V

    invoke-virtual {v0, p1, v2}, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;->decodeVideo(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected pause()V
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause mCurrentState ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x4

    .line 298
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    .line 299
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isTrimValid()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->enableDoneBtn(Z)V

    .line 300
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onPause()V

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->updatePlayIcon(Z)V

    :cond_0
    return-void
.end method

.method protected play()V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play mCurrentState ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->enableDoneBtn(Z)V

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    .line 277
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->onPlay()V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->updatePlayIcon(Z)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 5

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo mCurrentState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v2, p1

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo  time ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 400
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->initMediaPlayer()V

    .line 401
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 402
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
