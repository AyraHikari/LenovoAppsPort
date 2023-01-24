.class public Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterBasicRepresentation.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/ParameterInteger;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterBasicRep"

.field public static final SERIAL_NAME:Ljava/lang/String; = "Name"

.field public static final SERIAL_VALUE:Ljava/lang/String; = "Value"


# instance fields
.field private mDefaultValue:I

.field private mLogVerbose:Z

.field private mMaximum:I

.field private mMinimum:I

.field private mPreviewValue:I

.field private mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const-string p1, "FilterBasicRep"

    const/4 v0, 0x2

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mLogVerbose:Z

    .line 39
    iput p2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    .line 40
    iput p4, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    .line 41
    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    .line 51
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 59
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 174
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public deSerializeRepresentation([[Ljava/lang/String;)V
    .locals 4

    .line 187
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->deSerializeRepresentation([[Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 188
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 189
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "Value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 81
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDefaultValue()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public getPreviewValue()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    return v0
.end method

.method public getStateRepresentation()Ljava/lang/String;
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string v2, "+"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getStateRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeRepresentation()[[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "Name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 180
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Value"

    aput-object v2, v0, v4

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    return-object v1
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    return-void
.end method

.method public setDefaultValue(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mDefaultValue:I

    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    return-void
.end method

.method public setMaximum(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    return-void
.end method

.method public setMinimum(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    return-void
.end method

.method public setPreviewValue(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mPreviewValue:I

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 108
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    .line 109
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    if-ge p1, v0, :cond_0

    .line 110
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    .line 112
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    if-le p1, v0, :cond_1

    .line 113
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->mMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 64
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 66
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 67
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 68
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 69
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getDefaultValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    .line 70
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getPreviewValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setPreviewValue(I)V

    :cond_0
    return-void
.end method
