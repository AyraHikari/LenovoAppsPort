.class public Lcom/meicam/sdk/NvsTrackCaption;
.super Lcom/meicam/sdk/NvsCaption;
.source "NvsTrackCaption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/meicam/sdk/NvsCaption;-><init>()V

    return-void
.end method

.method private native nativeChangeTrackInPoint(JJ)J
.end method

.method private native nativeChangeTrackOutPoint(JJ)J
.end method

.method private native nativeGetTrackClipAffinityEnabled(J)Z
.end method

.method private native nativeGetTrackInPoint(J)J
.end method

.method private native nativeGetTrackOutPoint(J)J
.end method

.method private native nativeMoveTrackPosition(JJ)V
.end method

.method private native nativeSetTrackClipAffinityEnabled(JZ)V
.end method


# virtual methods
.method public changeInPoint(J)J
    .locals 2

    .line 114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 115
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackCaption;->nativeChangeTrackInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 135
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 136
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackCaption;->nativeChangeTrackOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getClipAffinityEnabled()Z
    .locals 2

    .line 61
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 62
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackCaption;->nativeGetTrackClipAffinityEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 77
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 78
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackCaption;->nativeGetTrackInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 93
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 94
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackCaption;->nativeGetTrackOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 153
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 154
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackCaption;->nativeMoveTrackPosition(JJ)V

    return-void
.end method

.method public setClipAffinityEnabled(Z)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 48
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTrackCaption;->nativeSetTrackClipAffinityEnabled(JZ)V

    return-void
.end method
