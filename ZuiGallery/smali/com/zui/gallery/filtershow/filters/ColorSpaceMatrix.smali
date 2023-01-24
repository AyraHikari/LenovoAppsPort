.class public Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;
.super Ljava/lang/Object;
.source "ColorSpaceMatrix.java"


# static fields
.field private static final BLUM:F = 0.082f

.field private static final GLUM:F = 0.6094f

.field private static final RLUM:F = 0.3086f


# instance fields
.field private final mMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 22
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 28
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->identity()V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 22
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 37
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getBluef(FFF)F
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    mul-float/2addr p1, v1

    const/4 v1, 0x6

    aget v1, v0, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    const/16 p2, 0xa

    aget p2, v0, p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    const/16 p2, 0xe

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getGreenf(FFF)F
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    mul-float/2addr p1, v1

    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    const/16 p2, 0x9

    aget p2, v0, p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    const/16 p2, 0xd

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getRedf(FFF)F
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr p1, v1

    const/4 v1, 0x4

    aget v1, v0, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    const/16 p2, 0x8

    aget p2, v0, p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    const/16 p2, 0xc

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private multiply([F)V
    .locals 12

    const/16 v0, 0x10

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v5, v3, 0x4

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    add-int v7, v5, v6

    .line 71
    iget-object v8, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    add-int/lit8 v9, v5, 0x0

    aget v9, v8, v9

    aget v10, p1, v6

    mul-float/2addr v9, v10

    add-int/lit8 v10, v5, 0x1

    aget v10, v8, v10

    add-int/lit8 v11, v6, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget v10, v8, v10

    add-int/lit8 v11, v6, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget v8, v8, v10

    add-int/lit8 v10, v6, 0xc

    aget v10, p1, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    aput v9, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    aget v3, v1, v2

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private xRotateMatrix(FF)V
    .locals 2

    .line 83
    new-instance v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 84
    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x5

    .line 86
    aput p2, v0, v1

    const/4 v1, 0x6

    .line 87
    aput p1, v0, v1

    neg-float p1, p1

    const/16 v1, 0x9

    .line 88
    aput p1, v0, v1

    const/16 p1, 0xa

    .line 89
    aput p2, v0, p1

    .line 91
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    return-void
.end method

.method private yRotateMatrix(FF)V
    .locals 3

    .line 96
    new-instance v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 97
    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    .line 99
    aput p2, v0, v1

    neg-float v1, p1

    const/4 v2, 0x2

    .line 100
    aput v1, v0, v2

    const/16 v1, 0x8

    .line 101
    aput p1, v0, v1

    const/16 p1, 0xa

    .line 102
    aput p2, v0, p1

    .line 104
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    return-void
.end method

.method private zRotateMatrix(FF)V
    .locals 2

    .line 109
    new-instance v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 110
    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    .line 112
    aput p2, v0, v1

    const/4 v1, 0x1

    .line 113
    aput p1, v0, v1

    neg-float p1, p1

    const/4 v1, 0x4

    .line 114
    aput p1, v0, v1

    const/4 p1, 0x5

    .line 115
    aput p2, v0, p1

    .line 116
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    return-void
.end method

.method private zShearMatrix(FF)V
    .locals 2

    .line 121
    new-instance v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 122
    iget-object v0, v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x2

    .line 124
    aput p1, v0, v1

    const/4 p1, 0x6

    .line 125
    aput p2, v0, p1

    .line 126
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    return-void
.end method


# virtual methods
.method public changeSaturation(F)V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const v2, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v1

    add-float v3, v2, p1

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    .line 167
    aput v2, v0, v3

    const/4 v3, 0x2

    .line 168
    aput v2, v0, v3

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v2, v1

    const/4 v3, 0x4

    .line 169
    aput v2, v0, v3

    add-float v3, v2, p1

    const/4 v4, 0x5

    .line 170
    aput v3, v0, v4

    const/4 v3, 0x6

    .line 171
    aput v2, v0, v3

    const v2, 0x3da7ef9e    # 0.082f

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    .line 172
    aput v1, v0, v2

    const/16 v2, 0x9

    .line 173
    aput v1, v0, v2

    add-float/2addr v1, p1

    const/16 p1, 0xa

    .line 174
    aput v1, v0, p1

    return-void
.end method

.method public convertToLuminance()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x2

    const v2, 0x3e9e00d2    # 0.3086f

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x3f1c01a3    # 0.6094f

    .line 59
    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x3da7ef9e    # 0.082f

    .line 60
    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    return-void
.end method

.method public getBlue(III)F
    .locals 2

    int-to-float p1, p1

    .line 210
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    mul-float/2addr p1, v1

    int-to-float p2, p2

    const/4 v1, 0x6

    aget v1, v0, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    int-to-float p2, p3

    const/16 p3, 0xa

    aget p3, v0, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    const/16 p2, 0xe

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method public getGreen(III)F
    .locals 2

    int-to-float p1, p1

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    mul-float/2addr p1, v1

    int-to-float p2, p2

    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    int-to-float p2, p3

    const/16 p3, 0x9

    aget p3, v0, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    const/16 p2, 0xd

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method public getMatrix()[F
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    return-object v0
.end method

.method public getRed(III)F
    .locals 2

    int-to-float p1, p1

    .line 186
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr p1, v1

    int-to-float p2, p2

    const/4 v1, 0x4

    aget v1, v0, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    int-to-float p2, p3

    const/16 p3, 0x8

    aget p3, v0, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    const/16 p2, 0xc

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method public identity()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public setHue(F)V
    .locals 10

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    .line 139
    invoke-direct {p0, v3, v3}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->xRotateMatrix(FF)V

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    const/high16 v4, -0x40800000    # -1.0f

    div-float/2addr v4, v2

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, v2

    .line 143
    invoke-direct {p0, v4, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->yRotateMatrix(FF)V

    const v1, 0x3e9e00d2    # 0.3086f

    const v2, 0x3f1c01a3    # 0.6094f

    const v5, 0x3da7ef9e    # 0.082f

    .line 145
    invoke-direct {p0, v1, v2, v5}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->getRedf(FFF)F

    move-result v6

    .line 146
    invoke-direct {p0, v1, v2, v5}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->getGreenf(FFF)F

    move-result v7

    .line 147
    invoke-direct {p0, v1, v2, v5}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->getBluef(FFF)F

    move-result v1

    div-float/2addr v6, v1

    div-float/2addr v7, v1

    .line 150
    invoke-direct {p0, v6, v7}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->zShearMatrix(FF)V

    float-to-double v1, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v8

    .line 152
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float p1, v8

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 154
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->zRotateMatrix(FF)V

    neg-float p1, v6

    neg-float v1, v7

    .line 155
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->zShearMatrix(FF)V

    neg-float p1, v4

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->yRotateMatrix(FF)V

    neg-float p1, v3

    .line 157
    invoke-direct {p0, p1, v3}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->xRotateMatrix(FF)V

    return-void
.end method
