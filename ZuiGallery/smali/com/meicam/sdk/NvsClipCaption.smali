.class public Lcom/meicam/sdk/NvsClipCaption;
.super Lcom/meicam/sdk/NvsCaption;
.source "NvsClipCaption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/meicam/sdk/NvsCaption;-><init>()V

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

    .line 89
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 90
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipCaption;->nativeChangeClipInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 111
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 112
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipCaption;->nativeChangeClipOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAbsoluteTimeUsed()Z
    .locals 2

    .line 161
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 162
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipCaption;->nativeGetAbsoluteTimeUsed(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 50
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 51
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipCaption;->nativeGetClipInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 67
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 68
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipCaption;->nativeGetClipOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 130
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 131
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipCaption;->nativeMoveClipPosition(JJ)V

    return-void
.end method

.method public setAbsoluteTimeUsed(Z)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 147
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsClipCaption;->nativeSetAbsoluteTimeUsed(JZ)V

    return-void
.end method
