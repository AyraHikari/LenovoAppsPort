.class public Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;
.super Lcom/meicam/effect/sdk/NvsEffect;
.source "NvsVideoEffectAnimatedSticker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsEffect;-><init>()V

    return-void
.end method

.method private native nativeApplyAnimatedStickerInAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyAnimatedStickerOutAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyAnimatedStickerPeriodAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetAnimatedStickerInAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetAnimatedStickerOutAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetAnimatedStickerPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetAnimatedStickerPeriodAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetAnimationPeriod(J)I
.end method

.method private native nativeGetBoundingRectangleVertices(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCenterAzimuthAngle(J)F
.end method

.method private native nativeGetCenterPolarAngle(J)F
.end method

.method private native nativeGetDefaultDuration(J)J
.end method

.method private native nativeGetHorizontalFlip(J)Z
.end method

.method private native nativeGetInAnimationDuration(J)I
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetOriginalBoundingRect(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetOrthoAngleRange(J)F
.end method

.method private native nativeGetOutAnimationDuration(J)I
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetPolarAngleRange(J)F
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScale(J)F
.end method

.method private native nativeGetTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetVerticalFlip(J)Z
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRotateAnimatedSticker(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleAnimatedSticker(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnimationPeriod(JI)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetCurrentKeyFrameTime(JJ)V
.end method

.method private native nativeSetHorizontalFlip(JZ)V
.end method

.method private native nativeSetInAnimationDuration(JI)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetOutAnimationDuration(JI)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScale(JF)V
.end method

.method private native nativeSetTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetVerticalFlip(JZ)V
.end method

.method private native nativeSetVideoResolution(JLcom/meicam/sdk/NvsVideoResolution;)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateAnimatedSticker(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public applyAnimatedStickerInAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 722
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 723
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeApplyAnimatedStickerInAnimation(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyAnimatedStickerOutAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 742
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 743
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeApplyAnimatedStickerOutAnimation(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyAnimatedStickerPeriodAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 702
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 703
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeApplyAnimatedStickerPeriodAnimation(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public changeInPoint(J)J
    .locals 2

    .line 105
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 106
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeChangeInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 127
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 128
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeChangeOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAnimatedStickerAnimationPeriod()I
    .locals 2

    .line 774
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 775
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetAnimationPeriod(J)I

    move-result v0

    return v0
.end method

.method public getAnimatedStickerInAnimationDuration()I
    .locals 2

    .line 806
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 807
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetInAnimationDuration(J)I

    move-result v0

    return v0
.end method

.method public getAnimatedStickerInAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 666
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 667
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetAnimatedStickerInAnimationPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedStickerOutAnimationDuration()I
    .locals 2

    .line 838
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 839
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetOutAnimationDuration(J)I

    move-result v0

    return v0
.end method

.method public getAnimatedStickerOutAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 682
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 683
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetAnimatedStickerOutAnimationPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedStickerPackageId()Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 84
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetAnimatedStickerPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedStickerPeriodAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 650
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 651
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetAnimatedStickerPeriodAnimationPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingRectangleVertices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 407
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 408
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetBoundingRectangleVertices(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCenterAzimuthAngle()F
    .locals 2

    .line 482
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 483
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetCenterAzimuthAngle(J)F

    move-result v0

    return v0
.end method

.method public getCenterPolarAngle()F
    .locals 2

    .line 452
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 453
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetCenterPolarAngle(J)F

    move-result v0

    return v0
.end method

.method public getDefaultDuration()J
    .locals 2

    .line 572
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 573
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetDefaultDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHorizontalFlip()Z
    .locals 2

    .line 204
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 205
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetHorizontalFlip(J)Z

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpacity()F
    .locals 2

    .line 604
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 605
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetOpacity(J)F

    move-result v0

    return v0
.end method

.method public getOriginalBoundingRect()Landroid/graphics/RectF;
    .locals 2

    .line 392
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 393
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetOriginalBoundingRect(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOrthoAngleRange()F
    .locals 2

    .line 527
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 528
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetOrthoAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 68
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 69
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPolarAngleRange()F
    .locals 2

    .line 512
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 513
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetPolarAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .line 265
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 266
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetRotationZ(J)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 2

    .line 174
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 175
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetScale(J)F

    move-result v0

    return v0
.end method

.method public getTranslation()Landroid/graphics/PointF;
    .locals 2

    .line 296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 297
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetTranslation(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalFlip()Z
    .locals 2

    .line 234
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 235
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetVerticalFlip(J)Z

    move-result v0

    return v0
.end method

.method public getZValue()F
    .locals 2

    .line 557
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 558
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public isPanoramic()Z
    .locals 2

    .line 422
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 423
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeIsPanoramic(J)Z

    move-result v0

    return v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 143
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 144
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeMovePosition(JJ)V

    return-void
.end method

.method public rotateAnimatedSticker(F)V
    .locals 8

    .line 362
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 364
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->getBoundingRectangleVertices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 366
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 367
    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_4

    .line 369
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 370
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_0

    .line 371
    iget v3, v6, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 372
    :cond_0
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_1

    .line 373
    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 374
    :cond_1
    :goto_1
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v2

    if-gez v7, :cond_2

    .line 375
    iget v2, v6, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 376
    :cond_2
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_3

    .line 377
    iget v1, v6, Landroid/graphics/PointF;->y:F

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 379
    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->rotateAnimatedSticker(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateAnimatedSticker(FLandroid/graphics/PointF;)V
    .locals 2

    .line 347
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 348
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeRotateAnimatedSticker(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public scaleAnimatedSticker(FLandroid/graphics/PointF;)V
    .locals 2

    .line 330
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 331
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeScaleAnimatedSticker(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setAnimatedStickerAnimationPeriod(I)V
    .locals 2

    .line 758
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 759
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetAnimationPeriod(JI)V

    return-void
.end method

.method public setAnimatedStickerInAnimationDuration(I)V
    .locals 2

    .line 790
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 791
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetInAnimationDuration(JI)V

    return-void
.end method

.method public setAnimatedStickerOutAnimationDuration(I)V
    .locals 2

    .line 822
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 823
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetOutAnimationDuration(JI)V

    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    .line 467
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 468
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetCenterAzimuthAngle(JF)V

    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    .line 437
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 438
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetCenterPolarAngle(JF)V

    return-void
.end method

.method public setCurrentKeyFrameTime(J)V
    .locals 2

    .line 619
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 620
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetCurrentKeyFrameTime(JJ)V

    return-void
.end method

.method public setHorizontalFlip(Z)V
    .locals 2

    .line 189
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 190
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetHorizontalFlip(JZ)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 588
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 589
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    .line 497
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 498
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetPolarAngleRange(JF)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .line 249
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 250
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 160
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetScale(JF)V

    return-void
.end method

.method public setTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .line 281
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 282
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setVerticalFlip(Z)V
    .locals 2

    .line 219
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 220
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetVerticalFlip(JZ)V

    return-void
.end method

.method public setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V
    .locals 2

    .line 634
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 635
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetVideoResolution(JLcom/meicam/sdk/NvsVideoResolution;)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 542
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 543
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateAnimatedSticker(Landroid/graphics/PointF;)V
    .locals 2

    .line 313
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 314
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->nativeTranslateAnimatedSticker(JLandroid/graphics/PointF;)V

    return-void
.end method
