.class public Lcom/zui/gallery/anim/GlAnimItemTranslation;
.super Lcom/zui/gallery/anim/GlAnimItemBase;
.source "GlAnimItemTranslation.java"


# instance fields
.field private mbShake:Z

.field private mfArcX:F

.field private mfArcY:F

.field private mfShakeDuration:F

.field private mfShakeX:F

.field private mfShakeY:F

.field private mfTranslationCurX:F

.field private mfTranslationCurY:F

.field private mfTranslationEndX:F

.field private mfTranslationEndY:F

.field private mfTranslationStartX:F

.field private mfTranslationStartY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/zui/gallery/anim/GlAnimItemBase;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartX:F

    .line 9
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndX:F

    .line 11
    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndY:F

    .line 13
    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    .line 14
    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    .line 16
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeX:F

    .line 17
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeY:F

    .line 18
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeDuration:F

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mbShake:Z

    .line 21
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcX:F

    .line 22
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcY:F

    return-void
.end method


# virtual methods
.method public Draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
    .locals 0

    const/4 p2, 0x0

    const/16 p3, 0x5a

    if-ne p4, p3, :cond_0

    .line 77
    iget p3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    iget p4, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    invoke-interface {p1, p3, p4, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_0

    .line 79
    :cond_0
    iget p3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    iget p4, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    invoke-interface {p1, p3, p4, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    :goto_0
    return-void
.end method

.method public onCalculate(F)V
    .locals 5

    .line 51
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/GlAnimItemTranslation;->OnDuraion(F)F

    move-result p1

    .line 52
    iget-boolean v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mbShake:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 53
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartX:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndX:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcX:F

    sub-float v4, v1, v3

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    .line 54
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartY:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndY:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcY:F

    sub-float/2addr v1, v3

    mul-float/2addr p1, v3

    add-float/2addr v1, p1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    return-void

    .line 58
    :cond_0
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeDuration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 59
    iget v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartX:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeX:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    .line 60
    iget v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartY:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeY:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    return-void

    :cond_1
    sub-float v2, v1, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    .line 64
    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndX:F

    iget v3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeX:F

    sub-float/2addr v1, p1

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    .line 65
    iget p1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndY:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeY:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    return-void

    .line 69
    :cond_2
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartX:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeX:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndX:F

    sub-float/2addr v3, v0

    mul-float/2addr v3, p1

    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcX:F

    sub-float v4, v1, v0

    mul-float/2addr v0, p1

    add-float/2addr v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurX:F

    .line 70
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartY:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeY:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndY:F

    sub-float/2addr v3, v0

    mul-float/2addr v3, p1

    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcY:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationCurY:F

    return-void
.end method

.method public setArc(FF)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcX:F

    .line 45
    iput p2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfArcY:F

    return-void
.end method

.method public setChange(FFFF)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartX:F

    .line 27
    iput p3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndX:F

    .line 28
    iput p2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationStartY:F

    .line 29
    iput p4, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfTranslationEndY:F

    return-void
.end method

.method public setShake(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 37
    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeX:F

    .line 38
    iput p2, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeY:F

    .line 39
    iput p3, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mfShakeDuration:F

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/zui/gallery/anim/GlAnimItemTranslation;->mbShake:Z

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "setShake error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
