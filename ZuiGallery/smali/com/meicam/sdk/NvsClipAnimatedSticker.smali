.class public Lcom/meicam/sdk/NvsClipAnimatedSticker;
.super Lcom/meicam/sdk/NvsAnimatedSticker;
.source "NvsClipAnimatedSticker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/meicam/sdk/NvsAnimatedSticker;-><init>()V

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

    .line 96
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 97
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeChangeClipInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 121
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 122
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeChangeClipOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAbsoluteTimeUsed()Z
    .locals 2

    .line 171
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 172
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeGetAbsoluteTimeUsed(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 54
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 55
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeGetClipInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 71
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 72
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeGetClipOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 141
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeMoveClipPosition(JJ)V

    return-void
.end method

.method public setAbsoluteTimeUsed(Z)V
    .locals 2

    .line 156
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 157
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClipAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsClipAnimatedSticker;->nativeSetAbsoluteTimeUsed(JZ)V

    return-void
.end method
