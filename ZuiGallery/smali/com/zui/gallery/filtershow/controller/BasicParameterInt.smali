.class public Lcom/zui/gallery/filtershow/controller/BasicParameterInt;
.super Ljava/lang/Object;
.source "BasicParameterInt.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/ParameterInteger;


# instance fields
.field public final ID:I

.field private final LOGTAG:Ljava/lang/String;

.field protected mControl:Lcom/zui/gallery/filtershow/controller/Control;

.field protected mDefaultValue:I

.field protected mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

.field protected mMaximum:I

.field protected mMinimum:I

.field protected mParameterName:Ljava/lang/String;

.field protected mValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 25
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    const-string v0, "BasicParameterInt"

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->LOGTAG:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->ID:I

    .line 47
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 25
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    const-string v0, "BasicParameterInt"

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->LOGTAG:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->ID:I

    .line 52
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    .line 53
    iput p3, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    .line 54
    iput p4, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 1

    .line 35
    instance-of v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 39
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    .line 40
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    .line 41
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mDefaultValue:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mDefaultValue:I

    .line 42
    iget p1, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultValue()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mDefaultValue:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mParameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    .line 100
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/FilterView;->commitLocalRepresentation()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
