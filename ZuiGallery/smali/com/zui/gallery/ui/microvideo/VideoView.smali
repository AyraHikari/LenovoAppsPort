.class public Lcom/zui/gallery/ui/microvideo/VideoView;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final glRootView:Lcom/zui/gallery/ui/GLRootView;

.field private init:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private final microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

.field private videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MicroVideoInfo;Landroid/content/res/Resources;Lcom/zui/gallery/ui/GLRootView;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoView"

    .line 40
    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/zui/gallery/ui/microvideo/VideoView$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/microvideo/VideoView$1;-><init>(Lcom/zui/gallery/ui/microvideo/VideoView;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

    .line 60
    iput-object p3, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->glRootView:Lcom/zui/gallery/ui/GLRootView;

    .line 61
    new-instance p3, Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-direct {p3, p1, p2, p0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;-><init>(Lcom/zui/gallery/data/MicroVideoInfo;Landroid/content/res/Resources;Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/microvideo/VideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private startVideo()V
    .locals 3

    const-string v0, "VideoView"

    const-string/jumbo v1, "videoView star play microVideo"

    .line 79
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private stopVideo()V
    .locals 3

    const-string v0, "VideoView"

    const-string/jumbo v1, "videoView stop play microVideo"

    .line 87
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->release()V

    return-void
.end method


# virtual methods
.method public isInited()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSameMicroVideo(Lcom/zui/gallery/data/MicroVideoInfo;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/MicroVideoInfo;->isSameVideo(Lcom/zui/gallery/data/MicroVideoInfo;)Z

    move-result p1

    return p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    return-void
.end method

.method public onFrameAvaiable()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->glRootView:Lcom/zui/gallery/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView;->requestRender()V

    :cond_0
    return-void
.end method

.method public onSurfaceAvaiable(Landroid/view/Surface;)V
    .locals 11

    const/4 v0, 0x0

    .line 126
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

    iget-object v2, v2, Lcom/zui/gallery/data/MicroVideoInfo;->videoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 128
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 131
    iget-object v3, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

    iget-wide v5, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

    iget-wide v7, v0, Lcom/zui/gallery/data/MicroVideoInfo;->fileSize:J

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->microVideo:Lcom/zui/gallery/data/MicroVideoInfo;

    iget-wide v9, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    sub-long/2addr v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/VideoView;->startVideo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 137
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 141
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 145
    :catch_3
    :cond_1
    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const-string v0, "VideoView"

    const-string/jumbo v1, "videoView onSurfaceChanged"

    .line 160
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->onSurfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string v0, "VideoView"

    const-string/jumbo v1, "videoView onSurfaceCreate"

    .line 150
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->onSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/VideoView;->stopVideo()V

    return-void
.end method

.method public updateViewPort(II)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoView;->videoDraw:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->updateViewPort(II)V

    return-void
.end method
