.class public final Lcom/google/vr/internal/controller/NativeCallbacks;
.super Ljava/lang/Object;
.source "NativeCallbacks.java"

# interfaces
.implements Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;


# instance fields
.field private closed:Z

.field private final userData:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userData"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    return-void
.end method

.method private final native handleAccelEvent(JIJFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method private final native handleBatteryEvent(JIJZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "isCharging",
            "batteryLevelBucket"
        }
    .end annotation
.end method

.method private final native handleButtonEvent(JIJIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "buttonCode",
            "down"
        }
    .end annotation
.end method

.method private final native handleControllerRecentered(JIJFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "qx",
            "qy",
            "qz",
            "qw"
        }
    .end annotation
.end method

.method private final handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_0
    iget-boolean v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getAccelEventCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 116
    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getAccelEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    move-result-object v2

    .line 117
    iget-wide v4, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v6, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->controllerId:I

    iget-wide v7, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->timestampNanos:J

    iget v9, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    iget v10, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    iget v11, v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleAccelEvent(JIJFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 128
    :goto_1
    iget-boolean v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEventCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 129
    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v2

    .line 130
    iget-wide v4, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v6, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->controllerId:I

    iget-wide v7, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->timestampNanos:J

    iget v9, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    iget-boolean v10, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleButtonEvent(JIJIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 140
    :goto_2
    iget-boolean v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getGyroEventCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 141
    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getGyroEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    move-result-object v2

    .line 142
    iget-wide v4, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v6, v2, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->controllerId:I

    iget-wide v7, v2, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->timestampNanos:J

    iget v9, v2, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    iget v10, v2, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    iget v11, v2, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleGyroEvent(JIJFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 153
    :goto_3
    iget-boolean v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getOrientationEventCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 154
    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getOrientationEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    move-result-object v2

    .line 155
    iget-wide v4, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v6, v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->controllerId:I

    iget-wide v7, v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->timestampNanos:J

    iget v9, v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iget v10, v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iget v11, v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iget v12, v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleOrientationEvent(JIJFFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 167
    :cond_3
    :goto_4
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getTouchEventCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getTouchEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    move-result-object v1

    .line 169
    iget-wide v3, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v5, v1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->controllerId:I

    iget-wide v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->timestampNanos:J

    iget v8, v1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    iget v9, v1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    iget v10, v1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleTouchEvent(JIJIFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private final native handleGyroEvent(JIJFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method private final native handleOrientationEvent(JIJFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "qx",
            "qy",
            "qz",
            "qw"
        }
    .end annotation
.end method

.method private final native handlePositionEvent(JIJFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method private final native handleServiceConnected(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userData",
            "flags"
        }
    .end annotation
.end method

.method private final native handleServiceDisconnected(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userData"
        }
    .end annotation
.end method

.method private final native handleServiceFailed(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userData"
        }
    .end annotation
.end method

.method private final native handleServiceInitFailed(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userData",
            "failureReason"
        }
    .end annotation
.end method

.method private final native handleServiceUnavailable(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userData"
        }
    .end annotation
.end method

.method private final native handleStateChanged(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "newState"
        }
    .end annotation
.end method

.method private final native handleTouchEvent(JIJIFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "controllerIndex",
            "timestampNanos",
            "action",
            "x",
            "y"
        }
    .end annotation
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 59
    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getPositionEventCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getPositionEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    move-result-object v1

    .line 92
    iget-wide v3, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v5, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->controllerId:I

    iget-wide v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->timestampNanos:J

    iget v8, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    iget v9, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    iget v10, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handlePositionEvent(JIJFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->hasBatteryEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getBatteryEvent()Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;

    move-result-object p1

    .line 103
    iget-wide v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v3, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->controllerId:I

    iget-wide v4, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->timestampNanos:J

    iget-boolean v6, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->charging:Z

    iget v7, p1, Lcom/google/vr/vrcore/controller/api/ControllerBatteryEvent;->batteryLevelBucket:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleBatteryEvent(JIJZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationEvent"
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 182
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget v4, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->controllerId:I

    iget-wide v5, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->timestampNanos:J

    iget v7, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iget v8, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iget v9, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iget v10, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleControllerRecentered(JIJFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onControllerStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controllerIndex",
            "newState"
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 67
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleStateChanged(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceConnected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 196
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceConnected(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected()V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceDisconnected(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceFailed()V
    .locals 2

    monitor-enter p0

    .line 209
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 210
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceFailed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceInitFailed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initResult"
        }
    .end annotation

    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 224
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceInitFailed(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceUnavailable()V
    .locals 2

    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceUnavailable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
