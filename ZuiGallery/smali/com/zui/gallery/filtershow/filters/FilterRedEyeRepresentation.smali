.class public Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;
.source "FilterRedEyeRepresentation.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterRedEyeRepresentation"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    sget v0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->ID:I

    const-string v1, "RedEye"

    const v2, 0x7f10020b

    invoke-direct {p0, v1, v2, v0}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;-><init>(Ljava/lang/String;II)V

    const-string v0, "REDEYE"

    .line 31
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v0, 0x7f0702ed

    .line 33
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->setOverlayId(I)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->setOverlayOnly(Z)V

    return-void
.end method


# virtual methods
.method public addRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 53
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->getCandidate(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;

    .line 54
    invoke-virtual {v3, p1}, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;

    .line 60
    iget-object v3, v2, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 61
    iget-object v3, v2, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->removeCandidate(Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;

    invoke-direct {v0, p1, p2}, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->addCandidate(Lcom/zui/gallery/filtershow/filters/FilterPoint;)V

    return-void
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 39
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;-><init>()V

    .line 40
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 47
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method
