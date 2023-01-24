.class public Lcom/zui/gallery/anim/GlAnimItemAlpha;
.super Lcom/zui/gallery/anim/GlAnimItemBase;
.source "GlAnimItemAlpha.java"


# instance fields
.field private mfAlphaCur:F

.field private mfAlphaEnd:F

.field private mfAlphaStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/zui/gallery/anim/GlAnimItemBase;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaStart:F

    .line 7
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaEnd:F

    .line 8
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaCur:F

    return-void
.end method


# virtual methods
.method public Draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
    .locals 0

    .line 28
    iget p2, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaCur:F

    invoke-interface {p1, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/GlAnimItemAlpha;->OnDuraion(F)F

    move-result p1

    .line 22
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaStart:F

    iget v1, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaEnd:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaCur:F

    return-void
.end method

.method public setChange(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_0

    cmpl-float v0, v0, p2

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    .line 14
    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaStart:F

    .line 15
    iput p2, p0, Lcom/zui/gallery/anim/GlAnimItemAlpha;->mfAlphaEnd:F

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "setChange error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
