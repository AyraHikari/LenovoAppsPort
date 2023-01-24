.class public Lcom/google/vr/sdk/widgets/video/VideoTexture;
.super Ljava/lang/Object;
.source "VideoTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;,
        Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private needUpdateTexture:Z

.field private newFrameListener:Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureHandle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->textureHandle:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->needUpdateTexture:Z

    return-void
.end method

.method static synthetic access$102(Lcom/google/vr/sdk/widgets/video/VideoTexture;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->needUpdateTexture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/video/VideoTexture;)Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->newFrameListener:Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;

    return-object p0
.end method


# virtual methods
.method public getIsTextureSet()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->textureHandle:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public init()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->TAG:Ljava/lang/String;

    const-string v1, "Texture is already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->textureHandle:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 9
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->textureHandle:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 10
    new-instance v1, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;-><init>(Lcom/google/vr/sdk/widgets/video/VideoTexture;Lcom/google/vr/sdk/widgets/video/VideoTexture$1;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    const v0, 0x8d65

    .line 11
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->textureHandle:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x1

    .line 26
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->textureHandle:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnNewFrameListener(Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->newFrameListener:Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;

    return-void
.end method

.method public declared-synchronized updateTexture()V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->needUpdateTexture:Z

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture;->needUpdateTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
