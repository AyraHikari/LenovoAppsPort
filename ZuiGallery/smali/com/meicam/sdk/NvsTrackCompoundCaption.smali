.class public Lcom/meicam/sdk/NvsTrackCompoundCaption;
.super Lcom/meicam/sdk/NvsCompoundCaption;
.source "NvsTrackCompoundCaption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/meicam/sdk/NvsCompoundCaption;-><init>()V

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

    .line 113
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 114
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeChangeTrackInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 132
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 133
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeChangeTrackOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getClipAffinityEnabled()Z
    .locals 2

    .line 62
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 63
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeGetTrackClipAffinityEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 78
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 79
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeGetTrackInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 94
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 95
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeGetTrackOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 149
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeMoveTrackPosition(JJ)V

    return-void
.end method

.method public setClipAffinityEnabled(Z)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 49
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTrackCompoundCaption;->nativeSetTrackClipAffinityEnabled(JZ)V

    return-void
.end method
