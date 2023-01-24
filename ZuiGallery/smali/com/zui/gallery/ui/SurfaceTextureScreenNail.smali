.class public abstract Lcom/zui/gallery/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcom/zui/gallery/ui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureScreenNail"


# instance fields
.field protected mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 66
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/zui/gallery/glrenderer/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ExtTexture;-><init>(Lcom/zui/gallery/glrenderer/GLCanvas;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

    .line 47
    iget p1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ExtTexture;->setSize(II)V

    .line 48
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ExtTexture;->getId()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 49
    iget v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 50
    iget-object p1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 51
    monitor-enter p0

    const/4 p1, 0x1

    .line 52
    :try_start_0
    iput-boolean p1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 8

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x2

    .line 115
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 116
    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    .line 117
    div-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p3

    int-to-float v2, v0

    int-to-float v3, v1

    .line 118
    invoke-interface {p1, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    invoke-interface {p1, v3, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    .line 120
    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 122
    iget-object v2, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

    iget-object v3, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;[FIIII)V

    .line 123
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 129
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract noDraw()V
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ExtTexture;->recycle()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

    .line 81
    iget-object v1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v1}, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 82
    iput-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resizeTexture()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/zui/gallery/glrenderer/ExtTexture;

    if-eqz v0, :cond_0

    .line 92
    iget v1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/glrenderer/ExtTexture;->setSize(II)V

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 87
    iput p2, p0, Lcom/zui/gallery/ui/SurfaceTextureScreenNail;->mHeight:I

    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 0

    return-void
.end method
