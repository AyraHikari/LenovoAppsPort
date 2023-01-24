.class public Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;
.super Ljava/lang/Object;
.source "BasicParameterStyle.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/ParameterStyles;


# instance fields
.field public final ID:I

.field private final LOGTAG:Ljava/lang/String;

.field protected mControl:Lcom/zui/gallery/filtershow/controller/Control;

.field protected mDefaultStyle:I

.field protected mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

.field protected mNumberOfStyles:I

.field protected mParameterName:Ljava/lang/String;

.field protected mSelectedStyle:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mDefaultStyle:I

    const-string v0, "BasicParameterStyle"

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->LOGTAG:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->ID:I

    .line 46
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mNumberOfStyles:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 1

    .line 35
    instance-of v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    .line 39
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mNumberOfStyles:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mNumberOfStyles:I

    .line 40
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mSelectedStyle:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mSelectedStyle:I

    .line 41
    iget p1, p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mDefaultStyle:I

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mDefaultStyle:I

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

.method public getDefaultSelected()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mDefaultStyle:I

    return v0
.end method

.method public getIcon(ILcom/zui/gallery/filtershow/controller/BitmapCaller;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    invoke-interface {v0, p1, p2}, Lcom/zui/gallery/filtershow/controller/FilterView;->computeIcon(ILcom/zui/gallery/filtershow/controller/BitmapCaller;)V

    return-void
.end method

.method public getNumberOfStyles()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mNumberOfStyles:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mParameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterStyles"

    return-object v0
.end method

.method public getSelected()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mSelectedStyle:I

    return v0
.end method

.method public getStyleTitle(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getValueString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mSelectedStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mSelectedStyle:I

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/FilterView;->commitLocalRepresentation()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
