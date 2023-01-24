.class public Lcom/zui/gallery/anim/GlAnimItemRotate;
.super Lcom/zui/gallery/anim/GlAnimItemCenter;
.source "GlAnimItemRotate.java"


# instance fields
.field private mfRotateCur:F

.field private mfRotateEnd:F

.field private mfRotateStart:F

.field private mfShaftX:F

.field private mfShaftY:F

.field private mfShaftZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/zui/gallery/anim/GlAnimItemCenter;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateStart:F

    .line 9
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateEnd:F

    .line 10
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateCur:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftX:F

    .line 13
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftY:F

    .line 14
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftZ:F

    return-void
.end method


# virtual methods
.method public DrawCenter(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 4

    .line 43
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateCur:F

    iget v1, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftX:F

    iget v2, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftY:F

    iget v3, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftZ:F

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/GlAnimItemRotate;->OnDuraion(F)F

    move-result p1

    .line 37
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateStart:F

    iget v1, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateEnd:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateCur:F

    return-void
.end method

.method public setChange(FFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    iput p3, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftX:F

    .line 26
    iput p4, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftY:F

    .line 27
    iput p5, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfShaftZ:F

    .line 29
    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateStart:F

    .line 30
    iput p2, p0, Lcom/zui/gallery/anim/GlAnimItemRotate;->mfRotateEnd:F

    return-void
.end method

.method public setChangeX(FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/anim/GlAnimItemRotate;->setChange(FFFFF)V

    return-void
.end method

.method public setChangeY(FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/anim/GlAnimItemRotate;->setChange(FFFFF)V

    return-void
.end method
