.class public Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterDirectRepresentation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 23
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 31
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method
