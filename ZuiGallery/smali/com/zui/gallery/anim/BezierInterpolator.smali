.class public Lcom/zui/gallery/anim/BezierInterpolator;
.super Ljava/lang/Object;
.source "BezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mX1:F

.field private final mX2:F

.field private final mY1:F

.field private final mY2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX1:F

    .line 17
    iput p2, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mY1:F

    .line 18
    iput p3, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX2:F

    .line 19
    iput p4, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mY2:F

    return-void
.end method


# virtual methods
.method a(FF)F
    .locals 6

    float-to-double v0, p2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    float-to-double p1, p1

    mul-double/2addr p1, v2

    add-double/2addr v4, p1

    double-to-float p1, v4

    return p1
.end method

.method b(FF)F
    .locals 4

    float-to-double v0, p2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    float-to-double p1, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method c(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method calcBezier(FFF)F
    .locals 1

    .line 40
    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/anim/BezierInterpolator;->a(FF)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/anim/BezierInterpolator;->b(FF)F

    move-result p3

    add-float/2addr v0, p3

    mul-float/2addr v0, p1

    invoke-virtual {p0, p2}, Lcom/zui/gallery/anim/BezierInterpolator;->c(F)F

    move-result p2

    add-float/2addr v0, p2

    mul-float/2addr v0, p1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 2

    .line 24
    iget v0, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX1:F

    iget v1, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mY1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX2:F

    iget v1, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mY2:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return p1

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/BezierInterpolator;->getTForX(F)F

    move-result p1

    iget v0, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mY1:F

    iget v1, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mY2:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/gallery/anim/BezierInterpolator;->calcBezier(FFF)F

    move-result p1

    return p1
.end method

.method getSlope(FFF)F
    .locals 8

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/anim/BezierInterpolator;->a(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    float-to-double v2, p1

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/anim/BezierInterpolator;->b(FF)F

    move-result p1

    float-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    invoke-virtual {p0, p2}, Lcom/zui/gallery/anim/BezierInterpolator;->c(F)F

    move-result p1

    float-to-double p1, p1

    add-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method getTForX(F)F
    .locals 7

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 31
    iget v2, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX1:F

    iget v3, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX2:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/zui/gallery/anim/BezierInterpolator;->getSlope(FFF)F

    move-result v2

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    return v1

    .line 33
    :cond_0
    iget v3, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX1:F

    iget v4, p0, Lcom/zui/gallery/anim/BezierInterpolator;->mX2:F

    invoke-virtual {p0, v1, v3, v4}, Lcom/zui/gallery/anim/BezierInterpolator;->calcBezier(FFF)F

    move-result v3

    sub-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
