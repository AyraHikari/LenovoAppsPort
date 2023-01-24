.class public Lcom/meicam/sdk/NvsCompoundCaption;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsCompoundCaption.java"


# static fields
.field public static final BOUNDING_TYPE_FRAME:I = 0x2

.field public static final BOUNDING_TYPE_TEXT:I = 0x0

.field public static final BOUNDING_TYPE_TEXT_FRAME:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeFindKeyframeTime(JLjava/lang/String;JI)J
.end method

.method private native nativeGetAnchorPoint(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetBackgroundColor(JI)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetCaptionBoundingVertices(JIILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/meicam/sdk/NvsCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCaptionCount(J)I
.end method

.method private native nativeGetCaptionStylePackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetCompoundBoundingVertices(JILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/meicam/sdk/NvsCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetControlPoint(JLjava/lang/String;)Lcom/meicam/sdk/NvsControlPointPair;
.end method

.method private native nativeGetDrawOutline(JI)Z
.end method

.method private native nativeGetFontFamily(JI)Ljava/lang/String;
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetOutlineColor(JI)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetOutlineWidth(JI)F
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScaleX(J)F
.end method

.method private native nativeGetScaleY(J)F
.end method

.method private native nativeGetText(JI)Ljava/lang/String;
.end method

.method private native nativeGetTextColor(JI)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeHasKeyframeList(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveAllKeyframe(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z
.end method

.method private native nativeRotateCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnchorPoint(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetBackgroundColor(JLcom/meicam/sdk/NvsColor;I)V
.end method

.method private native nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetControlPoint(JLjava/lang/String;Lcom/meicam/sdk/NvsControlPointPair;)Z
.end method

.method private native nativeSetCurrentKeyFrameTime(JJ)V
.end method

.method private native nativeSetDrawOutline(JZI)V
.end method

.method private native nativeSetFontFamily(JILjava/lang/String;)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;I)V
.end method

.method private native nativeSetOutlineWidth(JFI)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScaleX(JF)V
.end method

.method private native nativeSetScaleY(JF)V
.end method

.method private native nativeSetText(JILjava/lang/String;)V
.end method

.method private native nativeSetTextColor(JILcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateCaption(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public findKeyframeTime(Ljava/lang/String;JI)J
    .locals 7

    .line 772
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsCompoundCaption;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeFindKeyframeTime(JLjava/lang/String;JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAnchorPoint()Landroid/graphics/PointF;
    .locals 2

    .line 241
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 242
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetAnchorPoint(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor(I)Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 657
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 658
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetBackgroundColor(JI)Lcom/meicam/sdk/NvsColor;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionBoundingVertices(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 410
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 411
    iget-wide v1, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCaptionBoundingVertices(JIILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionBoundingVertices(IILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/meicam/sdk/NvsCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 434
    iget-wide v1, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCaptionBoundingVertices(JIILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionCount()I
    .locals 2

    .line 63
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCaptionCount(J)I

    move-result v0

    return v0
.end method

.method public getCaptionStylePackageId()Ljava/lang/String;
    .locals 2

    .line 515
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 516
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCaptionStylePackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionTranslation()Landroid/graphics/PointF;
    .locals 2

    .line 195
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 196
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCaptionTranslation(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundBoundingVertices(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 427
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCompoundBoundingVertices(JILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCompoundBoundingVertices(ILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/meicam/sdk/NvsCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 440
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetCompoundBoundingVertices(JILcom/meicam/sdk/NvsCaption$MotionParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getControlPoint(Ljava/lang/String;)Lcom/meicam/sdk/NvsControlPointPair;
    .locals 2

    .line 706
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsCompoundCaption;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetControlPoint(JLjava/lang/String;)Lcom/meicam/sdk/NvsControlPointPair;

    move-result-object p1

    return-object p1
.end method

.method public getDrawOutline(I)Z
    .locals 2

    .line 550
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 551
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetDrawOutline(JI)Z

    move-result p1

    return p1
.end method

.method public getFontFamily(I)Ljava/lang/String;
    .locals 2

    .line 131
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 132
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetFontFamily(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOpacity()F
    .locals 2

    .line 500
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 501
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetOpacity(J)F

    move-result v0

    return v0
.end method

.method public getOutlineColor(I)Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 585
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 586
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetOutlineColor(JI)Lcom/meicam/sdk/NvsColor;

    move-result-object p1

    return-object p1
.end method

.method public getOutlineWidth(I)F
    .locals 2

    .line 621
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 622
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetOutlineWidth(JI)F

    move-result p1

    return p1
.end method

.method public getRotationZ()F
    .locals 2

    .line 351
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 352
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetRotationZ(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .line 273
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 274
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .line 305
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 306
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 98
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextColor(I)Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 165
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 166
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetTextColor(JI)Lcom/meicam/sdk/NvsColor;

    move-result-object p1

    return-object p1
.end method

.method public getZValue()F
    .locals 2

    .line 468
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 469
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public hasKeyframeList(Ljava/lang/String;)Z
    .locals 2

    .line 753
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsCompoundCaption;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeHasKeyframeList(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAllKeyframe(Ljava/lang/String;)Z
    .locals 2

    .line 738
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsCompoundCaption;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeRemoveAllKeyframe(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeKeyframeAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 723
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsCompoundCaption;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public rotateCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 367
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 368
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeRotateCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateCaptionAroundCenter(FI)V
    .locals 6

    .line 383
    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->getCompoundBoundingVertices(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 384
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v0, v1, :cond_1

    .line 389
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 390
    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v5

    .line 391
    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    new-instance p2, Landroid/graphics/PointF;

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr v2, v0

    div-float/2addr v3, v0

    invoke-direct {p2, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->rotateCaption(FLandroid/graphics/PointF;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public scaleCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 321
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 322
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeScaleCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setAnchorPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 226
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 227
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetAnchorPoint(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/meicam/sdk/NvsColor;I)V
    .locals 2

    .line 639
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 640
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetBackgroundColor(JLcom/meicam/sdk/NvsColor;I)V

    return-void
.end method

.method public setCaptionTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .line 180
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 181
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setControlPoint(Ljava/lang/String;Lcom/meicam/sdk/NvsControlPointPair;)Z
    .locals 2

    .line 689
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsCompoundCaption;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetControlPoint(JLjava/lang/String;Lcom/meicam/sdk/NvsControlPointPair;)Z

    move-result p1

    return p1
.end method

.method public setCurrentKeyFrameTime(J)V
    .locals 2

    .line 671
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 672
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetCurrentKeyFrameTime(JJ)V

    return-void
.end method

.method public setDrawOutline(ZI)V
    .locals 2

    .line 533
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 534
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetDrawOutline(JZI)V

    return-void
.end method

.method public setFontFamily(ILjava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 115
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetFontFamily(JILjava/lang/String;)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 484
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 485
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setOutlineColor(Lcom/meicam/sdk/NvsColor;I)V
    .locals 2

    .line 567
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 568
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;I)V

    return-void
.end method

.method public setOutlineWidth(FI)V
    .locals 2

    .line 603
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 604
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetOutlineWidth(JFI)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .line 336
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 337
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 257
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 258
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetScaleX(JF)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    .line 289
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 290
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetScaleY(JF)V

    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 81
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetText(JILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(ILcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 149
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetTextColor(JILcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 454
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 455
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateCaption(Landroid/graphics/PointF;)V
    .locals 2

    .line 211
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 212
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCompoundCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCompoundCaption;->nativeTranslateCaption(JLandroid/graphics/PointF;)V

    return-void
.end method
