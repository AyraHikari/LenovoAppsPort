.class public Lcom/meicam/sdk/NvsCaptureCaption;
.super Lcom/meicam/sdk/NvsCaption;
.source "NvsCaptureCaption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/meicam/sdk/NvsCaption;-><init>()V

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

    .line 102
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 103
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCaptureCaption;->nativeCaptureChangeDuration(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOffsetPoint(J)J
    .locals 2

    .line 86
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 87
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCaptureCaption;->nativeCaptureChangeOffsetPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDuration()J
    .locals 2

    .line 69
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 70
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureCaption;->nativeCaptureGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffsetPoint()J
    .locals 2

    .line 53
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 54
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureCaption;->nativeCaptureGetOffsetPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetStartTime()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 115
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureCaption;->nativeCaptureResetStartTime(J)V

    return-void
.end method
