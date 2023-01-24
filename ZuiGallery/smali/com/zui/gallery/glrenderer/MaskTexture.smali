.class public Lcom/zui/gallery/glrenderer/MaskTexture;
.super Ljava/lang/Object;
.source "MaskTexture.java"


# instance fields
.field private final mBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

.field public mHeight:I

.field private final mMaskTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field public mTexturePositionX:I

.field public mTexturePositionY:I

.field public mWidth:I


# direct methods
.method private constructor <init>(IIIILcom/zui/gallery/glrenderer/ResourceTexture;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionX:I

    .line 16
    iput p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    .line 18
    iput p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mWidth:I

    .line 20
    iput p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mHeight:I

    .line 23
    iput p1, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionX:I

    .line 24
    iput p2, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    .line 26
    iput-object p5, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mMaskTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 27
    new-instance p1, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-direct {p1, p6}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    return-void
.end method

.method public static newInstance(IIIILcom/zui/gallery/glrenderer/ResourceTexture;I)Lcom/zui/gallery/glrenderer/MaskTexture;
    .locals 8

    .line 31
    new-instance v7, Lcom/zui/gallery/glrenderer/MaskTexture;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/glrenderer/MaskTexture;-><init>(IIIILcom/zui/gallery/glrenderer/ResourceTexture;I)V

    return-object v7
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;FFIIZ)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {v0, p4, p5}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 49
    iput p4, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mWidth:I

    .line 50
    iput p5, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mHeight:I

    .line 51
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/zui/gallery/glrenderer/MaskTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V
    .locals 1

    float-to-int p2, p2

    .line 55
    iput p2, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionX:I

    float-to-int p3, p3

    .line 56
    iput p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    if-eqz p4, :cond_0

    .line 58
    iget-object p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mMaskTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget p4, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-virtual {p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iget p4, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    iget v0, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    iget-object v0, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mMaskTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    invoke-virtual {p3, p1, p2, p4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 59
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    iget p3, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionX:I

    iget p4, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    invoke-virtual {p2, p1, p3, p4}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method public getTexturePositionX()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionX:I

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    return v0
.end method

.method public setPosition(II)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionX:I

    .line 44
    iput p2, p0, Lcom/zui/gallery/glrenderer/MaskTexture;->mTexturePositionY:I

    return-void
.end method
