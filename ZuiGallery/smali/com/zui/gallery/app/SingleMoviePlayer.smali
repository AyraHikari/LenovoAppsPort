.class Lcom/zui/gallery/app/SingleMoviePlayer;
.super Ljava/lang/Object;
.source "SingleMovieActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/zui/gallery/app/ControllerOverlay$Listener;


# static fields
.field private static final BLACK_TIMEOUT:J = 0x1f4L

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final KEY_RESUMEABLE_TIME:Ljava/lang/String; = "resumeable-timeout"

.field private static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video-position"

.field private static final RESUMEABLE_TIMEOUT:J = 0x2bf20L

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "SingleMoviePlayer"

.field private static final VIRTUALIZE_EXTRA:Ljava/lang/String; = "virtualize"


# instance fields
.field private MAX_VOLUME:I

.field private currentVolume:I

.field private mActivity:Lcom/zui/gallery/app/SingleMovieActivity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/zui/gallery/app/MovieControllerOverlay;

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private final mRootView:Landroid/view/View;

.field private mShowing:Z

.field private final mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;

.field private titleView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/zui/gallery/app/SingleMovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 6

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    const-wide v0, 0x7fffffffffffffffL

    .line 260
    iput-wide v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mResumeableTime:J

    const/4 v2, 0x0

    .line 261
    iput v2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    .line 262
    iput-boolean v2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHasPaused:Z

    .line 274
    new-instance v3, Lcom/zui/gallery/app/SingleMoviePlayer$1;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/SingleMoviePlayer$1;-><init>(Lcom/zui/gallery/app/SingleMoviePlayer;)V

    iput-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 285
    new-instance v3, Lcom/zui/gallery/app/SingleMoviePlayer$2;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/SingleMoviePlayer$2;-><init>(Lcom/zui/gallery/app/SingleMoviePlayer;)V

    iput-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 295
    iput-object p2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mActivity:Lcom/zui/gallery/app/SingleMovieActivity;

    .line 296
    invoke-virtual {p2}, Lcom/zui/gallery/app/SingleMovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mContext:Landroid/content/Context;

    .line 297
    iput-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mRootView:Landroid/view/View;

    const v3, 0x7f080338

    .line 299
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 300
    iget-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mRootView:Landroid/view/View;

    const v4, 0x7f0802a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->titleView:Landroid/view/View;

    const/16 v4, 0x8

    .line 301
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iput-object p3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mUri:Landroid/net/Uri;

    .line 304
    new-instance p3, Lcom/zui/gallery/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->titleView:Landroid/view/View;

    iget-object v5, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mActivity:Lcom/zui/gallery/app/SingleMovieActivity;

    invoke-direct {p3, v3, v4, v5}, Lcom/zui/gallery/app/MovieControllerOverlay;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    .line 305
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/zui/gallery/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->setListener(Lcom/zui/gallery/app/ControllerOverlay$Listener;)V

    .line 307
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1, p5}, Lcom/zui/gallery/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 309
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 310
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object p3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 313
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/zui/gallery/app/SingleMoviePlayer$3;

    invoke-direct {p3, p0}, Lcom/zui/gallery/app/SingleMoviePlayer$3;-><init>(Lcom/zui/gallery/app/SingleMoviePlayer;)V

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 324
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mRootView:Landroid/view/View;

    new-instance p3, Lcom/zui/gallery/app/SingleMoviePlayer$4;

    invoke-direct {p3, p0}, Lcom/zui/gallery/app/SingleMoviePlayer$4;-><init>(Lcom/zui/gallery/app/SingleMoviePlayer;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    if-eqz p4, :cond_0

    const-string/jumbo p1, "video-position"

    .line 353
    invoke-virtual {p4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    const-string p1, "resumeable-timeout"

    .line 354
    invoke-virtual {p4, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mResumeableTime:J

    .line 355
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 356
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->suspend()V

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHasPaused:Z

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->startVideo()V

    :goto_0
    const-string p1, "audio"

    .line 361
    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/SingleMovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 362
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    .line 363
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->MAX_VOLUME:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/SingleMoviePlayer;)Landroid/widget/VideoView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/SingleMoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/SingleMoviePlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/SingleMoviePlayer;)Landroid/os/Handler;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/SingleMoviePlayer;)I
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/SingleMoviePlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/SingleMoviePlayer;)Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mShowing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/SingleMoviePlayer;)Lcom/zui/gallery/app/SingleMovieActivity;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mActivity:Lcom/zui/gallery/app/SingleMovieActivity;

    return-object p0
.end method

.method private static isMediaKey(I)Z
    .locals 1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private pauseVideo()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 435
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPaused()V

    .line 437
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    return-void
.end method

.method private playVideo()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 429
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPlaying()V

    .line 430
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->setProgress()I

    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 399
    iget-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mDragging:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 403
    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    if-eqz v0, :cond_1

    .line 405
    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    iget v2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/app/MovieControllerOverlay;->setTimes(IIIII)V

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private startVideo()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPlaying()V

    .line 420
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->hide()V

    goto :goto_1

    .line 415
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showLoading()V

    .line 416
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 424
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->setProgress()I

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 452
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->showEnded()V

    .line 453
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->onCompletion()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 443
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 446
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onExit()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mActivity:Lcom/zui/gallery/app/SingleMovieActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/SingleMovieActivity;->close()V

    return-void
.end method

.method public onHidden()V
    .locals 2

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mShowing:Z

    .line 497
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->titleView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p2, 0x18

    const/4 v0, 0x3

    const-string v1, "SingleMoviePlayer"

    const/4 v2, 0x1

    if-eq p1, p2, :cond_8

    const/16 p2, 0x19

    const/4 v3, 0x0

    if-eq p1, p2, :cond_6

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_4

    const/16 p2, 0x55

    if-eq p1, p2, :cond_4

    const/16 p2, 0xa4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x57

    if-eq p1, p2, :cond_3

    const/16 p2, 0x58

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_0

    return v3

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->pauseVideo()V

    :cond_1
    return v2

    .line 547
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 548
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->playVideo()V

    :cond_3
    return v2

    .line 535
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 536
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 538
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->playVideo()V

    :goto_0
    return v2

    .line 524
    :cond_6
    iget p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    if-gtz p1, :cond_7

    goto :goto_1

    :cond_7
    move v3, p1

    .line 525
    :goto_1
    iput v3, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    const-string p1, "KEYCODE_VOLUME_UP"

    .line 526
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2

    .line 517
    :cond_8
    iget p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    .line 518
    iget p2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->MAX_VOLUME:I

    if-gt p1, p2, :cond_9

    goto :goto_2

    :cond_9
    move p1, p2

    :goto_2
    iput p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    const-string p1, "KEYCODE_VOLUME_DOWN"

    .line 519
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->currentVolume:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 561
    invoke-static {p1}, Lcom/zui/gallery/app/SingleMoviePlayer;->isMediaKey(I)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 4

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHasPaused:Z

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    .line 375
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mResumeableTime:J

    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->playVideo()V

    :goto_0
    return-void
.end method

.method public onReplay()V
    .locals 0

    .line 503
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->startVideo()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 380
    iget-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 382
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->pauseVideo()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 367
    iget v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoPosition:I

    const-string/jumbo v1, "video-position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    iget-wide v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mResumeableTime:J

    const-string v2, "resumeable-timeout"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onSeekEnd(III)V
    .locals 0

    const/4 p2, 0x0

    .line 481
    iput-boolean p2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mDragging:Z

    .line 482
    iget-object p2, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 483
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->setProgress()I

    return-void
.end method

.method public onSeekMove(I)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method

.method public onSeekStart()V
    .locals 1

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mDragging:Z

    return-void
.end method

.method public onShown()V
    .locals 1

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer;->mShowing:Z

    .line 490
    invoke-direct {p0}, Lcom/zui/gallery/app/SingleMoviePlayer;->setProgress()I

    return-void
.end method
