.class public Lcom/zui/gallery/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/zui/gallery/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;,
        Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


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

.field private static final TAG:Ljava/lang/String; = "MoviePlayer"

.field private static final VIRTUALIZE_EXTRA:Ljava/lang/String; = "virtualize"


# instance fields
.field private MAX_VOLUME:I

.field private currentVolume:I

.field private mActivity:Lcom/zui/gallery/app/MovieActivity;

.field private final mAudioBecomingNoisyReceiver:Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/zui/gallery/app/MovieControllerOverlay;

.field mDownTime:J

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private final mIncomingCallReceiver:Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;

.field private mIsPlayingBeforeOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastSeekPosition:I

.field private mLastSystemUiVis:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private final mRootView:Landroid/view/View;

.field private mShowing:Z

.field private final mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;

.field private mVirtualizer:Landroid/media/audiofx/Virtualizer;

.field private titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 6

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const-wide v0, 0x7fffffffffffffffL

    .line 94
    iput-wide v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mResumeableTime:J

    const/4 v2, 0x0

    .line 95
    iput v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    .line 96
    iput-boolean v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mHasPaused:Z

    .line 97
    iput v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSystemUiVis:I

    .line 99
    iput v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSeekPosition:I

    .line 118
    new-instance v3, Lcom/zui/gallery/app/MoviePlayer$1;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/MoviePlayer$1;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    iput-object v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 129
    new-instance v3, Lcom/zui/gallery/app/MoviePlayer$2;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/MoviePlayer$2;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    iput-object v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    .line 586
    iput-wide v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mDownTime:J

    .line 139
    invoke-virtual {p2}, Lcom/zui/gallery/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 140
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mRootView:Landroid/view/View;

    const v3, 0x7f080338

    .line 141
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 143
    iput-object p3, p0, Lcom/zui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 144
    iput-object p2, p0, Lcom/zui/gallery/app/MoviePlayer;->mActivity:Lcom/zui/gallery/app/MovieActivity;

    .line 145
    new-instance p3, Lcom/zui/gallery/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zui/gallery/app/MoviePlayer;->mRootView:Landroid/view/View;

    const v5, 0x7f0802a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p3, v3, v4, p2}, Lcom/zui/gallery/app/MovieControllerOverlay;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    .line 146
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/zui/gallery/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->setListener(Lcom/zui/gallery/app/ControllerOverlay$Listener;)V

    .line 148
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1, p5}, Lcom/zui/gallery/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 150
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 151
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 152
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object p3, p0, Lcom/zui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 153
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 154
    invoke-virtual {p2}, Lcom/zui/gallery/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p5, "virtualize"

    .line 155
    invoke-virtual {p1, p5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getAudioSessionId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    new-instance p5, Landroid/media/audiofx/Virtualizer;

    invoke-direct {p5, v2, p1}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    iput-object p5, p0, Lcom/zui/gallery/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 160
    invoke-virtual {p5, p3}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    goto :goto_0

    :cond_0
    const-string p1, "MoviePlayer"

    const-string p5, "no audio session to virtualize"

    .line 162
    invoke-static {p1, p5}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mRootView:Landroid/view/View;

    new-instance p5, Lcom/zui/gallery/app/MoviePlayer$3;

    invoke-direct {p5, p0}, Lcom/zui/gallery/app/MoviePlayer$3;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance p5, Lcom/zui/gallery/app/MoviePlayer$4;

    invoke-direct {p5, p0}, Lcom/zui/gallery/app/MoviePlayer$4;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    invoke-virtual {p1, p5}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 192
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance p5, Lcom/zui/gallery/app/MoviePlayer$5;

    invoke-direct {p5, p0}, Lcom/zui/gallery/app/MoviePlayer$5;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, p5, v3, v4}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V

    .line 201
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/MoviePlayer;->showSystemUi(Z)V

    .line 203
    new-instance p1, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 p5, 0x0

    invoke-direct {p1, p0, p5}, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/zui/gallery/app/MoviePlayer;Lcom/zui/gallery/app/MoviePlayer$1;)V

    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 204
    invoke-virtual {p1}, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 205
    new-instance p1, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;

    invoke-direct {p1, p0, p5}, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;-><init>(Lcom/zui/gallery/app/MoviePlayer;Lcom/zui/gallery/app/MoviePlayer$1;)V

    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mIncomingCallReceiver:Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;

    .line 206
    invoke-virtual {p1}, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->register()V

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-string p5, "com.android.music.musicservicecommand"

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p5, "command"

    const-string v3, "pause"

    .line 208
    invoke-virtual {p1, p5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p4, :cond_2

    const-string/jumbo p1, "video-position"

    .line 212
    invoke-virtual {p4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    const-string p1, "resumeable-timeout"

    .line 213
    invoke-virtual {p4, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/zui/gallery/app/MoviePlayer;->mResumeableTime:J

    .line 214
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 215
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->suspend()V

    .line 216
    iput-boolean p3, p0, Lcom/zui/gallery/app/MoviePlayer;->mHasPaused:Z

    goto :goto_1

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->startVideo()V

    :goto_1
    const-string p1, "audio"

    .line 225
    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 226
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MoviePlayer;->currentVolume:I

    .line 227
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MoviePlayer;->MAX_VOLUME:I

    .line 228
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mIsPlayingBeforeOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/MoviePlayer;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/MoviePlayer;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieActivity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mActivity:Lcom/zui/gallery/app/MovieActivity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/MoviePlayer;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/MoviePlayer;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->playVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/MoviePlayer;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/MoviePlayer;)I
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/MoviePlayer;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mShowing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/MoviePlayer;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSystemUiVis:I

    return p0
.end method

.method static synthetic access$902(Lcom/zui/gallery/app/MoviePlayer;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
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

.method private static isPlayPauseKey(I)Z
    .locals 1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

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

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 416
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPaused()V

    .line 418
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setProgress()I

    .line 419
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    return-void
.end method

.method private playVideo()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPlaying()V

    .line 411
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setProgress()I

    return-void
.end method

.method private setOnSystemUiVisibilityChangeListener()V
    .locals 2

    .line 233
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/zui/gallery/app/MoviePlayer$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MoviePlayer$6;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 369
    iget-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mDragging:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 374
    iget v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSeekPosition:I

    if-le v1, v0, :cond_1

    const-string v1, "MoviePlayer"

    const-string v2, "return for not go back"

    .line 375
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    .line 386
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    iget v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/app/MovieControllerOverlay;->setTimes(IIIII)V

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 4

    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100214

    .line 277
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100211

    .line 279
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit16 v3, p2, 0x3e8

    .line 280
    invoke-static {p1, v3}, Lcom/zui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 278
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    new-instance p1, Lcom/zui/gallery/app/MoviePlayer$7;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/MoviePlayer$7;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    new-instance p1, Lcom/zui/gallery/app/MoviePlayer$8;

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/MoviePlayer$8;-><init>(Lcom/zui/gallery/app/MoviePlayer;I)V

    const p2, 0x7f100213

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    new-instance p1, Lcom/zui/gallery/app/MoviePlayer$9;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/MoviePlayer$9;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    const p2, 0x7f100212

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSystemUi(Z)V
    .locals 0

    return-void
.end method

.method private startVideo()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPlaying()V

    .line 401
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->hide()V

    goto :goto_1

    .line 396
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showLoading()V

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 405
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setProgress()I

    return-void
.end method


# virtual methods
.method getController()Lcom/zui/gallery/app/MovieControllerOverlay;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    return-object v0
.end method

.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 444
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->showEnded()V

    .line 445
    invoke-virtual {p0}, Lcom/zui/gallery/app/MoviePlayer;->onCompletion()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 355
    iput-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 359
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 360
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mIncomingCallReceiver:Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->unregister()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 425
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 428
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->suspend()V

    .line 431
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/gallery/app/MoviePlayer$10;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/MoviePlayer$10;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onExit()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mActivity:Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieActivity;->close()V

    return-void
.end method

.method public onHidden()V
    .locals 1

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mShowing:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 588
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 589
    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->isMediaKey(I)Z

    move-result p1

    return p1

    .line 592
    :cond_0
    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->isPlayPauseKey(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mDownTime:J

    return v0

    .line 596
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->isMediaKey(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 520
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 521
    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->isMediaKey(I)Z

    move-result p1

    return p1

    :cond_0
    const/16 p2, 0x4f

    const/4 v0, 0x1

    if-eq p1, p2, :cond_5

    const/16 p2, 0x55

    if-eq p1, p2, :cond_5

    const/16 p2, 0xa4

    if-eq p1, p2, :cond_4

    const/16 p2, 0x57

    if-eq p1, p2, :cond_4

    const/16 p2, 0x58

    if-eq p1, p2, :cond_4

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 565
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->pauseVideo()V

    :cond_2
    return v0

    .line 570
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    .line 571
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->playVideo()V

    :cond_4
    return v0

    .line 550
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 552
    iget-wide v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mDownTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x1f4

    cmp-long p1, p1, v1

    if-lez p1, :cond_6

    const-string p1, "MoviePlayer"

    const-string p2, "return for long press"

    .line 553
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 557
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 558
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 560
    :cond_7
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->playVideo()V

    .line 562
    :goto_0
    iput-wide v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mDownTime:J

    return v0
.end method

.method public onPause()V
    .locals 4

    const-string v0, "MoviePlayer"

    const-string v1, "onPause"

    .line 306
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 307
    iput-boolean v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mHasPaused:Z

    .line 308
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    if-nez v1, :cond_1

    const/16 v1, 0x3e8

    .line 314
    iput v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    .line 319
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mIsPlayingBeforeOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " before onpause is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mIsPlayingBeforeOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mResumeableTime:J

    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->playVideo()V

    :goto_0
    return-void
.end method

.method public onReplay()V
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "MoviePlayer"

    const-string v1, "onResume "

    .line 327
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-boolean v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mHasPaused:Z

    if-eqz v1, :cond_1

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video postion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/zui/gallery/app/MovieControllerOverlay;->currentStateIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 331
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->resume()V

    .line 334
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mIsPlayingBeforeOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mController:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/zui/gallery/app/MovieControllerOverlay;->currentStateIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "need play"

    .line 335
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/zui/gallery/app/MoviePlayer;->onPlayPause()V

    .line 340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zui/gallery/app/MoviePlayer;->mResumeableTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "pauseView"

    .line 341
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->pauseVideo()V

    :cond_1
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHasPaused:Z

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 271
    iget v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    const-string/jumbo v1, "video-position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget-wide v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mResumeableTime:J

    const-string v2, "resumeable-timeout"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onSeekEnd(III)V
    .locals 1

    const/4 p2, 0x0

    .line 478
    iput-boolean p2, p0, Lcom/zui/gallery/app/MoviePlayer;->mDragging:Z

    .line 479
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 481
    iput p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSeekPosition:I

    goto :goto_0

    .line 483
    :cond_0
    iput p2, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSeekPosition:I

    .line 488
    :goto_0
    iput p2, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoPosition:I

    .line 489
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setProgress()I

    return-void
.end method

.method public onSeekMove(I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 p1, 0x0

    .line 471
    iput p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mLastSeekPosition:I

    return-void
.end method

.method public onSeekStart()V
    .locals 1

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mDragging:Z

    return-void
.end method

.method public onShown()V
    .locals 1

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer;->mShowing:Z

    .line 495
    invoke-direct {p0}, Lcom/zui/gallery/app/MoviePlayer;->setProgress()I

    return-void
.end method

.method setHasPaused(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lcom/zui/gallery/app/MoviePlayer;->mHasPaused:Z

    return-void
.end method
