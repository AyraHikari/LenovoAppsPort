.class public final Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;
.super Ljava/lang/Object;
.source "GeometryMathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeometryHolder"
.end annotation


# instance fields
.field public crop:Landroid/graphics/RectF;

.field public mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

.field public rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

.field public straighten:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 50
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getNil()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 51
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getNil()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    .line 52
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 84
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iget-object v3, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    iget v3, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    .line 85
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public isNil()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 70
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getNil()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    .line 71
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getNil()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    .line 72
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V
    .locals 2

    .line 55
    iget-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 56
    iget v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 58
    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",straighten:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",crop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    .line 92
    invoke-virtual {v1}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mirror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    .line 93
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->value()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wipe()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 63
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getNil()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 64
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getNil()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    .line 65
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-void
.end method
