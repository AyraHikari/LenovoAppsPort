.class public Lcom/google/vr/cardboard/DisplaySynchronizer;
.super Ljava/lang/Object;
.source "DisplaySynchronizer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final DEBUG:Z = false

.field public static final DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

.field private static final INVALID_DISPLAY_ROTATION:I = -0x1

.field private static final MIN_VALID_DISPLAY_REFRESH_RATE:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "DisplaySynchronizer"


# instance fields
.field private volatile display:Landroid/view/Display;

.field private volatile displayRotationDegrees:I

.field private final frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

.field private lastDisplayRotationUpdateTimeNanos:J

.field private volatile nativeDisplaySynchronizer:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/vr/cardboard/DisplaySynchronizer;->DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "display"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    .line 58
    iget-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->setDisplay(Landroid/view/Display;)V

    .line 63
    new-instance p1, Lcom/google/vr/cardboard/FrameMonitor;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/FrameMonitor;-><init>(Landroid/view/Choreographer$FrameCallback;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    .line 64
    invoke-virtual {p1}, Lcom/google/vr/cardboard/FrameMonitor;->init()V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Native DisplaySynchronizer creation failed, implementation unavailable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNativeDisplaySynchronizer()V
    .locals 4

    .line 212
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DisplaySynchronizer has already been shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateDisplayRotation()V
    .locals 1

    const/4 v0, -0x1

    .line 218
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTimeNanos"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 183
    iget v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    sub-long v0, p1, v0

    sget-wide v2, Lcom/google/vr/cardboard/DisplaySynchronizer;->DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const-string v0, "DisplaySynchronizer"

    const-string v2, "Unknown display rotation, defaulting to 0"

    .line 200
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    .line 197
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    .line 194
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    .line 191
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    .line 188
    :cond_4
    iput v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    .line 203
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    .line 208
    :cond_5
    iget-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    iget v6, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeUpdate(JJI)V

    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 110
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "DisplaySynchronizer"

    const-string v1, "DisplaySynchronizer.shutdown() should be called to ensure resource cleanup"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    return-object v0
.end method

.method public getNativeDisplaySynchronizer()J
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 168
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    return-wide v0
.end method

.method protected native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "appContext"
        }
    .end annotation
.end method

.method protected native nativeDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeDisplaySynchronizer"
        }
    .end annotation
.end method

.method protected native nativeReset(JJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeDisplaySynchronizer",
            "expectedInterval",
            "vsyncOffset"
        }
    .end annotation
.end method

.method protected native nativeUpdate(JJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeDisplaySynchronizer",
            "syncTime",
            "currentRotation"
        }
    .end annotation
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayRotation()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayRotation()V

    .line 131
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->onResume()V

    return-void
.end method

.method public setDisplay(Landroid/view/Display;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 78
    iput-object p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    .line 79
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayRotation()V

    .line 81
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    const-wide/16 v2, 0x0

    if-ltz v1, :cond_0

    .line 84
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-float v1, v4

    div-float/2addr v1, v0

    float-to-long v0, v1

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, v2

    .line 88
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v2

    :cond_1
    move-wide v9, v2

    .line 94
    iget-wide v5, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeReset(JJJ)V

    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 148
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onPause()V

    .line 152
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->shutdown()V

    .line 153
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V

    .line 154
    iput-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    :cond_0
    return-void
.end method
