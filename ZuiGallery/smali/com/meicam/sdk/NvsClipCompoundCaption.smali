.class public Lcom/meicam/sdk/NvsClipCompoundCaption;
.super Lcom/meicam/sdk/NvsCompoundCaption;
.source "NvsClipCompoundCaption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/meicam/sdk/NvsCompoundCaption;-><init>()V

    return-void
.end method

.method private native nativeChangeClipInPoint(JJ)J
.end method

.method private native nativeChangeClipOutPoint(JJ)J
.end method

.method private native nativeGetAbsoluteTimeUsed(J)Z
.end method

.method private native nativeGetClipInPoint(J)J
.end method

.method private native nativeGetClipOutPoint(J)J
.end method

.method private native nativeMoveClipPosition(JJ)V
.end method

.method private native nativeSetAbsoluteTimeUsed(JZ)V
.end method


# virtual methods
.method public changeInPoint(J)J
    .locals 2

    .line 88
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 89
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeChangeClipInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 108
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 109
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeChangeClipOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAbsoluteTimeUsed()Z
    .locals 2

    .line 156
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 157
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeGetAbsoluteTimeUsed(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 51
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 52
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeGetClipInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 68
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 69
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeGetClipOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 125
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 126
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeMoveClipPosition(JJ)V

    return-void
.end method

.method public setAbsoluteTimeUsed(Z)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 142
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsClipCompoundCaption;->nativeSetAbsoluteTimeUsed(JZ)V

    return-void
.end method
