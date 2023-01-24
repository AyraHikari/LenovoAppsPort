.class public Lcom/zui/gallery/filtershow/controller/ParameterColor;
.super Ljava/lang/Object;
.source "ParameterColor.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Parameter;


# static fields
.field public static sParameterType:Ljava/lang/String; = "ParameterColor"


# instance fields
.field public final ID:I

.field mBasColors:[I

.field protected mControl:Lcom/zui/gallery/filtershow/controller/Control;

.field protected mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

.field mHSVO:[F

.field mParameterName:Ljava/lang/String;

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 27
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 31
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mBasColors:[I

    .line 40
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->ID:I

    .line 41
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 42
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    const/4 v0, 0x3

    aput p2, p1, v0

    return-void

    nop

    :array_0
    .array-data 4
        -0x7f010000
        -0x7fff0100
        -0x7fffff01
        -0x80000000
        -0x7f000001
    .end array-data
.end method


# virtual methods
.method public copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 3

    .line 60
    instance-of v0, p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 65
    iget v0, p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    iput v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    .line 66
    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyPalletFrom(Lcom/zui/gallery/filtershow/controller/ParameterColor;)V
    .locals 3

    .line 105
    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mBasColors:[I

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mBasColors:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getColor()[F
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    return-object v0
.end method

.method public getColorPalette()[I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mBasColors:[I

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mParameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->sParameterType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColor([F)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    const/4 v0, 0x3

    .line 52
    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    return-void
.end method

.method public setColorpalette([I)V
    .locals 1

    .line 109
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mBasColors:[I

    return-void
.end method

.method public setController(Lcom/zui/gallery/filtershow/controller/Control;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    return-void
.end method

.method public setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mEditor:Lcom/zui/gallery/filtershow/controller/FilterView;

    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 89
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 91
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mHSVO:[F

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterColor;->mValue:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
