.class public Lcom/zui/gallery/filtershow/controller/ParameterCaption;
.super Ljava/lang/Object;
.source "ParameterCaption.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Parameter;


# static fields
.field public static sParameterType:Ljava/lang/String; = "ParameterCaption"


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 23
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMaximum:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMinimum:I

    const-string v0, "BasicParameterInt"

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->LOGTAG:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->ID:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 23
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMaximum:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMinimum:I

    const-string v0, "BasicParameterInt"

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->LOGTAG:Ljava/lang/String;

    .line 48
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->ID:I

    .line 49
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mValue:I

    .line 50
    iput p3, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMinimum:I

    .line 51
    iput p4, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMaximum:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 1

    .line 33
    instance-of v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 37
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMaximum:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMaximum:I

    .line 38
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mMinimum:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mMinimum:I

    .line 39
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mDefaultValue:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mDefaultValue:I

    .line 40
    iget p1, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->mValue:I

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mValue:I

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mParameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->sParameterType:Ljava/lang/String;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
