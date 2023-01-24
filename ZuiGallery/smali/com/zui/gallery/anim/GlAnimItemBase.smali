.class public abstract Lcom/zui/gallery/anim/GlAnimItemBase;
.super Ljava/lang/Object;
.source "GlAnimItemBase.java"


# instance fields
.field protected mfEnd:F

.field protected mfStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemBase;->mfStart:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/zui/gallery/anim/GlAnimItemBase;->mfEnd:F

    return-void
.end method


# virtual methods
.method public abstract Draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V
.end method

.method protected OnDuraion(F)F
    .locals 3

    .line 21
    iget v0, p0, Lcom/zui/gallery/anim/GlAnimItemBase;->mfStart:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    iget v1, p0, Lcom/zui/gallery/anim/GlAnimItemBase;->mfEnd:F

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_1
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    return p1
.end method

.method public abstract onCalculate(F)V
.end method

.method public setDuration(FF)V
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

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_0

    .line 16
    iput p1, p0, Lcom/zui/gallery/anim/GlAnimItemBase;->mfStart:F

    .line 17
    iput p2, p0, Lcom/zui/gallery/anim/GlAnimItemBase;->mfEnd:F

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "setDuration error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
