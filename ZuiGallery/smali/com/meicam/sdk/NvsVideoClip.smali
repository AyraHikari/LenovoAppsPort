.class public Lcom/meicam/sdk/NvsVideoClip;
.super Lcom/meicam/sdk/NvsClip;
.source "NvsVideoClip.java"


# static fields
.field public static final CLIP_BLENDING_MODE_ADD:I = 0x4

.field public static final CLIP_BLENDING_MODE_BURN:I = 0x7

.field public static final CLIP_BLENDING_MODE_DARKEN:I = 0x6

.field public static final CLIP_BLENDING_MODE_DIFFERENCE:I = 0x12

.field public static final CLIP_BLENDING_MODE_DODGE:I = 0xa

.field public static final CLIP_BLENDING_MODE_EXCLUSION:I = 0x5

.field public static final CLIP_BLENDING_MODE_HARD_LIGHT:I = 0xd

.field public static final CLIP_BLENDING_MODE_HARD_MIX:I = 0x11

.field public static final CLIP_BLENDING_MODE_LIGHTEN:I = 0x9

.field public static final CLIP_BLENDING_MODE_LINEAR_BURN:I = 0x8

.field public static final CLIP_BLENDING_MODE_LINEAR_LIGHT:I = 0x10

.field public static final CLIP_BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final CLIP_BLENDING_MODE_NORMAL:I = 0x0

.field public static final CLIP_BLENDING_MODE_OVERLAY:I = 0xb

.field public static final CLIP_BLENDING_MODE_PIN_LIGHT:I = 0xf

.field public static final CLIP_BLENDING_MODE_SCREEN:I = 0x3

.field public static final CLIP_BLENDING_MODE_SOFT_LIGHT:I = 0xc

.field public static final CLIP_BLENDING_MODE_SUBTRACT:I = 0x2

.field public static final CLIP_BLENDING_MODE_VIVID_LIGHT:I = 0xe

.field public static final CLIP_MOTIONMODE_LETTERBOX_ZOOMIN:I = 0x0

.field public static final CLIP_WRAPMODE_REPEAT_LASTFRAME:I = 0x0

.field public static final ClIP_BACKGROUNDMODE_BLUR:I = 0x1

.field public static final ClIP_BACKGROUNDMODE_COLOR_SOLID:I = 0x0

.field public static final ClIP_EXTRAVIDEOROTATION_0:I = 0x0

.field public static final ClIP_EXTRAVIDEOROTATION_180:I = 0x2

.field public static final ClIP_EXTRAVIDEOROTATION_270:I = 0x3

.field public static final ClIP_EXTRAVIDEOROTATION_90:I = 0x1

.field public static final ClIP_MOTIONMODE_LETTERBOX_ZOOMOUT:I = 0x1

.field public static final ClIP_WRAPMODE_REPEAT:I = 0x2

.field public static final ClIP_WRAPMODE_REPEAT_FIRSTFRAME:I = 0x1

.field public static final IMAGE_CLIP_MOTIONMMODE_ROI:I = 0x2

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_1:I = 0x1

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_2:I = 0x2

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_3:I = 0x3

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_BASE:I = 0x0

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_NONE:I = -0x1

.field public static final VIDEO_CLIP_TYPE_AV:I = 0x0

.field public static final VIDEO_CLIP_TYPE_IMAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/meicam/sdk/NvsClip;-><init>()V

    return-void
.end method

.method private native nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
.end method

.method private native nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeAddCompoundCaption(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsClipCompoundCaption;
.end method

.method private native nativeAddModularCaption(JLjava/lang/String;JJ)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeAppendAudioFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsAudioFx;
.end method

.method private native nativeAppendBeautyFx(JJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeAppendBuiltinFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeAppendPackagedFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeChangeVariableSpeed(JDDZ)V
.end method

.method private native nativeDisableAmbiguousCrop(JZ)V
.end method

.method private native nativeEnableClipFreezeFrame(JZ)V
.end method

.method private native nativeEnableClipHDR(JZ)V
.end method

.method private native nativeEnablePropertyVideoFx(JZ)V
.end method

.method private native nativeEnableSlowMotionBlended(JZ)V
.end method

.method private native nativeEnableVideoClipROI(JZ)V
.end method

.method private native nativeGetAnimatedStickersByClipTimePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsClipAnimatedSticker;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAudioFadeInDuration(J)J
.end method

.method private native nativeGetAudioFadeOutDuration(J)J
.end method

.method private native nativeGetAudioFxByIndex(JI)Lcom/meicam/sdk/NvsAudioFx;
.end method

.method private native nativeGetAudioFxCount(J)I
.end method

.method private native nativeGetBlendingMode(J)I
.end method

.method private native nativeGetCaptionsByClipTimePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsClipCaption;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetClipFreezeFrameTrimPosition(J)J
.end method

.method private native nativeGetClipWrapMode(J)I
.end method

.method private native nativeGetCompoundCaptionsByClipTimePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsClipCompoundCaption;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetEndROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetEndSpeed(J)D
.end method

.method private native nativeGetExtraVideoRotation(J)I
.end method

.method private native nativeGetFirstAnimatedSticker(J)Lcom/meicam/sdk/NvsClipAnimatedSticker;
.end method

.method private native nativeGetFirstCaption(J)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeGetFirstCompoundCaption(J)Lcom/meicam/sdk/NvsClipCompoundCaption;
.end method

.method private native nativeGetFxByIndex(JIZ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeGetImageMaskROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetImageMotionAnimationEnabled(J)Z
.end method

.method private native nativeGetImageMotionMode(J)I
.end method

.method private native nativeGetLastAnimatedSticker(J)Lcom/meicam/sdk/NvsClipAnimatedSticker;
.end method

.method private native nativeGetLastCaption(J)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeGetLastCompoundCaption(J)Lcom/meicam/sdk/NvsClipCompoundCaption;
.end method

.method private native nativeGetNextAnimatedSticker(JLcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
.end method

.method private native nativeGetNextCaption(JLcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeGetNextCompoundCaption(JLcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetPanAndScan(J)Lcom/meicam/sdk/NvsPanAndScan;
.end method

.method private native nativeGetPlayInReverse(J)Z
.end method

.method private native nativeGetPrevAnimatedSticker(JLcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
.end method

.method private native nativeGetPrevCaption(JLcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeGetPrevCompoundCaption(JLcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;
.end method

.method private native nativeGetPropertyVideoFx(J)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeGetRawFxCount(J)I
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetSourceBackgroundColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetSourceBackgroundMode(J)I
.end method

.method private native nativeGetStartROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetStartSpeed(J)D
.end method

.method private native nativeGetVideoType(J)I
.end method

.method private native nativeInsertAudioFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsAudioFx;
.end method

.method private native nativeInsertBeautyFx(JIJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertBuiltinFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertCustomAudioFx(JLcom/meicam/sdk/NvsCustomAudioFx$Renderer;I)Lcom/meicam/sdk/NvsAudioFx;
.end method

.method private native nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertPackagedFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeIsAmbiguousCropDisabled(J)Z
.end method

.method private native nativeIsClipFreezeFrameEnabled(J)Z
.end method

.method private native nativeIsClipHDREnabled(J)Z
.end method

.method private native nativeIsOriginalRender(J)Z
.end method

.method private native nativeIsPropertyVideoFxEnabled(J)Z
.end method

.method private native nativeIsSlowMotionBlended(J)Z
.end method

.method private native nativeIsSoftWareDeocdingUsed(J)Z
.end method

.method private native nativeIsVideoClipROIEnabled(J)Z
.end method

.method private native nativeRemoveAllAudioFx(J)Z
.end method

.method private native nativeRemoveAllFx(J)Z
.end method

.method private native nativeRemoveAllVideoFx(J)Z
.end method

.method private native nativeRemoveAnimatedSticker(JLcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
.end method

.method private native nativeRemoveAudioFx(JI)Z
.end method

.method private native nativeRemoveCaption(JLcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;
.end method

.method private native nativeRemoveCompoundCaption(JLcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;
.end method

.method private native nativeRemoveFx(JIZ)Z
.end method

.method private native nativeSetAudioFadeInDuration(JJ)V
.end method

.method private native nativeSetAudioFadeOutDuration(JJ)V
.end method

.method private native nativeSetBlendingMode(JI)V
.end method

.method private native nativeSetClipFreezeFrameTrimPosition(JJ)V
.end method

.method private native nativeSetClipWrapMode(JI)V
.end method

.method private native nativeSetCustomPropertyVideoFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeSetDecodeTemporalLayer(JI)V
.end method

.method private native nativeSetEnableOriginalRender(JZ)V
.end method

.method private native nativeSetExtraVideoRotation(JI)V
.end method

.method private native nativeSetExtraVideoRotation2(JIZ)V
.end method

.method private native nativeSetImageMaskROI(JLandroid/graphics/RectF;)V
.end method

.method private native nativeSetImageMotionAnimationEnabled(JZ)V
.end method

.method private native nativeSetImageMotionMode(JI)V
.end method

.method private native nativeSetImageMotionROI(JLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetPanAndScan(JFF)V
.end method

.method private native nativeSetPlayInReverse(JZ)V
.end method

.method private native nativeSetSoftWareDecoding(JZ)V
.end method

.method private native nativeSetSourceBackgroundColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetSourceBackgroundMode(JI)V
.end method


# virtual methods
.method public addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 12

    .line 625
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 626
    iget-wide v1, v11, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsClipCaption;
    .locals 11

    .line 288
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 289
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object v0

    return-object v0
.end method

.method public addCompoundCaption(JJLjava/lang/String;)Lcom/meicam/sdk/NvsClipCompoundCaption;
    .locals 8

    .line 482
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 483
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddCompoundCaption(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsClipCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 12

    .line 693
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 694
    iget-wide v1, v11, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addCustomPanoramicAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 12

    .line 729
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 730
    iget-wide v1, v11, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addModularCaption(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsClipCaption;
    .locals 8

    .line 345
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 346
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddModularCaption(JLjava/lang/String;JJ)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object p1

    return-object p1
.end method

.method public addPanoramicAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 12

    .line 657
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 658
    iget-wide v1, v11, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addPanoramicCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsClipCaption;
    .locals 11

    .line 318
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 319
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v9, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object v0

    return-object v0
.end method

.method public appendAudioFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsAudioFx;
    .locals 2

    .line 1678
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1679
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendAudioFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsAudioFx;

    move-result-object p1

    return-object p1
.end method

.method public appendBeautyFx()Lcom/meicam/sdk/NvsVideoFx;
    .locals 7

    .line 2048
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2049
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBeautyFx(JJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendBeautyFx(JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 7

    .line 2364
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2365
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBeautyFx(JJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 1826
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1827
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBuiltinFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendBuiltinFx(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 2090
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2091
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBuiltinFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendCustomAudioFx(Lcom/meicam/sdk/NvsCustomAudioFx$Renderer;)Lcom/meicam/sdk/NvsAudioFx;
    .locals 3

    .line 1724
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1725
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoClip;->getFxCount()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomAudioFx(JLcom/meicam/sdk/NvsCustomAudioFx$Renderer;I)Lcom/meicam/sdk/NvsAudioFx;

    move-result-object p1

    return-object p1
.end method

.method public appendCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 1904
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1905
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoClip;->getFxCount()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 2187
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2188
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoClip;->getFxCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendPackagedFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 1866
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1867
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendPackagedFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendPackagedFx(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 2140
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2141
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendPackagedFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendRawBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 1940
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1941
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBuiltinFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendRawBuiltinFx(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 2231
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2232
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBuiltinFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendRawCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 2012
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2013
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoClip;->getRawFxCount()I

    move-result v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendRawCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 2319
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2320
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoClip;->getRawFxCount()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendRawPackagedFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 1976
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1977
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendPackagedFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public appendRawPackagedFx(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 9

    .line 2275
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2276
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendPackagedFx(JLjava/lang/String;ZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public changeVariableSpeed(DDZ)V
    .locals 8

    .line 1352
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1353
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoClip;->nativeChangeVariableSpeed(JDDZ)V

    return-void
.end method

.method public disableAmbiguousCrop(Z)V
    .locals 2

    .line 896
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 897
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeDisableAmbiguousCrop(JZ)V

    return-void
.end method

.method public enableClipFreezeFrame(Z)V
    .locals 2

    .line 1609
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1610
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableClipFreezeFrame(JZ)V

    return-void
.end method

.method public enableClipHDR(Z)V
    .locals 2

    .line 1578
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1579
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableClipHDR(JZ)V

    return-void
.end method

.method public enablePropertyVideoFx(Z)V
    .locals 2

    .line 1545
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1546
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnablePropertyVideoFx(JZ)V

    return-void
.end method

.method public enableSlowMotionBlended(Z)V
    .locals 2

    .line 997
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 998
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableSlowMotionBlended(JZ)V

    return-void
.end method

.method public enableVideoClipROI(Z)V
    .locals 2

    .line 965
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 966
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableVideoClipROI(JZ)V

    return-void
.end method

.method public getAnimatedStickersByClipTimePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsClipAnimatedSticker;",
            ">;"
        }
    .end annotation

    .line 593
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 594
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetAnimatedStickersByClipTimePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAudioFadeInDuration()J
    .locals 2

    .line 1296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1297
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetAudioFadeInDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioFadeOutDuration()J
    .locals 2

    .line 1328
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1329
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetAudioFadeOutDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioFxByIndex(I)Lcom/meicam/sdk/NvsAudioFx;
    .locals 2

    .line 1792
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1793
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetAudioFxByIndex(JI)Lcom/meicam/sdk/NvsAudioFx;

    move-result-object p1

    return-object p1
.end method

.method public getAudioFxCount()I
    .locals 2

    .line 1807
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1808
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetAudioFxCount(J)I

    move-result v0

    return v0
.end method

.method public getBlendingMode()I
    .locals 2

    .line 1426
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1427
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetBlendingMode(J)I

    move-result v0

    return v0
.end method

.method public getCaptionsByClipTimePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsClipCaption;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 259
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetCaptionsByClipTimePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getClipFreezeFrameTrimPosition()J
    .locals 2

    .line 1653
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1654
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetClipFreezeFrameTrimPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getClipWrapMode()I
    .locals 2

    .line 1264
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1265
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetClipWrapMode(J)I

    move-result v0

    return v0
.end method

.method public getCompoundCaptionsByClipTimePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsClipCompoundCaption;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 454
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetCompoundCaptionsByClipTimePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEndROI()Landroid/graphics/RectF;
    .locals 2

    .line 1169
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1170
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetEndROI(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getEndSpeed()D
    .locals 2

    .line 1392
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1393
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetEndSpeed(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraVideoRotation()I
    .locals 2

    .line 850
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 851
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetExtraVideoRotation(J)I

    move-result v0

    return v0
.end method

.method public getFirstAnimatedSticker()Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 2

    .line 517
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 518
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFirstAnimatedSticker(J)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCaption()Lcom/meicam/sdk/NvsClipCaption;
    .locals 2

    .line 181
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 182
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFirstCaption(J)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCompoundCaption()Lcom/meicam/sdk/NvsClipCompoundCaption;
    .locals 2

    .line 379
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 380
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFirstCompoundCaption(J)Lcom/meicam/sdk/NvsClipCompoundCaption;

    move-result-object v0

    return-object v0
.end method

.method public getFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 3

    .line 2486
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2487
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFxByIndex(JIZ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public getImageMaskROI()Landroid/graphics/RectF;
    .locals 2

    .line 1208
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1209
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMaskROI(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMotionAnimationEnabled()Z
    .locals 2

    .line 1121
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1122
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMotionAnimationEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getImageMotionMode()I
    .locals 2

    .line 1089
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1090
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMotionMode(J)I

    move-result v0

    return v0
.end method

.method public getLastAnimatedSticker()Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 2

    .line 533
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 534
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetLastAnimatedSticker(J)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getLastCaption()Lcom/meicam/sdk/NvsClipCaption;
    .locals 2

    .line 198
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 199
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetLastCaption(J)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object v0

    return-object v0
.end method

.method public getLastCompoundCaption()Lcom/meicam/sdk/NvsClipCompoundCaption;
    .locals 2

    .line 395
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 396
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetLastCompoundCaption(J)Lcom/meicam/sdk/NvsClipCompoundCaption;

    move-result-object v0

    return-object v0
.end method

.method public getNextAnimatedSticker(Lcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 2

    .line 569
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 570
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetNextAnimatedSticker(JLcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object p1

    return-object p1
.end method

.method public getNextCaption(Lcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;
    .locals 2

    .line 234
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 235
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetNextCaption(JLcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object p1

    return-object p1
.end method

.method public getNextCaption(Lcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;
    .locals 2

    .line 429
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 430
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetNextCompoundCaption(JLcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public getOpacity()F
    .locals 2

    .line 1460
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1461
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetOpacity(J)F

    move-result v0

    return v0
.end method

.method public getPanAndScan()Lcom/meicam/sdk/NvsPanAndScan;
    .locals 2

    .line 949
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 950
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPanAndScan(J)Lcom/meicam/sdk/NvsPanAndScan;

    move-result-object v0

    return-object v0
.end method

.method public getPlayInReverse()Z
    .locals 2

    .line 802
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 803
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPlayInReverse(J)Z

    move-result v0

    return v0
.end method

.method public getPrevAnimatedSticker(Lcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 2

    .line 551
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 552
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPrevAnimatedSticker(JLcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object p1

    return-object p1
.end method

.method public getPrevCaption(Lcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;
    .locals 2

    .line 216
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 217
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPrevCaption(JLcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object p1

    return-object p1
.end method

.method public getPrevCaption(Lcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;
    .locals 2

    .line 412
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 413
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPrevCompoundCaption(JLcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyVideoFx()Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1508
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1509
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPropertyVideoFx(J)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getRawFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 3

    .line 2518
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2519
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFxByIndex(JIZ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public getRawFxCount()I
    .locals 2

    .line 2501
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2502
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetRawFxCount(J)I

    move-result v0

    return v0
.end method

.method public getRoleInTheme()I
    .locals 2

    .line 762
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 763
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetRoleInTheme(J)I

    move-result v0

    return v0
.end method

.method public getSourceBackgroundColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 1073
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1074
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetSourceBackgroundColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getSourceBackgroundMode()I
    .locals 2

    .line 1026
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1027
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetSourceBackgroundMode(J)I

    move-result v0

    return v0
.end method

.method public getStartROI()Landroid/graphics/RectF;
    .locals 2

    .line 1153
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1154
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetStartROI(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getStartSpeed()D
    .locals 2

    .line 1372
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1373
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetStartSpeed(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoType()I
    .locals 2

    .line 164
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 165
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetVideoType(J)I

    move-result v0

    return v0
.end method

.method public insertAudioFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAudioFx;
    .locals 2

    .line 1705
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1706
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertAudioFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsAudioFx;

    move-result-object p1

    return-object p1
.end method

.method public insertBeautyFx(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 8

    .line 2067
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2068
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBeautyFx(JIJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertBeautyFx(IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 8

    .line 2388
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2389
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBeautyFx(JIJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertBuiltinFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 1847
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1848
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBuiltinFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertBuiltinFx(Ljava/lang/String;IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 11

    .line 2116
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 2117
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBuiltinFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertCustomAudioFx(Lcom/meicam/sdk/NvsCustomAudioFx$Renderer;I)Lcom/meicam/sdk/NvsAudioFx;
    .locals 2

    .line 1745
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1746
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomAudioFx(JLcom/meicam/sdk/NvsCustomAudioFx$Renderer;I)Lcom/meicam/sdk/NvsAudioFx;

    move-result-object p1

    return-object p1
.end method

.method public insertCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 1923
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1924
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 11

    .line 2210
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 2211
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertPackagedFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 1887
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1888
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertPackagedFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertPackagedFx(Ljava/lang/String;IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 11

    .line 2166
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 2167
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertPackagedFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertRawBuiltinFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 1959
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1960
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBuiltinFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertRawBuiltinFx(Ljava/lang/String;IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 11

    .line 2254
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 2255
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBuiltinFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertRawCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 2031
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2032
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertRawCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 11

    .line 2342
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 2343
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertRawPackagedFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 10

    .line 1995
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1996
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertPackagedFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public insertRawPackagedFx(Ljava/lang/String;IJJ)Lcom/meicam/sdk/NvsVideoFx;
    .locals 11

    .line 2298
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 2299
    iget-wide v1, v10, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertPackagedFx(JLjava/lang/String;IZJJ)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public isAmbiguousCropDisabled()Z
    .locals 2

    .line 912
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 913
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsAmbiguousCropDisabled(J)Z

    move-result v0

    return v0
.end method

.method public isClipFreezeFrameEnabled()Z
    .locals 2

    .line 1622
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1623
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsClipFreezeFrameEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isClipHDREnabled()Z
    .locals 2

    .line 1591
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1592
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsClipHDREnabled(J)Z

    move-result v0

    return v0
.end method

.method public isOriginalRender()Z
    .locals 2

    .line 1494
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1495
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsOriginalRender(J)Z

    move-result v0

    return v0
.end method

.method public isPropertyVideoFxEnabled()Z
    .locals 2

    .line 1562
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1563
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsPropertyVideoFxEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isSlowMotionBlended()Z
    .locals 2

    .line 1011
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1012
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsSlowMotionBlended(J)Z

    move-result v0

    return v0
.end method

.method public isSoftWareDeocedUsed()Z
    .locals 2

    .line 881
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 882
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsSoftWareDeocdingUsed(J)Z

    move-result v0

    return v0
.end method

.method public isVideoClipROIEnabled()Z
    .locals 2

    .line 981
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 982
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsVideoClipROIEnabled(J)Z

    move-result v0

    return v0
.end method

.method public removeAllAudioFx()Z
    .locals 2

    .line 2439
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2440
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAllAudioFx(J)Z

    move-result v0

    return v0
.end method

.method public removeAllFx()Z
    .locals 2

    .line 2470
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2471
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAllFx(J)Z

    move-result v0

    return v0
.end method

.method public removeAllVideoFx()Z
    .locals 2

    .line 2455
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2456
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAllVideoFx(J)Z

    move-result v0

    return v0
.end method

.method public removeAnimatedSticker(Lcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;
    .locals 2

    .line 747
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 748
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAnimatedSticker(JLcom/meicam/sdk/NvsClipAnimatedSticker;)Lcom/meicam/sdk/NvsClipAnimatedSticker;

    move-result-object p1

    return-object p1
.end method

.method public removeAudioFx(I)Z
    .locals 2

    .line 1769
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1770
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAudioFx(JI)Z

    move-result p1

    return p1
.end method

.method public removeCaption(Lcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;
    .locals 2

    .line 363
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 364
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveCaption(JLcom/meicam/sdk/NvsClipCaption;)Lcom/meicam/sdk/NvsClipCaption;

    move-result-object p1

    return-object p1
.end method

.method public removeCompoundCaption(Lcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;
    .locals 2

    .line 500
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 501
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveCompoundCaption(JLcom/meicam/sdk/NvsClipCompoundCaption;)Lcom/meicam/sdk/NvsClipCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public removeFx(I)Z
    .locals 3

    .line 2406
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2407
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveFx(JIZ)Z

    move-result p1

    return p1
.end method

.method public removeRawFx(I)Z
    .locals 3

    .line 2423
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2424
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveFx(JIZ)Z

    move-result p1

    return p1
.end method

.method public setAudioFadeInDuration(J)V
    .locals 2

    .line 1280
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1281
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetAudioFadeInDuration(JJ)V

    return-void
.end method

.method public setAudioFadeOutDuration(J)V
    .locals 2

    .line 1312
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1313
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetAudioFadeOutDuration(JJ)V

    return-void
.end method

.method public setBlendingMode(I)V
    .locals 2

    .line 1409
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1410
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetBlendingMode(JI)V

    return-void
.end method

.method public setClipFreezeFrameTrimPosition(J)V
    .locals 2

    .line 1640
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1641
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetClipFreezeFrameTrimPosition(JJ)V

    return-void
.end method

.method public setClipWrapMode(I)V
    .locals 2

    .line 1244
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetClipWrapMode(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCustomPropertyVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1524
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1525
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetCustomPropertyVideoFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public setDecodeTemporalLayer(I)V
    .locals 2

    .line 2532
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2533
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetDecodeTemporalLayer(JI)V

    return-void
.end method

.method public setEnableOriginalRender(Z)V
    .locals 2

    .line 1477
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1478
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetEnableOriginalRender(JZ)V

    return-void
.end method

.method public setExtraVideoRotation(I)V
    .locals 2

    .line 817
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 818
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetExtraVideoRotation(JI)V

    return-void
.end method

.method public setExtraVideoRotation(IZ)V
    .locals 2

    .line 834
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 835
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetExtraVideoRotation2(JIZ)V

    return-void
.end method

.method public setImageMaskROI(Landroid/graphics/RectF;)V
    .locals 2

    .line 1228
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1229
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMaskROI(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public setImageMotionAnimationEnabled(Z)V
    .locals 2

    .line 1137
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1138
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionAnimationEnabled(JZ)V

    return-void
.end method

.method public setImageMotionMode(I)V
    .locals 2

    .line 1105
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1106
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionMode(JI)V

    return-void
.end method

.method public setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 1192
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1193
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionROI(JLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 1443
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1444
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setPanAndScan(FF)V
    .locals 2

    .line 933
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 934
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetPanAndScan(JFF)V

    return-void
.end method

.method public setPlayInReverse(Z)V
    .locals 2

    .line 786
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 787
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetPlayInReverse(JZ)V

    return-void
.end method

.method public setSoftWareDecoding(Z)V
    .locals 2

    .line 865
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 866
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSoftWareDecoding(JZ)V

    return-void
.end method

.method public setSourceBackgroundColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 1057
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1058
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSourceBackgroundColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setSourceBackgroundMode(I)V
    .locals 2

    .line 1041
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1042
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSourceBackgroundMode(JI)V

    return-void
.end method
