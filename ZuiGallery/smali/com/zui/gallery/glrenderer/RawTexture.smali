.class public Lcom/zui/gallery/glrenderer/RawTexture;
.super Lcom/zui/gallery/glrenderer/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;-><init>()V

    .line 30
    iput-boolean p3, p0, Lcom/zui/gallery/glrenderer/RawTexture;->mOpaque:Z

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/RawTexture;->setSize(II)V

    return-void
.end method


# virtual methods
.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/RawTexture;->mIsFlipped:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/zui/gallery/glrenderer/GLCanvas;)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/RawTexture;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RawTexture"

    const-string v0, "lost the content due to context change"

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method protected prepare(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    .line 49
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->getGLId()Lcom/zui/gallery/glrenderer/GLId;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lcom/zui/gallery/glrenderer/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/glrenderer/RawTexture;->mId:I

    const/16 v0, 0x1908

    const/16 v1, 0x1401

    .line 51
    invoke-interface {p1, p0, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->initializeTextureSize(Lcom/zui/gallery/glrenderer/BasicTexture;II)V

    .line 52
    invoke-interface {p1, p0}, Lcom/zui/gallery/glrenderer/GLCanvas;->setTextureParameters(Lcom/zui/gallery/glrenderer/BasicTexture;)V

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/zui/gallery/glrenderer/RawTexture;->mState:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/RawTexture;->setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    return-void
.end method

.method public setIsFlippedVertically(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/RawTexture;->mIsFlipped:Z

    return-void
.end method

.method public yield()V
    .locals 0

    return-void
.end method
