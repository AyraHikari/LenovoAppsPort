.class public Lcom/meicam/sdk/NvsCaptureAnimatedSticker;
.super Lcom/meicam/sdk/NvsAnimatedSticker;
.source "NvsCaptureAnimatedSticker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/meicam/sdk/NvsAnimatedSticker;-><init>()V

    return-void
.end method

.method private native nativeCaptureChangeDuration(JJ)J
.end method

.method private native nativeCaptureChangeOffsetPoint(JJ)J
.end method

.method private native nativeCaptureGetDuration(J)J
.end method

.method private native nativeCaptureGetOffsetPoint(J)J
.end method

.method private native nativeCaptureResetStartTime(J)V
.end method


# virtual methods
.method public changeDuration(J)J
    .locals 2

    .line 105
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 106
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->nativeCaptureChangeDuration(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOffsetPoint(J)J
    .locals 2

    .line 89
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 90
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->nativeCaptureChangeOffsetPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDuration()J
    .locals 2

    .line 69
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 70
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->nativeCaptureGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffsetPoint()J
    .locals 2

    .line 53
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 54
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->nativeCaptureGetOffsetPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetStartTime()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 118
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureAnimatedSticker;->nativeCaptureResetStartTime(J)V

    return-void
.end method
