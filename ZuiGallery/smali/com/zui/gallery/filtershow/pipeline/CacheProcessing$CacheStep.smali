.class Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;
.super Ljava/lang/Object;
.source "CacheProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheStep"
.end annotation


# instance fields
.field cache:Landroid/graphics/Bitmap;

.field representations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    return-void
.end method

.method public static buildSteps(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 78
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;-><init>()V

    const/4 v2, 0x0

    .line 79
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 80
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 81
    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->canMergeWith(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->add(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;-><init>()V

    .line 86
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->add(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, v1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method public add(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public apply(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 105
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_2
    invoke-static {v0, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->applyGeometryRepresentations(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 125
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    instance-of v3, v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v3, :cond_4

    .line 128
    invoke-virtual {p1, v2, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 131
    :cond_4
    invoke-virtual {p1, v2, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_3
    if-eq v0, p2, :cond_6

    .line 136
    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    :cond_6
    return-object v0
.end method

.method public canMergeWith(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 55
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->canMergeWith(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;)Z
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 68
    iget-object v3, p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 69
    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->representations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "EMPTY"

    return-object v0
.end method
