.class public abstract Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterPointRepresentation.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterPointRepresentation"


# instance fields
.field private mCandidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    .line 27
    const-class p1, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 p1, 0x5

    .line 28
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->setFilterType(I)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->setTextId(I)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->setEditorId(I)V

    return-void
.end method


# virtual methods
.method public addCandidate(Lcom/zui/gallery/filtershow/filters/FilterPoint;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCandidates()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public abstract copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 39
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public getCandidate(I)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCandidates()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterPoint;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    return-object v0
.end method

.method public getNumberOfCandidates()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hasCandidates()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNil()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeCandidate(Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    .line 68
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 71
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterPoint;

    .line 72
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterPointRepresentation;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
