.class public Lcom/zui/gallery/glrenderer/ButtonTexture;
.super Ljava/lang/Object;
.source "ButtonTexture.java"


# instance fields
.field private final mHeight:I

.field private mIsSelect:Z

.field private final mSelectionIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field public mTexturePositionX:I

.field public mTexturePositionY:I

.field private final mUnSelectionIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mWidth:I


# direct methods
.method private constructor <init>(IILcom/zui/gallery/glrenderer/ResourceTexture;Lcom/zui/gallery/glrenderer/ResourceTexture;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionX:I

    .line 19
    iput v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionY:I

    .line 25
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mIsSelect:Z

    .line 28
    iput p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionX:I

    .line 29
    iput p2, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionY:I

    .line 30
    invoke-virtual {p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mWidth:I

    .line 31
    invoke-virtual {p4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mHeight:I

    .line 33
    iput-object p3, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mUnSelectionIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 34
    iput-object p4, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mSelectionIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    return-void
.end method

.method public static newInstance(IILcom/zui/gallery/glrenderer/ResourceTexture;Lcom/zui/gallery/glrenderer/ResourceTexture;)Lcom/zui/gallery/glrenderer/ButtonTexture;
    .locals 0

    .line 38
    new-instance p1, Lcom/zui/gallery/glrenderer/ButtonTexture;

    invoke-direct {p1, p0, p0, p2, p3}, Lcom/zui/gallery/glrenderer/ButtonTexture;-><init>(IILcom/zui/gallery/glrenderer/ResourceTexture;Lcom/zui/gallery/glrenderer/ResourceTexture;)V

    return-object p1
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;FFZ)V
    .locals 0

    float-to-int p2, p2

    .line 55
    iput p2, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionX:I

    float-to-int p3, p3

    .line 56
    iput p3, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionY:I

    if-eqz p4, :cond_0

    .line 58
    iget-object p4, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mSelectionIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p4, p1, p2, p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p4, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mUnSelectionIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p4, p1, p2, p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :goto_0
    return-void
.end method

.method public getTexturePositionX()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionX:I

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionY:I

    return v0
.end method

.method public isClicked(FF)Z
    .locals 5

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionX:I

    iget v2, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionY:I

    iget v3, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mHeight:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int p1, p1

    float-to-int p2, p2

    .line 66
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-boolean p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mIsSelect:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mIsSelect:Z

    .line 70
    :cond_0
    iget-boolean p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mIsSelect:Z

    return p1
.end method

.method public isSelect()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mIsSelect:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mIsSelect:Z

    return v0
.end method

.method public setPosition(II)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionX:I

    .line 51
    iput p2, p0, Lcom/zui/gallery/glrenderer/ButtonTexture;->mTexturePositionY:I

    return-void
.end method
