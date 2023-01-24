.class public Lcom/meicam/effect/sdk/NvsVideoEffectCaption;
.super Lcom/meicam/effect/sdk/NvsEffect;
.source "NvsVideoEffectCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;
    }
.end annotation


# static fields
.field public static final BOUNDING_TYPE_FRAME:I = 0x2

.field public static final BOUNDING_TYPE_TEXT:I = 0x0

.field public static final BOUNDING_TYPE_TEXT_FRAME:I = 0x1

.field public static final BOUNDING_TYPE_TEXT_ORIGIN_FRAME:I = 0x3

.field public static final DEFAULT_CATEGORY:I = 0x0

.field public static final LETTER_SPACING_TYPE_ABSOLUTE:I = 0x1

.field public static final LETTER_SPACING_TYPE_PERCENTAGE:I = 0x0

.field public static final NOT_USE_ASSET_DEFAULT_PARAM:I = 0x1

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final TEXT_ALIGNMENT_BOTTOM:I = 0x4

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x1

.field public static final TEXT_ALIGNMENT_LEFT:I = 0x0

.field public static final TEXT_ALIGNMENT_RIGHT:I = 0x2

.field public static final TEXT_ALIGNMENT_TOP:I = 0x3

.field public static final TEXT_ALIGNMENT_VCENTER:I = 0x5

.field public static final THEME_CATEGORY:I = 0x2

.field public static final USER_CATEGORY:I = 0x1

.field public static final USE_ASSET_DEFAULT_PARAM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsEffect;-><init>()V

    return-void
.end method

.method private native nativeApplyCaptionAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionContext(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionInAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionOutAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionRenderer(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionStyle(JLjava/lang/String;I)Z
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetAnchorPoint(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetAnimationPeroid(J)I
.end method

.method private native nativeGetBackgroundColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetBackgroundRadius(J)F
.end method

.method private native nativeGetBold(J)Z
.end method

.method private native nativeGetCaptionAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionBoundingVertices(JILcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCaptionContextPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionInAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionOutAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionRendererPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionStylePackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetCategory(J)I
.end method

.method private native nativeGetCenterAzimuthAngle(J)F
.end method

.method private native nativeGetCenterPolarAngle(J)F
.end method

.method private native nativeGetDrawOutline(J)Z
.end method

.method private native nativeGetDrawShadow(J)Z
.end method

.method private native nativeGetFontFamily(J)Ljava/lang/String;
.end method

.method private native nativeGetFontFilePath(J)Ljava/lang/String;
.end method

.method private native nativeGetFontSize(J)F
.end method

.method private native nativeGetInAnimationDuration(J)I
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetItalic(J)Z
.end method

.method private native nativeGetLetterSpacing(J)F
.end method

.method private native nativeGetLetterSpacingType(J)I
.end method

.method private native nativeGetLineSpacing(J)F
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetOrthoAngleRange(J)F
.end method

.method private native nativeGetOutAnimationDuration(J)I
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetOutlineWidth(J)F
.end method

.method private native nativeGetPanoramicRotationAngle(J)F
.end method

.method private native nativeGetPanoramicScaleX(J)F
.end method

.method private native nativeGetPanoramicScaleY(J)F
.end method

.method private native nativeGetPolarAngleRange(J)F
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScaleX(J)F
.end method

.method private native nativeGetScaleY(J)F
.end method

.method private native nativeGetSecondaryColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetShadowFeather(J)F
.end method

.method private native nativeGetShadowOffset(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetText(J)Ljava/lang/String;
.end method

.method private native nativeGetTextAlignment(J)I
.end method

.method private native nativeGetTextBoundingRect(JZ)Landroid/graphics/RectF;
.end method

.method private native nativeGetTextCenterAzimuthAngle(J)F
.end method

.method private native nativeGetTextCenterPolarAngle(J)F
.end method

.method private native nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetTextOrthoAngleRange(J)F
.end method

.method private native nativeGetTextPolarAngleRange(J)F
.end method

.method private native nativeGetTextVerticalAlignment(J)I
.end method

.method private native nativeGetUnderline(J)Z
.end method

.method private native nativeGetVerticalLayout(J)Z
.end method

.method private native nativeGetWeight(J)I
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeIsFrameCaption(J)Z
.end method

.method private native nativeIsModular(J)Z
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRotateCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnchorPoint(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnimationPeroid(JI)V
.end method

.method private native nativeSetBackgroundColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetBackgroundRadius(JF)V
.end method

.method private native nativeSetBold(JZ)V
.end method

.method private native nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetCurrentKeyFrameTime(JJ)V
.end method

.method private native nativeSetDrawOutline(JZ)V
.end method

.method private native nativeSetDrawShadow(JZ)V
.end method

.method private native nativeSetFontByFilePath(JLjava/lang/String;)V
.end method

.method private native nativeSetFontFamily(JLjava/lang/String;)V
.end method

.method private native nativeSetFontSize(JF)V
.end method

.method private native nativeSetFrameCaptionMaxFontSize(JF)V
.end method

.method private native nativeSetInAnimationDuration(JI)V
.end method

.method private native nativeSetItalic(JZ)V
.end method

.method private native nativeSetLetterSpacing(JF)V
.end method

.method private native nativeSetLetterSpacingType(JI)V
.end method

.method private native nativeSetLineSpacing(JF)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetOutAnimationDuration(JI)V
.end method

.method private native nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetOutlineWidth(JF)V
.end method

.method private native nativeSetPanoramicRotationAngle(JF)V
.end method

.method private native nativeSetPanoramicScaleX(JF)V
.end method

.method private native nativeSetPanoramicScaleY(JF)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRecordingUserOperation(JZ)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScaleX(JF)V
.end method

.method private native nativeSetScaleY(JF)V
.end method

.method private native nativeSetSecondaryColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetShadowFeather(JF)V
.end method

.method private native nativeSetShadowOffset(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetText(JLjava/lang/String;)V
.end method

.method private native nativeSetTextAlignment(JI)V
.end method

.method private native nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetTextFrameOriginRect(JLandroid/graphics/RectF;)V
.end method

.method private native nativeSetTextVerticalAlignment(JI)V
.end method

.method private native nativeSetUnderline(JZ)V
.end method

.method private native nativeSetVerticalLayout(JZ)V
.end method

.method private native nativeSetVideoResolution(JLcom/meicam/sdk/NvsVideoResolution;)V
.end method

.method private native nativeSetWeight(JI)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateCaption(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public applyCaptionStyle(Ljava/lang/String;)Z
    .locals 3

    .line 366
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 367
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionStyle(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public applyCaptionStyle(Ljava/lang/String;I)Z
    .locals 2

    .line 386
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 387
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionStyle(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public applyModularCaptionAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 443
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 444
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionAnimation(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyModularCaptionContext(Ljava/lang/String;)Z
    .locals 2

    .line 405
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 406
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionContext(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyModularCaptionInAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 462
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 463
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionInAnimation(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyModularCaptionOutAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 481
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 482
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionOutAnimation(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyModularCaptionRenderer(Ljava/lang/String;)Z
    .locals 2

    .line 424
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 425
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeApplyCaptionRenderer(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public changeInPoint(J)J
    .locals 2

    .line 190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 191
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeChangeInPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 209
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 210
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeChangeOutPoint(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAnchorPoint()Landroid/graphics/PointF;
    .locals 2

    .line 1311
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1312
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetAnchorPoint(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 1915
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1916
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetBackgroundColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundRadius()F
    .locals 2

    .line 1945
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1946
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetBackgroundRadius(J)F

    move-result v0

    return v0
.end method

.method public getBold()Z
    .locals 2

    .line 723
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 724
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetBold(J)Z

    move-result v0

    return v0
.end method

.method public getCaptionBoundingVertices(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1498
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1499
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionBoundingVertices(JILcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionBoundingVertices(ILcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1546
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1547
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionBoundingVertices(JILcom/meicam/effect/sdk/NvsVideoEffectCaption$MotionParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionStylePackageId()Ljava/lang/String;
    .locals 2

    .line 268
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 269
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionStylePackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionTranslation()Landroid/graphics/PointF;
    .locals 2

    .line 1265
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1266
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionTranslation(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()I
    .locals 2

    .line 254
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 255
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCategory(J)I

    move-result v0

    return v0
.end method

.method public getCenterAzimuthAngle()F
    .locals 2

    .line 1645
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1646
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCenterAzimuthAngle(J)F

    move-result v0

    return v0
.end method

.method public getCenterPolarAngle()F
    .locals 2

    .line 1603
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1604
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCenterPolarAngle(J)F

    move-result v0

    return v0
.end method

.method public getDrawOutline()Z
    .locals 2

    .line 965
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 966
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetDrawOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDrawShadow()Z
    .locals 2

    .line 1055
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1056
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetDrawShadow(J)Z

    move-result v0

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 2

    .line 1235
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1236
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetFontFamily(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFilePath()Ljava/lang/String;
    .locals 2

    .line 1205
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1206
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetFontFilePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    .line 1175
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1176
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetFontSize(J)F

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .line 155
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 156
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItalic()Z
    .locals 2

    .line 783
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 784
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetItalic(J)Z

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .line 875
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 876
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getLetterSpacingType()I
    .locals 2

    .line 843
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 844
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetLetterSpacingType(J)I

    move-result v0

    return v0
.end method

.method public getLineSpacing()F
    .locals 2

    .line 905
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 906
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetLineSpacing(J)F

    move-result v0

    return v0
.end method

.method public getModularCaptionAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 316
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 317
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionAnimationPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModularCaptionAnimationPeroid()I
    .locals 2

    .line 511
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 512
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetAnimationPeroid(J)I

    move-result v0

    return v0
.end method

.method public getModularCaptionContextPackageId()Ljava/lang/String;
    .locals 2

    .line 284
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 285
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionContextPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModularCaptionInAnimationDuration()I
    .locals 2

    .line 541
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 542
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetInAnimationDuration(J)I

    move-result v0

    return v0
.end method

.method public getModularCaptionInAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 332
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 333
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionInAnimationPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModularCaptionOutAnimationDuration()I
    .locals 2

    .line 571
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 572
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetOutAnimationDuration(J)I

    move-result v0

    return v0
.end method

.method public getModularCaptionOutAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 348
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 349
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionOutAnimationPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModularCaptionRendererPackageId()Ljava/lang/String;
    .locals 2

    .line 300
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 301
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetCaptionRendererPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()F
    .locals 2

    .line 1885
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1886
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetOpacity(J)F

    move-result v0

    return v0
.end method

.method public getOrthoAngleRange()F
    .locals 2

    .line 1701
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1702
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetOrthoAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getOutPoint()J
    .locals 2

    .line 171
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 172
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutlineColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 995
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 996
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getOutlineWidth()F
    .locals 2

    .line 1025
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1026
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetOutlineWidth(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicRotation()F
    .locals 2

    .line 1813
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1814
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetPanoramicRotationAngle(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicScaleX()F
    .locals 2

    .line 1757
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1758
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetPanoramicScaleX(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicScaleY()F
    .locals 2

    .line 1785
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1786
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetPanoramicScaleY(J)F

    move-result v0

    return v0
.end method

.method public getPolarAngleRange()F
    .locals 2

    .line 1687
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1688
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetPolarAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getRoleInTheme()I
    .locals 2

    .line 240
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 241
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetRoleInTheme(J)I

    move-result v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .line 1421
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1422
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetRotationZ(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .line 1343
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1344
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .line 1375
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1376
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getSecondaryColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 1528
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1529
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetSecondaryColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getShadowColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 1085
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1086
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getShadowFeather()F
    .locals 2

    .line 1145
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1146
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetShadowFeather(J)F

    move-result v0

    return v0
.end method

.method public getShadowOffset()Landroid/graphics/PointF;
    .locals 2

    .line 1115
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1116
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetShadowOffset(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 601
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 602
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 2

    .line 662
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 663
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextAlignment(J)I

    move-result v0

    return v0
.end method

.method public getTextBoundingRect(Z)Landroid/graphics/RectF;
    .locals 2

    .line 1467
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1468
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextBoundingRect(JZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getTextCenterAzimuthAngle()F
    .locals 2

    .line 1659
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1660
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextCenterAzimuthAngle(J)F

    move-result v0

    return v0
.end method

.method public getTextCenterPolarAngle()F
    .locals 2

    .line 1617
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1618
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextCenterPolarAngle(J)F

    move-result v0

    return v0
.end method

.method public getTextColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 935
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 936
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getTextOrthoAngleRange()F
    .locals 2

    .line 1729
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1730
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextOrthoAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getTextPolarAngleRange()F
    .locals 2

    .line 1715
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1716
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextPolarAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getTextVerticalAlignment()I
    .locals 2

    .line 693
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 694
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetTextVerticalAlignment(J)I

    move-result v0

    return v0
.end method

.method public getUnderline()Z
    .locals 2

    .line 813
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 814
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetUnderline(J)Z

    move-result v0

    return v0
.end method

.method public getVerticalLayout()Z
    .locals 2

    .line 631
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 632
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetVerticalLayout(J)Z

    move-result v0

    return v0
.end method

.method public getWeight()I
    .locals 2

    .line 753
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 754
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetWeight(J)I

    move-result v0

    return v0
.end method

.method public getZValue()F
    .locals 2

    .line 1841
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1842
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public isFrameCaption()Z
    .locals 2

    .line 1973
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1974
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeIsFrameCaption(J)Z

    move-result v0

    return v0
.end method

.method public isModular()Z
    .locals 2

    .line 1575
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1576
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeIsModular(J)Z

    move-result v0

    return v0
.end method

.method public isPanoramic()Z
    .locals 2

    .line 1561
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1562
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeIsPanoramic(J)Z

    move-result v0

    return v0
.end method

.method public movePosition(J)V
    .locals 2

    .line 225
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 226
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeMovePosition(JJ)V

    return-void
.end method

.method public rotateCaption(F)V
    .locals 5

    .line 1451
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 1452
    invoke-virtual {p0, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getTextBoundingRect(Z)Landroid/graphics/RectF;

    move-result-object v0

    .line 1453
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->rotateCaption(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 1437
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1438
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeRotateCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public scaleCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 1391
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1392
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeScaleCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setAnchorPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 1296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1297
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetAnchorPoint(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 1900
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1901
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetBackgroundColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 2

    .line 1930
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1931
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetBackgroundRadius(JF)V

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    .line 708
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 709
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetBold(JZ)V

    return-void
.end method

.method public setCaptionTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .line 1250
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1251
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    .line 1631
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1632
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetCenterAzimuthAngle(JF)V

    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    .line 1589
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1590
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetCenterPolarAngle(JF)V

    return-void
.end method

.method public setCurrentKeyFrameTime(J)V
    .locals 2

    .line 1958
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1959
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetCurrentKeyFrameTime(JJ)V

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 2

    .line 950
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 951
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetDrawOutline(JZ)V

    return-void
.end method

.method public setDrawShadow(Z)V
    .locals 2

    .line 1040
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1041
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetDrawShadow(JZ)V

    return-void
.end method

.method public setFontByFilePath(Ljava/lang/String;)V
    .locals 2

    .line 1190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1191
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetFontByFilePath(JLjava/lang/String;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 2

    .line 1220
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1221
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetFontFamily(JLjava/lang/String;)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    .line 1160
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1161
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetFontSize(JF)V

    return-void
.end method

.method public setFrameCaptionMaxFontSize(F)V
    .locals 2

    .line 1984
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1985
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetFrameCaptionMaxFontSize(JF)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    .line 768
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 769
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetItalic(JZ)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2

    .line 859
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 860
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetLetterSpacing(JF)V

    return-void
.end method

.method public setLetterSpacingType(I)V
    .locals 2

    .line 828
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 829
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetLetterSpacingType(JI)V

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 2

    .line 890
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 891
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetLineSpacing(JF)V

    return-void
.end method

.method public setModularCaptionAnimationPeroid(I)V
    .locals 2

    .line 496
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 497
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetAnimationPeroid(JI)V

    return-void
.end method

.method public setModularCaptionInAnimationDuration(I)V
    .locals 2

    .line 526
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 527
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetInAnimationDuration(JI)V

    return-void
.end method

.method public setModularCaptionOutAnimationDuration(I)V
    .locals 2

    .line 556
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 557
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetOutAnimationDuration(JI)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 1870
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1871
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setOutlineColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 980
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 981
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 2

    .line 1010
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1011
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetOutlineWidth(JF)V

    return-void
.end method

.method public setPanoramicRotation(F)V
    .locals 2

    .line 1799
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1800
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetPanoramicRotationAngle(JF)V

    return-void
.end method

.method public setPanoramicScaleX(F)V
    .locals 2

    .line 1743
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1744
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetPanoramicScaleX(JF)V

    return-void
.end method

.method public setPanoramicScaleY(F)V
    .locals 2

    .line 1771
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1772
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetPanoramicScaleY(JF)V

    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    .line 1673
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1674
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetPolarAngleRange(JF)V

    return-void
.end method

.method public setRecordingUserOperation(Z)V
    .locals 2

    .line 1855
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1856
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetRecordingUserOperation(JZ)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .line 1406
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1407
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 1327
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1328
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetScaleX(JF)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    .line 1359
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1360
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetScaleY(JF)V

    return-void
.end method

.method public setSecondaryColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 1513
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1514
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetSecondaryColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setShadowColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 1070
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1071
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setShadowFeather(F)V
    .locals 2

    .line 1130
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1131
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetShadowFeather(JF)V

    return-void
.end method

.method public setShadowOffset(Landroid/graphics/PointF;)V
    .locals 2

    .line 1100
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1101
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetShadowOffset(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 586
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 587
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetText(JLjava/lang/String;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .line 647
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 648
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetTextAlignment(JI)V

    return-void
.end method

.method public setTextColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 920
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 921
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setTextFrameOriginRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 1482
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1483
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetTextFrameOriginRect(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public setTextVerticalAlignment(I)V
    .locals 2

    .line 678
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 679
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetTextVerticalAlignment(JI)V

    return-void
.end method

.method public setUnderline(Z)V
    .locals 2

    .line 798
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 799
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetUnderline(JZ)V

    return-void
.end method

.method public setVerticalLayout(Z)V
    .locals 2

    .line 616
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 617
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetVerticalLayout(JZ)V

    return-void
.end method

.method public setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V
    .locals 2

    .line 139
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 140
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetVideoResolution(JLcom/meicam/sdk/NvsVideoResolution;)V

    return-void
.end method

.method public setWeight(I)V
    .locals 2

    .line 738
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 739
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetWeight(JI)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 1827
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1828
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateCaption(Landroid/graphics/PointF;)V
    .locals 2

    .line 1281
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1282
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->nativeTranslateCaption(JLandroid/graphics/PointF;)V

    return-void
.end method
