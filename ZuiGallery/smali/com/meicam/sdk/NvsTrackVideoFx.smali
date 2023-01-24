.class public Lcom/meicam/sdk/NvsTrackVideoFx;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsTrackVideoFx.java"


# static fields
.field public static final TRACK_VIDEOFX_TYPE_BUILTIN:I = 0x0

.field public static final TRACK_VIDEOFX_TYPE_CUSTOM:I = 0x2

.field public static final TRACK_VIDEOFX_TYPE_PACKAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetBuiltinTrackVideoFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetTrackVideoFxPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetTrackVideoFxType(J)I
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeMapPointFromCanonicalToParticleSystem(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeSetZValue(JF)V
.end method


# virtual methods
.method public changeInPoint(J)J
    .locals 2

    .line 143
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 144
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeChangeInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 164
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 165
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeChangeOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBuiltinTrackVideoFxName()Ljava/lang/String;
    .locals 2

    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeGetBuiltinTrackVideoFxName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInPoint()J
    .locals 2

    .line 105
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 106
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 122
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 123
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackVideoFxPackageId()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 89
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeGetTrackVideoFxPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackVideoFxType()I
    .locals 2

    .line 58
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 59
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeGetTrackVideoFxType(J)I

    move-result v0

    return v0
.end method

.method public getZValue()F
    .locals 2

    .line 231
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 232
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public mapPointFromCanonicalToParticleSystem(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 201
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 202
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeMapPointFromCanonicalToParticleSystem(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public movePosition(J)V
    .locals 2

    .line 183
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 184
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeMovePosition(JJ)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 216
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 217
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTrackVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTrackVideoFx;->nativeSetZValue(JF)V

    return-void
.end method
