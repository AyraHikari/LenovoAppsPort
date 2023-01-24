.class Lcom/zui/gallery/ui/microvideo/VideoDraw;
.super Ljava/lang/Object;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;
    }
.end annotation


# instance fields
.field private final callblack:Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;

.field protected final info:Lcom/zui/gallery/data/MicroVideoInfo;

.field protected matrix:[F

.field private volatile newFrameAvailable:Z

.field protected oesFilter:Lcom/zui/gallery/ui/microvideo/OesFilter;

.field protected oesTextureId:[I

.field protected final res:Landroid/content/res/Resources;

.field protected screenHeight:I

.field protected screenWidth:I

.field protected surface:Landroid/view/Surface;

.field protected surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/MicroVideoInfo;Landroid/content/res/Resources;Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-static {}, Lcom/zui/gallery/util/MatrixUtils;->getOriginalMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->matrix:[F

    const/4 v0, -0x1

    .line 194
    iput v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenWidth:I

    .line 195
    iput v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenHeight:I

    .line 202
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    .line 203
    iput-object p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->res:Landroid/content/res/Resources;

    .line 204
    iput-object p3, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->callblack:Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/microvideo/VideoDraw;)Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->callblack:Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/ui/microvideo/VideoDraw;Z)Z
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->newFrameAvailable:Z

    return p1
.end method

.method private createSurfaceTexture()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/zui/gallery/ui/microvideo/VideoDraw$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/microvideo/VideoDraw$1;-><init>(Lcom/zui/gallery/ui/microvideo/VideoDraw;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 227
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surface:Landroid/view/Surface;

    .line 228
    iget-object v1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->callblack:Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v1, v0}, Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;->onSurfaceAvaiable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private deletTexture()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesTextureId:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method private updateMVPMatrix()V
    .locals 14

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v0, v0, Lcom/zui/gallery/data/MicroVideoInfo;->rotation:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v0, v0, Lcom/zui/gallery/data/MicroVideoInfo;->rotation:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->matrix:[F

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v4, v0, Lcom/zui/gallery/data/MicroVideoInfo;->videoWidth:I

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v5, v0, Lcom/zui/gallery/data/MicroVideoInfo;->videoHeight:I

    iget v6, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenWidth:I

    iget v7, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenHeight:I

    invoke-static/range {v2 .. v7}, Lcom/zui/gallery/util/MatrixUtils;->getMatrix([FIIIII)V

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->matrix:[F

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v10, v0, Lcom/zui/gallery/data/MicroVideoInfo;->videoHeight:I

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v11, v0, Lcom/zui/gallery/data/MicroVideoInfo;->videoWidth:I

    iget v12, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenWidth:I

    iget v13, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenHeight:I

    invoke-static/range {v8 .. v13}, Lcom/zui/gallery/util/MatrixUtils;->getMatrix([FIIIII)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->matrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    iget v2, v2, Lcom/zui/gallery/data/MicroVideoInfo;->rotation:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 269
    iget-boolean p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->newFrameAvailable:Z

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 271
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    .line 272
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 273
    iget p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenWidth:I

    iget v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenHeight:I

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 274
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesFilter:Lcom/zui/gallery/ui/microvideo/OesFilter;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/microvideo/OesFilter;->draw()V

    return-void
.end method

.method onSurfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 262
    iput p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenWidth:I

    .line 263
    iput p3, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenHeight:I

    .line 264
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->updateMVPMatrix()V

    .line 265
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->createSurfaceTexture()V

    return-void
.end method

.method onSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 p1, 0x1

    new-array p2, p1, [I

    .line 246
    iput-object p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesTextureId:[I

    const/4 v0, 0x0

    .line 247
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 248
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesTextureId:[I

    aget p1, p1, v0

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const v1, 0x46180400    # 9729.0f

    .line 249
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 251
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 253
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesTextureId:[I

    aget p2, p2, v0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 255
    new-instance p1, Lcom/zui/gallery/ui/microvideo/OesFilter;

    iget-object p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->res:Landroid/content/res/Resources;

    invoke-direct {p1, p2}, Lcom/zui/gallery/ui/microvideo/OesFilter;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesFilter:Lcom/zui/gallery/ui/microvideo/OesFilter;

    .line 256
    iget-object p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesTextureId:[I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/microvideo/OesFilter;->setTextureId(I)V

    .line 257
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesFilter:Lcom/zui/gallery/ui/microvideo/OesFilter;

    iget-object p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->matrix:[F

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/microvideo/OesFilter;->setMatrix([F)V

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->oesFilter:Lcom/zui/gallery/ui/microvideo/OesFilter;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/microvideo/OesFilter;->create()V

    return-void
.end method

.method release()V
    .locals 2

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->newFrameAvailable:Z

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->deletTexture()V

    return-void
.end method

.method updateViewPort(II)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenWidth:I

    .line 241
    iput p2, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw;->screenHeight:I

    .line 242
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->updateMVPMatrix()V

    return-void
.end method
