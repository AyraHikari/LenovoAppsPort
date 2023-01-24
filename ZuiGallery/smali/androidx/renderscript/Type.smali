.class public Landroidx/renderscript/Type;
.super Landroidx/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Type$Builder;,
        Landroidx/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroidx/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/BaseObj;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .line 153
    invoke-virtual {p0}, Landroidx/renderscript/Type;->hasMipmaps()Z

    move-result v0

    .line 154
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    .line 155
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    .line 156
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getZ()I

    move-result v3

    .line 158
    invoke-virtual {p0}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v1, :cond_1

    move v1, v5

    :cond_1
    if-nez v2, :cond_2

    move v2, v5

    :cond_2
    if-nez v3, :cond_3

    move v3, v5

    :cond_3
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    :goto_1
    if-eqz v0, :cond_8

    if-gt v1, v5, :cond_4

    if-gt v2, v5, :cond_4

    if-gt v3, v5, :cond_4

    goto :goto_2

    :cond_4
    if-le v1, v5, :cond_5

    shr-int/lit8 v1, v1, 0x1

    :cond_5
    if-le v2, v5, :cond_6

    shr-int/lit8 v2, v2, 0x1

    :cond_6
    if-le v3, v5, :cond_7

    shr-int/lit8 v3, v3, 0x1

    :cond_7
    mul-int v7, v1, v2

    mul-int/2addr v7, v3

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    .line 186
    :cond_8
    :goto_2
    iput v6, p0, Landroidx/renderscript/Type;->mElementCount:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 149
    iget v0, p0, Landroidx/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroidx/renderscript/Element;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 93
    iget v0, p0, Landroidx/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 102
    iget v0, p0, Landroidx/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .line 122
    iget v0, p0, Landroidx/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .line 111
    iget v0, p0, Landroidx/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroidx/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Landroidx/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
