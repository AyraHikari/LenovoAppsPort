.class public abstract Lcom/zui/gallery/glrenderer/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/zui/gallery/glrenderer/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/zui/gallery/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcom/zui/gallery/glrenderer/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v0, v1, v1}, Lcom/zui/gallery/glrenderer/BasicTexture;-><init>(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mId:I

    .line 45
    iput v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mWidth:I

    .line 46
    iput v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mCanvasRef:Lcom/zui/gallery/glrenderer/GLCanvas;

    .line 59
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 60
    iput p2, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mId:I

    .line 61
    iput p3, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mState:I

    .line 62
    sget-object p1, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 63
    :try_start_0
    sget-object p2, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private freeResource()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mCanvasRef:Lcom/zui/gallery/glrenderer/GLCanvas;

    if-eqz v0, :cond_0

    .line 184
    iget v1, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 185
    invoke-interface {v0, p0}, Lcom/zui/gallery/glrenderer/GLCanvas;->unloadTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    .line 186
    iput v2, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mId:I

    :cond_0
    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mState:I

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/zui/gallery/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .line 203
    sget-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .line 215
    sget-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 216
    :try_start_0
    sget-object v1, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/glrenderer/BasicTexture;

    const/4 v3, 0x0

    .line 217
    iput v3, v2, Lcom/zui/gallery/glrenderer/BasicTexture;->mState:I

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v2, v3}, Lcom/zui/gallery/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 220
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static yieldAllTextures()V
    .locals 3

    .line 207
    sget-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-object v1, Lcom/zui/gallery/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/glrenderer/BasicTexture;

    .line 209
    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/BasicTexture;->yield()V

    goto :goto_0

    .line 211
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIII)V

    :cond_0
    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 147
    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIII)V

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 152
    invoke-interface {p1, p0, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 194
    sget-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/zui/gallery/glrenderer/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->recycle()V

    .line 196
    sget-object v0, Lcom/zui/gallery/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected abstract onBind(Lcom/zui/gallery/glrenderer/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->freeResource()V

    return-void
.end method

.method protected setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mCanvasRef:Lcom/zui/gallery/glrenderer/GLCanvas;

    return-void
.end method

.method protected setBorder(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mHasBorder:Z

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 80
    iput p1, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mWidth:I

    .line 81
    iput p2, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 82
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureWidth:I

    if-lez p2, :cond_1

    .line 83
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput p1, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureHeight:I

    .line 84
    iget p2, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureWidth:I

    const/16 v1, 0x1000

    if-gt p2, v1, :cond_2

    if-le p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 85
    iget p2, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureWidth:I

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    iget v0, p0, Lcom/zui/gallery/glrenderer/BasicTexture;->mTextureHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string/jumbo p2, "texture is too large: %d x %d"

    .line 85
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "BasicTexture"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public yield()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->freeResource()V

    return-void
.end method
