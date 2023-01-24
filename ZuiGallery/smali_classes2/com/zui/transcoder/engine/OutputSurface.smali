.class Lcom/zui/transcoder/engine/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputSurface"

.field private static final VERBOSE:Z = false


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/zui/transcoder/engine/TextureRender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 30
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 31
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Lcom/zui/transcoder/engine/OutputSurface;->setup()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 30
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 31
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/zui/transcoder/engine/OutputSurface;->eglSetup(II)V

    .line 47
    invoke-virtual {p0}, Lcom/zui/transcoder/engine/OutputSurface;->makeCurrent()V

    .line 48
    invoke-direct {p0}, Lcom/zui/transcoder/engine/OutputSurface;->setup()V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 255
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private eglSetup(II)V
    .locals 13

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 89
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 93
    iget-object v3, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    new-array v6, v2, [I

    .line 99
    fill-array-data v6, :array_0

    new-array v2, v4, [Landroid/opengl/EGLConfig;

    new-array v11, v4, [I

    .line 109
    iget-object v5, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v8, v2

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    new-array v5, v3, [I

    .line 114
    fill-array-data v5, :array_1

    .line 118
    iget-object v6, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v7, v2, v0

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v6, v7, v8, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    const-string v5, "eglCreateContext"

    .line 120
    invoke-direct {p0, v5}, Lcom/zui/transcoder/engine/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    new-array v5, v5, [I

    const/16 v6, 0x3057

    aput v6, v5, v0

    aput p1, v5, v4

    const/16 p1, 0x3056

    aput p1, v5, v1

    aput p2, v5, v3

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v5, p1

    .line 131
    iget-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object p2, v2, v0

    invoke-static {p1, p2, v5, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreatePbufferSurface"

    .line 132
    invoke-direct {p0, p1}, Lcom/zui/transcoder/engine/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 95
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .line 62
    new-instance v0, Lcom/zui/transcoder/engine/TextureRender;

    invoke-direct {v0}, Lcom/zui/transcoder/engine/TextureRender;-><init>()V

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    .line 63
    invoke-virtual {v0}, Lcom/zui/transcoder/engine/TextureRender;->surfaceCreated()V

    .line 69
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    invoke-virtual {v1}, Lcom/zui/transcoder/engine/TextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 81
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 82
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 191
    iget-boolean v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 197
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z

    .line 201
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/zui/transcoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 201
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    invoke-virtual {v0, p1}, Lcom/zui/transcoder/engine/TextureRender;->changeFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method public checkForNewImage(I)Z
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 218
    iget-boolean v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 219
    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception p1

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 226
    :cond_1
    iput-boolean v2, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z

    .line 227
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    iget-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    const-string v0, "before updateTexImage"

    invoke-virtual {p1, v0}, Lcom/zui/transcoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 227
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public drawImage()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/zui/transcoder/engine/TextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 243
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameAvailable:Z

    .line 247
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p1

    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 248
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 143
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 144
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 145
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 151
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 152
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 153
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mTextureRender:Lcom/zui/transcoder/engine/TextureRender;

    .line 155
    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 156
    iput-object v0, p0, Lcom/zui/transcoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
