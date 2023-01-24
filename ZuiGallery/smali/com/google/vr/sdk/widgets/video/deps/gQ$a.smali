.class Lcom/google/vr/sdk/widgets/video/deps/gQ$a;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/gQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3


# instance fields
.field private final d:[I

.field private e:Landroid/opengl/EGLDisplay;

.field private f:Landroid/opengl/EGLContext;

.field private g:Landroid/opengl/EGLSurface;

.field private h:Landroid/os/Handler;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Ljava/lang/Error;

.field private k:Ljava/lang/RuntimeException;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/gQ;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->d:[I

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->d:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->g:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_1

    .line 95
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->f:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_2

    .line 97
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 98
    :cond_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->g:Landroid/opengl/EGLSurface;

    .line 99
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->f:Landroid/opengl/EGLContext;

    .line 100
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    .line 101
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->l:Lcom/google/vr/sdk/widgets/video/deps/gQ;

    .line 102
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v1

    .line 104
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->g:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_3

    .line 105
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->f:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_4

    .line 107
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 108
    :cond_4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->g:Landroid/opengl/EGLSurface;

    .line 109
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->f:Landroid/opengl/EGLContext;

    .line 110
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    .line 111
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->l:Lcom/google/vr/sdk/widgets/video/deps/gQ;

    .line 112
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    throw v1
.end method

.method private b(Z)V
    .locals 12

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v3, "eglGetDisplay failed"

    .line 64
    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 66
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v1, v0, v1, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    const-string v3, "eglInitialize failed"

    .line 67
    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    const/16 v1, 0x11

    new-array v4, v1, [I

    .line 68
    fill-array-data v4, :array_0

    new-array v1, v2, [Landroid/opengl/EGLConfig;

    new-array v11, v2, [I

    .line 71
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v1

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    aget v3, v11, v0

    if-lez v3, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const-string v4, "eglChooseConfig failed"

    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    .line 73
    aget-object v1, v1, v0

    const/4 v3, 0x5

    if-eqz p1, :cond_2

    new-array v4, v3, [I

    .line 75
    fill-array-data v4, :array_1

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 76
    fill-array-data v4, :array_2

    .line 77
    :goto_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v1, v6, v4, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->f:Landroid/opengl/EGLContext;

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    const-string v5, "eglCreateContext failed"

    .line 78
    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    if-eqz p1, :cond_4

    const/4 v3, 0x7

    new-array v3, v3, [I

    .line 80
    fill-array-data v3, :array_3

    goto :goto_4

    :cond_4
    new-array v3, v3, [I

    .line 81
    fill-array-data v3, :array_4

    .line 82
    :goto_4
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v1, v3, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->g:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    const-string v3, "eglCreatePbufferSurface failed"

    .line 83
    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->e:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->g:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->f:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    const-string v3, "eglMakeCurrent failed"

    .line 85
    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->d:[I

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 87
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->d:[I

    aget v0, v2, v0

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    .line 88
    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 89
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gQ;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gQ;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gQ$a;Landroid/graphics/SurfaceTexture;ZLcom/google/vr/sdk/widgets/video/deps/gQ$1;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->l:Lcom/google/vr/sdk/widgets/video/deps/gQ;

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_4
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method


# virtual methods
.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/gQ;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->start()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->h:Landroid/os/Handler;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->l:Lcom/google/vr/sdk/widgets/video/deps/gQ;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->k:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->j:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move v2, v1

    goto :goto_1

    .line 15
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->k:Ljava/lang/RuntimeException;

    if-nez p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->j:Ljava/lang/Error;

    if-nez p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->l:Lcom/google/vr/sdk/widgets/video/deps/gQ;

    return-object p1

    .line 21
    :cond_3
    throw p1

    .line 19
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v1

    .line 53
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->quit()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 57
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->quit()Z

    :goto_0
    return v1

    :catchall_1
    move-exception p1

    .line 60
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->quit()Z

    throw p1

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v1

    .line 28
    :cond_2
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->b(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 29
    monitor-enter p0

    .line 30
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 31
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 41
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->j:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 43
    monitor-enter p0

    .line 44
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 45
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 34
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->k:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 36
    monitor-enter p0

    .line 37
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 38
    monitor-exit p0

    :goto_2
    return v1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    .line 47
    :goto_3
    monitor-enter p0

    .line 48
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw p1

    :catchall_6
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 25
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->h:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
