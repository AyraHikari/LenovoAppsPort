.class public Lcom/zui/gallery/banner/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSE:I = 0x3

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPath:Ljava/lang/String;

.field private mPlayerControl:Lcom/zui/gallery/banner/PlayerControl;

.field private mRootView:Landroid/view/View;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoByte:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/banner/VideoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/banner/MediaPlayerActivity;Landroid/view/View;Landroid/media/MediaPlayer;Landroid/view/SurfaceView;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/banner/VideoPlayer;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    .line 40
    iput-object p2, p0, Lcom/zui/gallery/banner/VideoPlayer;->mRootView:Landroid/view/View;

    .line 41
    iput-object p3, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    iput-object p4, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 43
    new-instance p2, Lcom/zui/gallery/banner/PlayerControl;

    iget-object p3, p0, Lcom/zui/gallery/banner/VideoPlayer;->mRootView:Landroid/view/View;

    invoke-direct {p2, p0, p1, p3}, Lcom/zui/gallery/banner/PlayerControl;-><init>(Lcom/zui/gallery/banner/VideoPlayer;Lcom/zui/gallery/banner/MediaPlayerActivity;Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPlayerControl:Lcom/zui/gallery/banner/PlayerControl;

    return-void
.end method

.method private release()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method private setVideoWH()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 105
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v2

    .line 106
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v3

    if-ne v0, v2, :cond_1

    if-eq v1, v3, :cond_2

    :cond_1
    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 125
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    iget-object v3, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 133
    iget-object v2, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public canPlay()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    return v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public isIdle()Z
    .locals 1

    .line 173
    iget v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPausing()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 161
    iget v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .line 169
    iget v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onCompletion()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/zui/gallery/banner/VideoPlayer;->release()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPlayerControl:Lcom/zui/gallery/banner/PlayerControl;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/PlayerControl;->onExit()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/zui/gallery/banner/VideoPlayer;->setVideoWH()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 152
    iput-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 153
    iput-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPlayerControl:Lcom/zui/gallery/banner/PlayerControl;

    return-void
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPlayerControl:Lcom/zui/gallery/banner/PlayerControl;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/PlayerControl;->onPrepared()V

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->playVideo()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPlayerControl:Lcom/zui/gallery/banner/PlayerControl;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/zui/gallery/banner/PlayerControl;->onStop()V

    .line 146
    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->onCompletion()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x3

    .line 57
    iput v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    :cond_0
    return-void
.end method

.method public playVideo()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->canPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/banner/VideoPlayer;->mPath:Ljava/lang/String;

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    :try_start_0
    iput v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->state:I

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/zui/gallery/banner/NewVideoDataSource;

    iget-object v1, p0, Lcom/zui/gallery/banner/VideoPlayer;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getVideoByte()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/banner/NewVideoDataSource;-><init>(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/banner/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 89
    invoke-virtual {p0}, Lcom/zui/gallery/banner/VideoPlayer;->onConfigurationChanged()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
