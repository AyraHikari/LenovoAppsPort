.class public Lcom/zui/gallery/filtershow/editors/BasicEditor;
.super Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.source "BasicEditor.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/ParameterInteger;


# static fields
.field public static ID:I = 0x7f080089


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 38
    sget v0, Lcom/zui/gallery/filtershow/editors/BasicEditor;->ID:I

    const v1, 0x7f0b0053

    const v2, 0x7f080089

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(III)V

    const-string v0, "BasicEditor"

    .line 35
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/BasicEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const v0, 0x7f0b0053

    const v1, 0x7f080089

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(III)V

    const-string p1, "BasicEditor"

    .line 35
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/BasicEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(III)V

    const-string p1, "BasicEditor"

    .line 35
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/BasicEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private getBasicRepresentation()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    return-void
.end method

.method public getDefaultValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v0

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v0

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/BasicEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getTextId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reflectCurrentFilter()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 52
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 54
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->updateText()V

    :cond_0
    return-void
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->getBasicRepresentation()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 111
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->commitLocalRepresentation()V

    return-void
.end method
