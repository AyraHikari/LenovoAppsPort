.class public Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
.super Ljava/lang/Object;
.source "ImagePreset.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final JASON_SAVED:Ljava/lang/String; = "Saved"

.field private static final LOGTAG:Ljava/lang/String; = "ImagePreset"


# instance fields
.field private mDoApplyFilters:Z

.field private mDoApplyGeometry:Z

.field private mFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private mPartialRendering:Z

.field private mPartialRenderingBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    .line 72
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mPartialRendering:Z

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    .line 72
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mPartialRendering:Z

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 105
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 115
    instance-of v2, v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFilterRepresentationForType(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    const/4 v0, 0x0

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isNoneBorderFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 1

    .line 687
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    .line 688
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNoneFxFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 1

    .line 692
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 693
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getNameResource()I

    move-result p1

    const v0, 0x7f1001c5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static sameObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 184
    :cond_0
    instance-of v1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v1, :cond_2

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name.equale === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " && contents.equale === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 186
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && PointF.equale === "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && Factor.equale === "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wangcanwwwwww"

    .line 185
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 190
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 191
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 5

    .line 591
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 592
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->nbFilters()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 594
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->contains(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentationForType(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 597
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto/16 :goto_6

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    move v0, v2

    .line 601
    :goto_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->nbFilters()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 602
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentation(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_6

    move v0, v2

    .line 607
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 613
    :goto_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 614
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 615
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    if-eq v1, v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 619
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v1

    if-nez v1, :cond_c

    .line 620
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_6

    .line 622
    :cond_6
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 623
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 624
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->isNoneBorderFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 625
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 627
    :cond_7
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v2

    .line 629
    :goto_4
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 630
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 631
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 632
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 634
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->isNoneFxFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 635
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    :cond_8
    move v0, v3

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    move v0, v2

    :goto_5
    if-nez v0, :cond_c

    .line 640
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->isNoneFxFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 641
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 644
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    const/4 p1, 0x0

    .line 648
    :goto_7
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 649
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 650
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 652
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    if-eqz p1, :cond_f

    .line 658
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public apply(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    .line 708
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyFilters(Landroid/graphics/Bitmap;IILcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 709
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyBorder(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public applyBorder(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    .line 753
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentationForType(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p2, v0, p1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 757
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getQuality()I

    :cond_0
    return-object p1
.end method

.method public applyBorder(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ZLcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V
    .locals 2

    const/4 v0, 0x1

    .line 826
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentationForType(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 828
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 833
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    .line 832
    invoke-static {p3, p1}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    move-result-object p1

    .line 834
    invoke-virtual {p1, p2}, Landroidx/renderscript/Allocation;->copyFrom(Landroidx/renderscript/Allocation;)V

    .line 836
    :cond_0
    invoke-virtual {p4, v0, p1, p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    :cond_1
    return-void
.end method

.method public applyFilters(Landroid/graphics/Bitmap;IILcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 3

    .line 768
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eqz v0, :cond_6

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 773
    iget-object p3, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    :cond_1
    :goto_0
    if-ge p2, p3, :cond_6

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 800
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 804
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 811
    :cond_3
    invoke-virtual {p4, v0, p1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 813
    invoke-virtual {p4, p1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 815
    :cond_4
    invoke-virtual {p4}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->needsStop()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    move-object p1, v0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method public applyFilters(IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V
    .locals 4

    .line 842
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eqz v0, :cond_5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 847
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    :cond_1
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    .line 850
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 851
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    .line 852
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-le v0, p1, :cond_3

    .line 856
    invoke-virtual {p3, p4}, Landroidx/renderscript/Allocation;->copyFrom(Landroidx/renderscript/Allocation;)V

    .line 858
    :cond_3
    invoke-virtual {p5, v1, p3, p4}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public applyGeometry(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 1

    .line 740
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v0

    .line 741
    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->applyGeometryRepresentations(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 744
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public canDoPartialRendering()Z
    .locals 4

    .line 864
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getZoomOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 867
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 868
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 869
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public clearFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    return-void
.end method

.method public clearFilters()V
    .locals 6

    const-string/jumbo v0, "wangcanclear"

    const-string v1, "ImagePreset.clear is called"

    .line 663
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 665
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 666
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearFilters.preFilterRepresentation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangcancsize"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    instance-of v2, v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_0

    .line 670
    check-cast v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 672
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 673
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v4, :cond_0

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImagePreset.clearEffect is called in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wangmeicam"

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4, v3}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 676
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->release()V

    .line 677
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 678
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GroupUtils;->reduceTotalCaptionSize(Landroid/content/Context;)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_3
    return-void
.end method

.method public contains(B)Z
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 423
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method creatFilterFromName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    const-string v0, "ROTATION"

    .line 1005
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "MIRROR"

    .line 1007
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;-><init>()V

    return-object p1

    :cond_1
    const-string v0, "STRAIGHTEN"

    .line 1009
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>()V

    return-object p1

    :cond_2
    const-string v0, "CROP"

    .line 1011
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    return-object p1

    .line 1017
    :cond_3
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1018
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->createFilterFromName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    return-object p1
.end method

.method public deleteCurrentCaptionRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 376
    check-cast v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearReplacedFilterRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    .line 379
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3
    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 491
    :cond_0
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 495
    :cond_1
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 499
    :cond_2
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eq v1, v2, :cond_4

    .line 500
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    return v0

    :cond_4
    move v1, v0

    .line 505
    :goto_0
    iget-object v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_a

    .line 506
    iget-object v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 507
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 509
    instance-of v5, v2, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-nez v5, :cond_6

    instance-of v5, v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v5, :cond_6

    instance-of v5, v2, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    if-nez v5, :cond_6

    instance-of v5, v2, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v3

    :goto_2
    if-nez v5, :cond_7

    .line 516
    iget-boolean v6, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-nez v6, :cond_7

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    .line 518
    iget-boolean v5, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 521
    invoke-virtual {v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return v3
.end method

.method public fillImageStateAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 881
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 882
    instance-of v3, v2, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 886
    :cond_1
    new-instance v3, Lcom/zui/gallery/filtershow/state/State;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zui/gallery/filtershow/state/State;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v3, v2}, Lcom/zui/gallery/filtershow/state/State;->setFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 888
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    :cond_2
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->fill(Ljava/util/Vector;)V

    return-void
.end method

.method public finalGeometryRect(II)Landroid/graphics/Rect;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->finalGeometryRect(IILjava/util/Collection;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionFilters()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v2, :cond_0

    .line 144
    instance-of v2, v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDoApplyFilters()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    return v0
.end method

.method public getFilterRepresentation(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    return-object p1
.end method

.method public getFilterRepresentationCopyFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return-object v0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getFilterWithSerializationName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilters()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    return-object v0
.end method

.method public getGeometryFilters()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 715
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 716
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 917
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 919
    :try_start_0
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 920
    invoke-virtual {p0, v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->writeJson(Landroid/util/JsonWriter;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-object v0
.end method

.method public getNvsEffectSdkContext()Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-object v0
.end method

.method public getPartialRenderingBounds()Landroid/graphics/Rect;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mPartialRenderingBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I
    .locals 3

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is same is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcansame"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-static {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPositionForRepresentationFromFoot(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I
    .locals 3

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is same is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcansame"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-static {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPositionForType(I)I
    .locals 2

    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPositionForTypeFromFoot(I)I
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 238
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    const/4 v0, 0x0

    .line 697
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 699
    invoke-static {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 126
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 129
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUsedFilters(Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation

    .line 907
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 908
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 910
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getFilterForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v2

    .line 911
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasModifications()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 414
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isPanoramaSafe()Z
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 433
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 434
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    .line 437
    :cond_1
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 438
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v2

    if-nez v2, :cond_2

    return v5

    .line 441
    :cond_2
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 442
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v2

    if-nez v2, :cond_3

    return v5

    .line 445
    :cond_3
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 446
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v1

    if-nez v1, :cond_0

    return v5

    :cond_4
    return v2
.end method

.method public isPartialRendering()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mPartialRendering:Z

    return v0
.end method

.method public nbFilters()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public readJson(Landroid/util/JsonReader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 990
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->creatFilterFromName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 994
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN FILTER! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImagePreset"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 997
    :cond_0
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->deSerializeRepresentation(Landroid/util/JsonReader;)V

    .line 998
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x1

    return p1
.end method

.method public readJsonFromString(Ljava/lang/String;)Z
    .locals 4

    .line 964
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 966
    :try_start_0
    new-instance v2, Landroid/util/JsonReader;

    invoke-direct {v2, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 967
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->readJson(Landroid/util/JsonReader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V

    return v1

    .line 972
    :cond_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImagePreset"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "parsing the filter parameters:"

    .line 975
    invoke-static {v2, p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public refreshFilterForDrawRectMoving(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 299
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 301
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 307
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v1, :cond_5

    .line 314
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 315
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public refreshFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFilters.addxxx......filterRepresentation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanxxxxttt"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 267
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 279
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilters.add000......filterRepresentation is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 3

    .line 565
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    .line 568
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 569
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->sameSerializationName(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public replaceFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 326
    instance-of v1, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 328
    move-object v1, p1

    check-cast v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p3, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearReplacedFilterRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    .line 330
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace.preFilterRepresentation is "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " && effect is "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "wangcancsize"

    invoke-static {p3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 342
    :cond_3
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public same(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 458
    :cond_0
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 462
    :cond_1
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 466
    :cond_2
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eq v1, v2, :cond_4

    .line 467
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    return v0

    .line 472
    :cond_4
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    if-eqz v1, :cond_6

    move v1, v0

    .line 473
    :goto_0
    iget-object v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 474
    iget-object v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 475
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 477
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public setDoApplyFilters(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyFilters:Z

    return-void
.end method

.method public setDoApplyGeometry(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mDoApplyGeometry:Z

    return-void
.end method

.method public setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-void
.end method

.method public setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-void
.end method

.method public setPartialRendering(ZLandroid/graphics/Rect;)V
    .locals 0

    .line 894
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mPartialRendering:Z

    .line 895
    iput-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mPartialRenderingBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public showFilters()V
    .locals 7

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\\\ showFilters -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImagePreset"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/// showFilters -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public similarUpTo(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)I
    .locals 4

    const/4 v0, 0x0

    .line 530
    :goto_0
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 531
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 532
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 534
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 537
    :cond_0
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 544
    :cond_3
    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    return p1
.end method

.method public updateFilterRepresentations(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .line 384
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 385
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->updateOrAddFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateOrAddFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    .line 390
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateWith(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 3

    .line 1022
    iget-object v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p1, "ImagePreset"

    const-string v0, "Updating a preset with an incompatible one"

    .line 1023
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1026
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1028
    iget-object v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1029
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeJson(Landroid/util/JsonWriter;Ljava/lang/String;)V
    .locals 3

    .line 929
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    .line 931
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 933
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 934
    instance-of v2, v1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 945
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->serializeRepresentation(Landroid/util/JsonWriter;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ImagePreset"

    const-string v0, "Error encoding JASON"

    .line 950
    invoke-static {p2, v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
