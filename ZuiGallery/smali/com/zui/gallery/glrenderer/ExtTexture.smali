.class public Lcom/zui/gallery/glrenderer/ExtTexture;
.super Lcom/zui/gallery/glrenderer/BasicTexture;
.source "ExtTexture.java"


# instance fields
.field private mTarget:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/glrenderer/GLCanvas;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;-><init>()V

    .line 26
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->getGLId()Lcom/zui/gallery/glrenderer/GLId;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLId;->generateTexture()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/glrenderer/ExtTexture;->mId:I

    .line 28
    iput p2, p0, Lcom/zui/gallery/glrenderer/ExtTexture;->mTarget:I

    return-void
.end method

.method private uploadToCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 0

    .line 32
    invoke-interface {p1, p0}, Lcom/zui/gallery/glrenderer/GLCanvas;->setTextureParameters(Lcom/zui/gallery/glrenderer/BasicTexture;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/ExtTexture;->setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/zui/gallery/glrenderer/ExtTexture;->mState:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/zui/gallery/glrenderer/ExtTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/zui/gallery/glrenderer/GLCanvas;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/ExtTexture;->uploadToCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public yield()V
    .locals 0

    return-void
.end method
