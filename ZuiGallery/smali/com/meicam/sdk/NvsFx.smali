.class public Lcom/meicam/sdk/NvsFx;
.super Lcom/meicam/sdk/NvsObject;
.source "NvsFx.java"


# static fields
.field public static final FACE_WARP_EFFECT_STRATEGY_CUSTOM:I = 0x7fffffff

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_AFTER:I = 0x2

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_BEFORE:I = 0x1

.field public static final REGION_COORDINATE_SYSTEM_TYPE_NDC:I = 0x0

.field public static final REGION_COORDINATE_SYSTEM_TYPE_TIMELINE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/meicam/sdk/NvsObject;-><init>()V

    return-void
.end method

.method private native nativeClearExprVar(JLjava/lang/String;)V
.end method

.method private native nativeClearExprVarCtx(J)V
.end method

.method private native nativeFindKeyframeTime(JLjava/lang/String;JI)J
.end method

.method private native nativeGetARFaceContext(J)Lcom/meicam/sdk/NvsARFaceContext;
.end method

.method private native nativeGetARSceneManipulate(J)Lcom/meicam/sdk/NvsARSceneManipulate;
.end method

.method private native nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsArbitraryData;
.end method

.method private native nativeGetBooleanVal(JLjava/lang/String;J)Z
.end method

.method private native nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetDescription(J)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetExprStringVar(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetExprVar(JLjava/lang/String;)D
.end method

.method private native nativeGetFilterIntensity(J)F
.end method

.method private native nativeGetFilterMask(J)Z
.end method

.method private native nativeGetFloatVal(JLjava/lang/String;J)D
.end method

.method private native nativeGetIgnoreBackground(J)Z
.end method

.method private native nativeGetIntVal(JLjava/lang/String;J)I
.end method

.method private native nativeGetInverseRegion(J)Z
.end method

.method private native nativeGetKeyFrameControlPoint(JLjava/lang/String;J)Lcom/meicam/sdk/NvsControlPointPair;
.end method

.method private native nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method private native nativeGetPaintingEffectContext(J)Lcom/meicam/sdk/NvsPaintingEffectContext;
.end method

.method private native nativeGetParticleSystemContext(J)Lcom/meicam/sdk/NvsParticleSystemContext;
.end method

.method private native nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;
.end method

.method private native nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;
.end method

.method private native nativeGetRegion(J)[F
.end method

.method private native nativeGetRegionCoordinateSystemType(J)I
.end method

.method private native nativeGetRegionInfo(JJ)Lcom/meicam/sdk/NvsMaskRegionInfo;
.end method

.method private native nativeGetRegional(J)Z
.end method

.method private native nativeGetRegionalFeatherWidth(J)F
.end method

.method private native nativeGetRegionalFeatherWidthAtTime(JJ)F
.end method

.method private native nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method private native nativeHasKeyframeList(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveAllKeyframe(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z
.end method

.method private native nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V
.end method

.method private native nativeSetBooleanVal(JLjava/lang/String;ZJ)V
.end method

.method private native nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V
.end method

.method private native nativeSetExprStringVar(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetExprVar(JLjava/lang/String;D)V
.end method

.method private native nativeSetFilterIntensity(JF)V
.end method

.method private native nativeSetFilterMask(JZ)V
.end method

.method private native nativeSetFloatVal(JLjava/lang/String;DJ)V
.end method

.method private native nativeSetIgnoreBackground(JZ)V
.end method

.method private native nativeSetIntVal(JLjava/lang/String;IJ)V
.end method

.method private native nativeSetInverseRegion(JZ)V
.end method

.method private native nativeSetKeyFrameControlPoint(JLjava/lang/String;JLcom/meicam/sdk/NvsControlPointPair;)Z
.end method

.method private native nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method

.method private native nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V
.end method

.method private native nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V
.end method

.method private native nativeSetRegion(J[F)V
.end method

.method private native nativeSetRegionCoordinateSystemType(JI)V
.end method

.method private native nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V
.end method

.method private native nativeSetRegional(JZ)V
.end method

.method private native nativeSetRegionalFeatherWidth(JF)V
.end method

.method private native nativeSetRegionalFeatherWidthAtTime(JFJ)V
.end method

.method private native nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method


# virtual methods
.method public clearExprVar(Ljava/lang/String;)V
    .locals 2

    .line 1329
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1330
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeClearExprVar(JLjava/lang/String;)V

    return-void
.end method

.method public clearExprVarCtx()V
    .locals 2

    .line 1341
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1342
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeClearExprVarCtx(J)V

    return-void
.end method

.method public findKeyframeTime(Ljava/lang/String;JI)J
    .locals 7

    .line 794
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeFindKeyframeTime(JLjava/lang/String;JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getARFaceContext()Lcom/meicam/sdk/NvsARFaceContext;
    .locals 2

    .line 1218
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1219
    iget-wide v0, p0, Lcom/meicam/sdk/NvsFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetARFaceContext(J)Lcom/meicam/sdk/NvsARFaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getARSceneManipulate()Lcom/meicam/sdk/NvsARSceneManipulate;
    .locals 2

    .line 1247
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1248
    iget-wide v0, p0, Lcom/meicam/sdk/NvsFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetARSceneManipulate(J)Lcom/meicam/sdk/NvsARSceneManipulate;

    move-result-object v0

    return-object v0
.end method

.method public getArbDataVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsArbitraryData;
    .locals 6

    .line 692
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsArbitraryData;

    move-result-object p1

    return-object p1
.end method

.method public getArbDataValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)Lcom/meicam/sdk/NvsArbitraryData;
    .locals 6

    .line 728
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsArbitraryData;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanVal(Ljava/lang/String;)Z
    .locals 6

    .line 260
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 261
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public getBooleanValAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 297
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public getColorVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsColor;
    .locals 6

    .line 398
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 399
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;

    move-result-object p1

    return-object p1
.end method

.method public getColorValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsColor;
    .locals 6

    .line 436
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 437
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Lcom/meicam/sdk/NvsFxDescription;
    .locals 2

    .line 92
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 93
    iget-wide v0, p0, Lcom/meicam/sdk/NvsFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetDescription(J)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object v0

    return-object v0
.end method

.method public getExprStringVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1315
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1316
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeGetExprStringVar(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExprVar(Ljava/lang/String;)D
    .locals 2

    .line 1281
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1282
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeGetExprVar(JLjava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFilterIntensity()F
    .locals 2

    .line 864
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 865
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetFilterIntensity(J)F

    move-result v0

    return v0
.end method

.method public getFilterMask()Z
    .locals 2

    .line 896
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 897
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetFilterMask(J)Z

    move-result v0

    return v0
.end method

.method public getFloatVal(Ljava/lang/String;)D
    .locals 6

    .line 192
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 193
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatValAtTime(Ljava/lang/String;J)D
    .locals 6

    .line 228
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 229
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getIgnoreBackground()Z
    .locals 2

    .line 960
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 961
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetIgnoreBackground(J)Z

    move-result v0

    return v0
.end method

.method public getIntVal(Ljava/lang/String;)I
    .locals 6

    .line 124
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 125
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public getIntValAtTime(Ljava/lang/String;J)I
    .locals 6

    .line 160
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 161
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public getInverseRegion()Z
    .locals 2

    .line 992
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 993
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetInverseRegion(J)Z

    move-result v0

    return v0
.end method

.method public getKeyFrameControlPoint(Ljava/lang/String;J)Lcom/meicam/sdk/NvsControlPointPair;
    .locals 6

    .line 833
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetKeyFrameControlPoint(JLjava/lang/String;J)Lcom/meicam/sdk/NvsControlPointPair;

    move-result-object p1

    return-object p1
.end method

.method public getMenuVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 622
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 623
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMenuValAtTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 660
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 661
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPaintingEffectContext()Lcom/meicam/sdk/NvsPaintingEffectContext;
    .locals 2

    .line 1233
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1234
    iget-wide v0, p0, Lcom/meicam/sdk/NvsFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetPaintingEffectContext(J)Lcom/meicam/sdk/NvsPaintingEffectContext;

    move-result-object v0

    return-object v0
.end method

.method public getParticleSystemContext()Lcom/meicam/sdk/NvsParticleSystemContext;
    .locals 2

    .line 1204
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1205
    iget-wide v0, p0, Lcom/meicam/sdk/NvsFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetParticleSystemContext(J)Lcom/meicam/sdk/NvsParticleSystemContext;

    move-result-object v0

    return-object v0
.end method

.method public getPosition2DVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsPosition2D;
    .locals 6

    .line 472
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 473
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;

    move-result-object p1

    return-object p1
.end method

.method public getPosition2DValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;
    .locals 6

    .line 512
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 513
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;

    move-result-object p1

    return-object p1
.end method

.method public getPosition3DVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsPosition3D;
    .locals 6

    .line 548
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 549
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;

    move-result-object p1

    return-object p1
.end method

.method public getPosition3DValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;
    .locals 6

    .line 588
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 589
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;

    move-result-object p1

    return-object p1
.end method

.method public getRegion()[F
    .locals 2

    .line 1024
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1025
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegion(J)[F

    move-result-object v0

    return-object v0
.end method

.method public getRegionCoordinateSystemType()I
    .locals 2

    .line 1190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1191
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionCoordinateSystemType(J)I

    move-result v0

    return v0
.end method

.method public getRegionInfo()Lcom/meicam/sdk/NvsMaskRegionInfo;
    .locals 4

    .line 1056
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1057
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionInfo(JJ)Lcom/meicam/sdk/NvsMaskRegionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRegionInfoAtTime(J)Lcom/meicam/sdk/NvsMaskRegionInfo;
    .locals 2

    .line 1090
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1091
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionInfo(JJ)Lcom/meicam/sdk/NvsMaskRegionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getRegional()Z
    .locals 2

    .line 928
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 929
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegional(J)Z

    move-result v0

    return v0
.end method

.method public getRegionalFeatherWidth()F
    .locals 2

    .line 1123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1124
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionalFeatherWidth(J)F

    move-result v0

    return v0
.end method

.method public getRegionalFeatherWidthAtTime(J)F
    .locals 2

    .line 1158
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1159
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionalFeatherWidthAtTime(JJ)F

    move-result p1

    return p1
.end method

.method public getStringVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 328
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 329
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringValAtTime(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 6

    .line 364
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 365
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasKeyframeList(Ljava/lang/String;)Z
    .locals 2

    .line 775
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeHasKeyframeList(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAllKeyframe(Ljava/lang/String;)Z
    .locals 2

    .line 760
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeRemoveAllKeyframe(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeKeyframeAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 745
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public setArbDataVal(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;)V
    .locals 7

    .line 677
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setArbDataValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V
    .locals 7

    .line 710
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setBooleanVal(Ljava/lang/String;Z)V
    .locals 7

    .line 244
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 245
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setBooleanValAtTime(Ljava/lang/String;ZJ)V
    .locals 7

    .line 278
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 279
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setColorVal(Ljava/lang/String;Lcom/meicam/sdk/NvsColor;)V
    .locals 7

    .line 381
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 382
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V

    return-void
.end method

.method public setColorValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsColor;J)V
    .locals 7

    .line 417
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 418
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V

    return-void
.end method

.method public setExprStringVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1298
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1299
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsFx;->nativeSetExprStringVar(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExprVar(Ljava/lang/String;D)V
    .locals 6

    .line 1264
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1265
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetExprVar(JLjava/lang/String;D)V

    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 2

    .line 848
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 849
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetFilterIntensity(JF)V

    return-void
.end method

.method public setFilterMask(Z)V
    .locals 2

    .line 880
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 881
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetFilterMask(JZ)V

    return-void
.end method

.method public setFloatVal(Ljava/lang/String;D)V
    .locals 8

    .line 176
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 177
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsFx;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setFloatValAtTime(Ljava/lang/String;DJ)V
    .locals 8

    .line 210
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 211
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsFx;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setIgnoreBackground(Z)V
    .locals 2

    .line 944
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 945
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetIgnoreBackground(JZ)V

    return-void
.end method

.method public setIntVal(Ljava/lang/String;I)V
    .locals 7

    .line 108
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 109
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setIntValAtTime(Ljava/lang/String;IJ)V
    .locals 7

    .line 142
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 143
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setInverseRegion(Z)V
    .locals 2

    .line 976
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 977
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetInverseRegion(JZ)V

    return-void
.end method

.method public setKeyFrameControlPoint(Ljava/lang/String;JLcom/meicam/sdk/NvsControlPointPair;)Z
    .locals 7

    .line 813
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetKeyFrameControlPoint(JLjava/lang/String;JLcom/meicam/sdk/NvsControlPointPair;)Z

    move-result p1

    return p1
.end method

.method public setMenuVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 605
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 606
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setMenuValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 641
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 642
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setPosition2DVal(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 7

    .line 454
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 455
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition2DValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V
    .locals 7

    .line 492
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 493
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition3DVal(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition3D;)V
    .locals 7

    .line 530
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 531
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setPosition3DValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V
    .locals 7

    .line 568
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 569
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setRegion([F)V
    .locals 2

    .line 1008
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1009
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegion(J[F)V

    return-void
.end method

.method public setRegionCoordinateSystemType(I)V
    .locals 2

    .line 1174
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1175
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionCoordinateSystemType(JI)V

    return-void
.end method

.method public setRegionInfo(Lcom/meicam/sdk/NvsMaskRegionInfo;)V
    .locals 6

    .line 1040
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1041
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegionInfoAtTime(Lcom/meicam/sdk/NvsMaskRegionInfo;J)V
    .locals 6

    .line 1074
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1075
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegional(Z)V
    .locals 2

    .line 912
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 913
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegional(JZ)V

    return-void
.end method

.method public setRegionalFeatherWidth(F)V
    .locals 2

    .line 1107
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1108
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionalFeatherWidth(JF)V

    return-void
.end method

.method public setRegionalFeatherWidthAtTime(FJ)V
    .locals 6

    .line 1140
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1141
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionalFeatherWidthAtTime(JFJ)V

    return-void
.end method

.method public setStringVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 312
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 313
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setStringValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 346
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 347
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsFx;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
