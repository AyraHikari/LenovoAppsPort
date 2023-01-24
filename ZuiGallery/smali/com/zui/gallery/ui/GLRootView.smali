.class public Lcom/zui/gallery/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/zui/gallery/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/GLRootView$IdleRunner;,
        Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/zui/gallery/ui/GLView;

.field private mDisplayRotation:I

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/zui/gallery/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private mOrientationSource:Lcom/zui/gallery/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCount:I

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCountingStart:J

    .line 76
    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mInvalidateColor:I

    .line 96
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    .line 99
    iput v1, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    .line 100
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderRequested:Z

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 105
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 108
    new-instance v2, Lcom/zui/gallery/ui/GLRootView$IdleRunner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/ui/GLRootView$IdleRunner;-><init>(Lcom/zui/gallery/ui/GLRootView;Lcom/zui/gallery/ui/GLRootView$1;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleRunner:Lcom/zui/gallery/ui/GLRootView$IdleRunner;

    .line 110
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 116
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mInDownState:Z

    const/4 v7, 0x1

    .line 117
    iput-boolean v7, p0, Lcom/zui/gallery/ui/GLRootView;->mFirstDraw:Z

    .line 257
    new-instance v0, Lcom/zui/gallery/ui/GLRootView$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/GLRootView$1;-><init>(Lcom/zui/gallery/ui/GLRootView;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 165
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    or-int/2addr v0, v7

    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    .line 166
    invoke-virtual {p0, v3}, Lcom/zui/gallery/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLRootView;->updateCustomWindowWhenNeed()V

    .line 170
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/GLRootView;->setEGLContextClientVersion(I)V

    .line 171
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 172
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 174
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    .line 176
    :goto_1
    invoke-virtual {p0, p0}, Lcom/zui/gallery/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 177
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_2
    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/GLRootView;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/GLRootView;)Lcom/zui/gallery/glrenderer/GLCanvas;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/GLRootView;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderRequested:Z

    return p0
.end method

.method private layoutContentPane()V
    .locals 9

    .line 286
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    .line 288
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->getWidth()I

    move-result v0

    .line 289
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->getHeight()I

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mOrientationSource:Lcom/zui/gallery/ui/OrientationSource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 295
    invoke-interface {v2}, Lcom/zui/gallery/ui/OrientationSource;->getDisplayRotation()I

    move-result v2

    .line 296
    iget-object v4, p0, Lcom/zui/gallery/ui/GLRootView;->mOrientationSource:Lcom/zui/gallery/ui/OrientationSource;

    invoke-interface {v4}, Lcom/zui/gallery/ui/OrientationSource;->getCompensation()I

    move-result v4

    goto :goto_0

    :cond_0
    move v2, v3

    move v4, v2

    .line 302
    :goto_0
    iget v5, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    if-eq v5, v4, :cond_2

    .line 303
    iput v4, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    .line 304
    rem-int/lit16 v5, v4, 0xb4

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 307
    iget-object v4, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    neg-int v6, v1

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 309
    iget-object v4, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 311
    :cond_1
    iget-object v5, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v4

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 314
    :cond_2
    :goto_1
    iput v2, p0, Lcom/zui/gallery/ui/GLRootView;->mDisplayRotation:I

    .line 317
    iget v2, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_3

    move v8, v1

    move v1, v0

    move v0, v8

    .line 322
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (compensation "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GLRootView"

    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 325
    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/zui/gallery/ui/GLView;->layout(IIII)V

    :cond_4
    return-void
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 463
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->deleteRecycledResources()V

    .line 466
    invoke-static {}, Lcom/zui/gallery/glrenderer/UploadedTexture;->resetUploadLimit()V

    const/4 p1, 0x0

    .line 468
    iput-boolean p1, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderRequested:Z

    .line 470
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mOrientationSource:Lcom/zui/gallery/ui/OrientationSource;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/gallery/ui/GLRootView;->mDisplayRotation:I

    .line 471
    invoke-interface {v0}, Lcom/zui/gallery/ui/OrientationSource;->getDisplayRotation()I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 473
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLRootView;->layoutContentPane()V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 477
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/GLRootView;->rotateCanvas(I)V

    .line 478
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    if-eqz v0, :cond_3

    .line 479
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    invoke-interface {v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 490
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 491
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 492
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_4

    .line 493
    iget-object v3, p0, Lcom/zui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/anim/CanvasAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/zui/gallery/anim/CanvasAnimation;->setStartTime(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 495
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 498
    :cond_5
    invoke-static {}, Lcom/zui/gallery/glrenderer/UploadedTexture;->uploadLimitReached()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 499
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->requestRender()V

    .line 502
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter p1

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleRunner:Lcom/zui/gallery/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->enable()V

    .line 504
    :cond_7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private outputFps()V
    .locals 7

    .line 386
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 387
    iget-wide v2, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 388
    iput-wide v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCount:I

    int-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCountingStart:J

    sub-long v5, v0, v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLRootView"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-wide v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCountingStart:J

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCount:I

    .line 395
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFrameCount:I

    return-void
.end method

.method private rotateCanvas(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->getWidth()I

    move-result v0

    .line 519
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->getHeight()I

    move-result v1

    .line 520
    div-int/lit8 v0, v0, 0x2

    .line 521
    div-int/lit8 v1, v1, 0x2

    .line 522
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 523
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 524
    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private superRequestRender()V
    .locals 0

    .line 265
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method private updateCustomWindowWhenNeed()V
    .locals 2

    .line 154
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->updateCurrentColorMode()V

    .line 155
    new-instance v0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;-><init>(Lcom/zui/gallery/ui/GLRootView;Lcom/zui/gallery/ui/GLRootView$1;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/GLRootView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 208
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleRunner:Lcom/zui/gallery/ui/GLRootView$IdleRunner;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->enable()V

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addOnGLIdleListenerFirst(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mIdleRunner:Lcom/zui/gallery/ui/GLRootView$IdleRunner;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->enable()V

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 533
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    iget-boolean v2, p0, Lcom/zui/gallery/ui/GLRootView;->mInDownState:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    return v1

    .line 538
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/zui/gallery/ui/GLRootView;->mInDownState:Z

    .line 543
    :cond_3
    iget v2, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    if-eqz v2, :cond_4

    .line 544
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v2}, Lcom/zui/gallery/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 547
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 550
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    .line 551
    invoke-virtual {v2, p1}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v3

    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 553
    iput-boolean v3, p0, Lcom/zui/gallery/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 558
    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 706
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 709
    throw v0
.end method

.method public freeze()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 648
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFreeze:Z

    .line 649
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getCompensation()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 699
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->unfreeze()V

    .line 700
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 400
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->update()V

    .line 407
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 419
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :try_start_1
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    :goto_1
    iget-boolean p1, p0, Lcom/zui/gallery/ui/GLRootView;->mFirstDraw:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 432
    iput-boolean p1, p0, Lcom/zui/gallery/ui/GLRootView;->mFirstDraw:Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 422
    :try_start_2
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :goto_2
    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->requestLayoutContentPane()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 611
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->unfreeze()V

    .line 612
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRootView"

    .line 371
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 373
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 374
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->setRenderThread()V

    .line 379
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 380
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 382
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    invoke-interface {p1, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->setSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 343
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 344
    iget-object p2, p0, Lcom/zui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz p2, :cond_0

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GLObject has changed from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GLRootView"

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 350
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 351
    sget-boolean p2, Lcom/zui/gallery/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz p2, :cond_1

    new-instance p1, Lcom/zui/gallery/glrenderer/GLES20Canvas;

    invoke-direct {p1}, Lcom/zui/gallery/glrenderer/GLES20Canvas;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/zui/gallery/glrenderer/GLES11Canvas;

    invoke-direct {p2, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mCanvas:Lcom/zui/gallery/glrenderer/GLCanvas;

    .line 352
    invoke-static {}, Lcom/zui/gallery/glrenderer/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    .line 360
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/GLRootView;->setRenderMode(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 354
    iget-object p2, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 355
    throw p1
.end method

.method public registerLaunchedAnimation(Lcom/zui/gallery/anim/CanvasAnimation;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 278
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFlags:I

    .line 279
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    throw v0
.end method

.method public requestRender()V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderRequested:Z

    .line 250
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :goto_0
    return-void
.end method

.method public requestRenderForced()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method public setContentPane(Lcom/zui/gallery/ui/GLView;)V
    .locals 9

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 216
    iget-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mInDownState:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 218
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 221
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mInDownState:Z

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->detachFromRoot()V

    .line 229
    :cond_2
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mContentView:Lcom/zui/gallery/ui/GLView;

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p1, p0}, Lcom/zui/gallery/ui/GLView;->attachToRoot(Lcom/zui/gallery/ui/GLRoot;)V

    .line 232
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->requestLayoutContentPane()V

    :cond_3
    return-void
.end method

.method public setLightsOutMode(Z)V
    .locals 1

    .line 663
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 668
    sget-boolean p1, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz p1, :cond_1

    const/16 v0, 0x105

    .line 672
    :cond_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/GLRootView;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setOrientationSource(Lcom/zui/gallery/ui/OrientationSource;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView;->mOrientationSource:Lcom/zui/gallery/ui/OrientationSource;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 681
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->unfreeze()V

    .line 682
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 687
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->unfreeze()V

    .line 688
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 693
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView;->unfreeze()V

    .line 694
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public unfreeze()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 655
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFreeze:Z

    .line 656
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 657
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
