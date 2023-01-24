.class public Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "SimpleImageFilter.java"


# instance fields
.field private mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 5

    .line 25
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Default"

    const/16 v2, -0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    return-object v0
.end method

.method public getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    return-object v0
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    return-void
.end method
