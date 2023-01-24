.class public Lcom/meicam/sdk/NvsCaptureCompoundCaption;
.super Lcom/meicam/sdk/NvsCompoundCaption;
.source "NvsCaptureCompoundCaption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/meicam/sdk/NvsCompoundCaption;-><init>()V

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

    .line 103
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 104
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->nativeCaptureChangeDuration(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOffsetPoint(J)J
    .locals 2

    .line 87
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 88
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->nativeCaptureChangeOffsetPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDuration()J
    .locals 2

    .line 70
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 71
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->nativeCaptureGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffsetPoint()J
    .locals 2

    .line 54
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 55
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->nativeCaptureGetOffsetPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetStartTime()V
    .locals 2

    .line 115
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 116
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureCompoundCaption;->nativeCaptureResetStartTime(J)V

    return-void
.end method
