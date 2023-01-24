.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalSurface"
.end annotation


# instance fields
.field private final callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

.field private final glTextureId:[I

.field private final hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:I

.field private volatile isAttached:Z

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile surface:Landroid/view/Surface;

.field private volatile surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final transformMatrix:[F


# direct methods
.method constructor <init>(ILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callback"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 318
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    .line 319
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 320
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 321
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    .line 325
    iput-boolean v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    .line 328
    iput p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    .line 329
    iput-object p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    .line 330
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    return-object p0
.end method


# virtual methods
.method getSurface()Landroid/view/Surface;
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method maybeAttachToCurrentGLContext()V
    .locals 4

    .line 338
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-eqz v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 343
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v2, v3, v2

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 347
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;

    invoke-direct {v2, p0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 359
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 363
    :goto_0
    iput-boolean v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    .line 364
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->postOnSurfaceAvailable()V

    :cond_2
    return-void
.end method

.method maybeDetachFromCurrentGLContext()V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->cancelPosts()V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    return-void
.end method

.method shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateSurfaceCallback"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 431
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    .line 435
    :cond_1
    iget v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;->updateSurface(IIJ[F)V

    return-void
.end method

.method updateSurfaceTexture(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateSurfaceCallback"
        }
    .end annotation

    .line 391
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 398
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 399
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    .line 404
    iget v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v4, v0, v1

    iget-object v7, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;->updateSurface(IIJ[F)V

    :cond_1
    return-void
.end method
