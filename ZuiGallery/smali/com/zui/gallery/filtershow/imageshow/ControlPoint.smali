.class public Lcom/zui/gallery/filtershow/imageshow/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    .line 25
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    .line 30
    iget p1, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 56
    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 57
    iget p1, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public copy()Lcom/zui/gallery/filtershow/imageshow/ControlPoint;
    .locals 3

    .line 51
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;-><init>(FF)V

    return-object v0
.end method

.method public sameValues(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 41
    :cond_1
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 44
    :cond_2
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method
