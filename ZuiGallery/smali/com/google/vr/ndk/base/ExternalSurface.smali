.class public Lcom/google/vr/ndk/base/ExternalSurface;
.super Ljava/lang/Object;
.source "ExternalSurface.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativeExternalSurface:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/google/vr/ndk/base/ExternalSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/ExternalSurface;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExternalSurface"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    return-void
.end method

.method constructor <init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "gvrApi",
            "listener",
            "handler"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 62
    new-instance v0, Lcom/google/vr/ndk/base/ExternalSurface$1;

    invoke-direct {v0, p0, p2}, Lcom/google/vr/ndk/base/ExternalSurface$1;-><init>(Lcom/google/vr/ndk/base/ExternalSurface;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;)V

    .line 79
    new-instance v1, Lcom/google/vr/ndk/base/ExternalSurface$2;

    invoke-direct {v1, p0, p2}, Lcom/google/vr/ndk/base/ExternalSurface$2;-><init>(Lcom/google/vr/ndk/base/ExternalSurface;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->getNativeGvrContext()J

    move-result-wide p1

    .line 87
    invoke-static {p1, p2, v0, v1, p3}, Lcom/google/vr/ndk/base/GvrApi;->nativeExternalSurfaceCreateWithListeners(JLjava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ExternalSurface creation failed. Is reprojection enabled?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExternalSurface creation requires a valid Handler."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExternalSurface creation requires a valid listener."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/vr/ndk/base/ExternalSurface;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/google/vr/ndk/base/ExternalSurface;->TAG:Ljava/lang/String;

    const-string v1, "ExternalSurface.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/ExternalSurface;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getId()I
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeExternalSurfaceGetId(J)I

    move-result v0

    return v0
.end method

.method getNativeExternalSurface()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeExternalSurfaceGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 5

    .line 133
    iget-wide v0, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 134
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeExternalSurfaceDestroy(J)V

    .line 135
    iput-wide v2, p0, Lcom/google/vr/ndk/base/ExternalSurface;->nativeExternalSurface:J

    :cond_0
    return-void
.end method
