.class public Lcom/zui/gallery/glrenderer/GLES11Canvas;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"

# interfaces
.implements Lcom/zui/gallery/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;,
        Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"

.field private static mGLId:Lcom/zui/gallery/glrenderer/GLId;

.field private static sCropRect:[F


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/zui/gallery/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/zui/gallery/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 86
    sput-object v0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->sCropRect:[F

    .line 97
    new-instance v0, Lcom/zui/gallery/glrenderer/GLES11IdImpl;

    invoke-direct {v0}, Lcom/zui/gallery/glrenderer/GLES11IdImpl;-><init>()V

    sput-object v0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 59
    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    new-array v0, v0, [F

    .line 60
    iput-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 64
    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    new-array v1, v0, [F

    .line 66
    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTextureColor:[F

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 78
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    const/16 v1, 0x20

    new-array v2, v1, [F

    .line 79
    iput-object v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .line 80
    new-instance v2, Lcom/zui/gallery/util/IntArray;

    invoke-direct {v2}, Lcom/zui/gallery/util/IntArray;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/zui/gallery/util/IntArray;

    .line 81
    new-instance v2, Lcom/zui/gallery/util/IntArray;

    invoke-direct {v2}, Lcom/zui/gallery/util/IntArray;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/zui/gallery/util/IntArray;

    const/4 v2, 0x1

    .line 84
    iput-boolean v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    new-array v3, v2, [I

    .line 85
    iput-object v3, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    .line 100
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 101
    new-instance v3, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-direct {v3, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v3, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    .line 103
    sget-object v3, Lcom/zui/gallery/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v3, v3

    mul-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x8

    .line 104
    invoke-static {v3}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 105
    sget-object v3, Lcom/zui/gallery/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v3, v2, [I

    .line 108
    sget-object v4, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    invoke-interface {v4, v2, v3, v5}, Lcom/zui/gallery/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 109
    aget v2, v3, v5

    iput v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBoxCoords:I

    const v3, 0x8892

    .line 111
    invoke-interface {p1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 112
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/2addr v2, v0

    const v0, 0x88e4

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x2

    const/16 v1, 0x1406

    .line 115
    invoke-interface {p1, v0, v1, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 116
    invoke-interface {p1, v0, v1, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v2, 0x84c1

    .line 119
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 120
    invoke-interface {p1, v0, v1, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v0, 0x84c0

    .line 121
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    const v0, 0x8078

    .line 122
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/glrenderer/GLES11Canvas;)[F
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    return-object p0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 173
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z
    .locals 2

    .line 456
    invoke-virtual {p1, p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->onBind(Lcom/zui/gallery/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    .line 459
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 p1, 0x1

    return p1
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 3

    const v0, 0x8d40

    .line 887
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result p0

    const v0, 0x8cd5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    goto :goto_0

    :pswitch_3
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    goto :goto_0

    :pswitch_4
    const-string v0, "FRAMEBUFFER_FORMATS"

    goto :goto_0

    :pswitch_5
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :pswitch_6
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    goto :goto_0

    :pswitch_7
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 913
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/zui/gallery/glrenderer/BasicTexture;)V
    .locals 5

    .line 424
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    .line 425
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    .line 426
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 427
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureHeight()I

    move-result p2

    .line 429
    iget v3, p0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 430
    iget v3, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 431
    iget v3, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 432
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 436
    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 437
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    mul-float/2addr v3, v4

    .line 438
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 439
    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, p2

    .line 442
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 443
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    .line 444
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 445
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIII)V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 347
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 348
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 349
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v4, p1

    .line 345
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 353
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/4 p1, 0x0

    .line 351
    invoke-direct {p0, p1, p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    :goto_0
    int-to-float p1, p2

    int-to-float p2, p3

    int-to-float p3, p4

    int-to-float p4, p5

    .line 355
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_1

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object p1

    const/4 p2, 0x0

    .line 360
    aget p2, p1, p2

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int v1, p2

    const/4 p2, 0x1

    .line 361
    aget p4, p1, p2

    add-float/2addr p4, p3

    float-to-int v2, p4

    const/4 p4, 0x2

    .line 362
    aget p4, p1, p4

    add-float/2addr p4, p3

    float-to-int p4, p4

    sub-int v4, p4, v1

    const/4 p4, 0x3

    .line 363
    aget p1, p1, p4

    add-float/2addr p1, p3

    float-to-int p1, p1

    sub-int v5, p1, v2

    if-lez v4, :cond_2

    if-lez v5, :cond_2

    .line 365
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 366
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureOES:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureOES:I

    :cond_2
    :goto_1
    return-void
.end method

.method private drawMixed(Lcom/zui/gallery/glrenderer/BasicTexture;IFIIIIF)V
    .locals 7

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 551
    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIIIF)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    int-to-float p4, p4

    int-to-float p5, p5

    int-to-float p6, p6

    int-to-float p7, p7

    move-object p3, p0

    move p8, p2

    .line 554
    invoke-virtual/range {p3 .. p8}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, p8, v1

    if-gez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 558
    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 562
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 565
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    .line 566
    invoke-direct {p0, p2, p3, p8}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 568
    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIII)V

    .line 569
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    const/16 p2, 0x1e01

    invoke-virtual {p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    return-void
.end method

.method private drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIIIF)V
    .locals 2

    if-lez p4, :cond_4

    if-gtz p5, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, p6, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 381
    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 383
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0, p6}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 385
    invoke-direct/range {p0 .. p5}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method private freeRestoreConfig(Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    iput-object v0, p1, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    .line 795
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 5

    const/4 v0, 0x4

    .line 580
    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v0, :cond_0

    aget v0, p0, v3

    .line 581
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    aget v0, p0, v2

    const v4, -0x48d83a54    # -1.0E-5f

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x5

    aget p0, p0, v0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private mapPoints([FIIII)[F
    .locals 15

    move-object v0, p0

    .line 320
    iget-object v1, v0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    const/4 v2, 0x0

    .line 323
    aget v3, p1, v2

    move/from16 v4, p2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v5, 0x4

    aget v6, p1, v5

    move/from16 v7, p3

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    const/16 v6, 0xc

    aget v8, p1, v6

    add-float/2addr v3, v8

    const/4 v8, 0x1

    .line 324
    aget v9, p1, v8

    mul-float/2addr v9, v4

    const/4 v10, 0x5

    aget v11, p1, v10

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    const/16 v11, 0xd

    aget v12, p1, v11

    add-float/2addr v9, v12

    const/4 v12, 0x3

    .line 325
    aget v13, p1, v12

    mul-float/2addr v13, v4

    const/4 v4, 0x7

    aget v14, p1, v4

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    const/16 v7, 0xf

    aget v14, p1, v7

    add-float/2addr v13, v14

    div-float/2addr v3, v13

    .line 326
    aput v3, v1, v2

    div-float/2addr v9, v13

    .line 327
    aput v9, v1, v8

    .line 330
    aget v2, p1, v2

    move/from16 v3, p4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aget v5, p1, v5

    move/from16 v9, p5

    int-to-float v9, v9

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    aget v5, p1, v6

    add-float/2addr v2, v5

    .line 331
    aget v5, p1, v8

    mul-float/2addr v5, v3

    aget v6, p1, v10

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, p1, v11

    add-float/2addr v5, v6

    .line 332
    aget v6, p1, v12

    mul-float/2addr v6, v3

    aget v3, p1, v4

    mul-float/2addr v3, v9

    add-float/2addr v6, v3

    aget v3, p1, v7

    add-float/2addr v6, v3

    div-float/2addr v2, v6

    const/4 v3, 0x2

    .line 333
    aput v2, v1, v3

    div-float/2addr v5, v6

    .line 334
    aput v5, v1, v12

    return-object v1
.end method

.method private obtainRestoreConfig()Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    if-eqz v0, :cond_0

    .line 801
    iget-object v1, v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    return-object v0

    .line 804
    :cond_0
    new-instance v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;-><init>(Lcom/zui/gallery/glrenderer/GLES11Canvas$1;)V

    return-object v0
.end method

.method private restoreTransform()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private saveTransform()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTempMatrix:[F

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p2

    mul-float/2addr v1, p3

    mul-float/2addr p3, p2

    sub-float/2addr v0, v1

    div-float/2addr p3, v0

    ushr-int/lit8 p2, p1, 0x18

    int-to-float p2, p2

    mul-float/2addr p3, p2

    const p2, 0x477e0100    # 65025.0f

    div-float/2addr p3, p2

    ushr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    mul-float/2addr p2, p3

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p3

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float/2addr p1, p3

    .line 489
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    .line 492
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 493
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/16 p3, 0x2300

    const/16 v0, 0x2201

    const/4 v1, 0x0

    invoke-interface {p1, p3, v0, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const p2, 0x8571

    const v0, 0x47057500    # 34165.0f

    .line 495
    invoke-interface {p1, p3, p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8572

    .line 496
    invoke-interface {p1, p3, p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8581

    const v0, 0x47057600    # 34166.0f

    .line 497
    invoke-interface {p1, p3, p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8591

    const/high16 v1, 0x44400000    # 768.0f

    .line 498
    invoke-interface {p1, p3, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8589

    .line 499
    invoke-interface {p1, p3, p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8599

    const v1, 0x44408000    # 770.0f

    .line 500
    invoke-interface {p1, p3, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8582

    .line 503
    invoke-interface {p1, p3, p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x8592

    .line 504
    invoke-interface {p1, p3, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x858a

    .line 507
    invoke-interface {p1, p3, p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const p2, 0x859a

    .line 508
    invoke-interface {p1, p3, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    return-void
.end method

.method private setRenderTarget(Lcom/zui/gallery/glrenderer/RawTexture;)V
    .locals 7

    .line 843
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 845
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    const v2, 0x8d40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 846
    sget-object v1, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    iget-object v5, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v1, v3, v5, v4}, Lcom/zui/gallery/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 847
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    aget v1, v1, v4

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 851
    invoke-interface {v0, v2, v4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 852
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v0, v3, v1, v4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 855
    :cond_1
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    if-nez p1, :cond_2

    .line 857
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mScreenWidth:I

    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mScreenHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setSize(II)V

    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/RawTexture;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/RawTexture;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setSize(II)V

    .line 861
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/RawTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, p0}, Lcom/zui/gallery/glrenderer/RawTexture;->prepare(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_3
    const v2, 0x8d40

    const v3, 0x8ce0

    const/16 v4, 0xde1

    .line 866
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/RawTexture;->getId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    .line 863
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 868
    invoke-static {v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    :goto_0
    return-void
.end method

.method private setTextureColor(FFFF)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/4 v1, 0x0

    .line 465
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 466
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 467
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 468
    aput p4, v0, p1

    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 710
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    sub-float/2addr p3, p1

    const/4 v1, 0x0

    aput p3, v0, v1

    sub-float/2addr p4, p2

    const/4 p3, 0x5

    .line 711
    aput p4, v0, p3

    const/16 p3, 0xa

    const/high16 p4, 0x3f800000    # 1.0f

    .line 712
    aput p4, v0, p3

    const/16 p3, 0xc

    .line 713
    aput p1, v0, p3

    const/16 p1, 0xd

    .line 714
    aput p2, v0, p1

    const/16 p1, 0xf

    .line 715
    aput p4, v0, p1

    .line 716
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 717
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 p2, 0x1700

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 3

    .line 704
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 722
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 723
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private textureRect(FFFF)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 269
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->saveTransform()V

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 271
    invoke-virtual {p0, p3, p4, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 273
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 274
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 276
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 277
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureRect:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureRect:I

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 975
    sget-object v2, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/zui/gallery/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 976
    aget v0, v1, v3

    .line 977
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8892

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 978
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/2addr v3, p2

    const p2, 0x88e4

    invoke-interface {v1, v2, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/zui/gallery/glrenderer/RawTexture;)V
    .locals 2

    .line 881
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->save()V

    .line 882
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/zui/gallery/glrenderer/RawTexture;)V

    return-void
.end method

.method public clearBuffer()V
    .locals 1

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->clearBuffer([F)V

    return-void
.end method

.method public clearBuffer([F)V
    .locals 5

    if-eqz p1, :cond_0

    .line 690
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget p1, p1, v4

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 695
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/zui/gallery/util/IntArray;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/zui/gallery/util/IntArray;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/util/IntArray;->add(I)V

    .line 741
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteRecycledResources()V
    .locals 7

    .line 746
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/zui/gallery/util/IntArray;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/zui/gallery/util/IntArray;

    .line 748
    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 749
    sget-object v2, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    iget-object v4, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcom/zui/gallery/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 750
    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->clear()V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/zui/gallery/util/IntArray;

    .line 754
    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 755
    sget-object v2, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    iget-object v4, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcom/zui/gallery/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 756
    invoke-virtual {v1}, Lcom/zui/gallery/util/IntArray;->clear()V

    .line 758
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/zui/gallery/glrenderer/GLPaint;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 198
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/zui/gallery/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 199
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/zui/gallery/glrenderer/GLPaint;->getLineWidth()F

    move-result p5

    invoke-virtual {v1, p5}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    .line 201
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->saveTransform()V

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->translate(FF)V

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 203
    invoke-virtual {p0, p3, p4, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 205
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 p1, 0x3

    const/4 p2, 0x4

    const/4 p3, 0x2

    .line 206
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 208
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 209
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/zui/gallery/glrenderer/BasicTexture;IIIIII)V
    .locals 5

    .line 283
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    .line 284
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget-boolean v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 287
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x3f733333    # 0.95f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    :cond_1
    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v4

    .line 286
    :goto_0
    invoke-virtual {v1, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 292
    invoke-direct {p0, p1, p1, v0, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 294
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->saveTransform()V

    int-to-float p1, p2

    int-to-float p2, p3

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->translate(FF)V

    .line 297
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {p1, p2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 299
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const p2, 0x8892

    invoke-interface {p1, p2, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 300
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 p3, 0x2

    const/16 p4, 0x1406

    invoke-interface {p1, p3, p4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 302
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, p2, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 303
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, p3, p4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 305
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const p5, 0x8893

    invoke-interface {p1, p5, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 306
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 p5, 0x5

    const/16 p6, 0x1401

    invoke-interface {p1, p5, p7, p6, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 309
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget p5, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {p1, p2, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 310
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, p3, p4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {p1, p3, p4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 313
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 314
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    return-void
.end method

.method public drawMixed(Lcom/zui/gallery/glrenderer/BasicTexture;IFIIII)V
    .locals 10

    move-object v9, p0

    .line 452
    iget v8, v9, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->drawMixed(Lcom/zui/gallery/glrenderer/BasicTexture;IFIIIIF)V

    return-void
.end method

.method public drawMixed(Lcom/zui/gallery/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    .line 515
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_6

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    .line 518
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    .line 521
    iget v2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    return-void

    .line 525
    :cond_2
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    .line 528
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 529
    iget-object p4, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 530
    iget-object p4, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 531
    iget-object p5, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 533
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget-boolean v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 534
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->isOpaque(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 533
    :goto_0
    invoke-virtual {v1, v2}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 536
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 539
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    .line 540
    invoke-direct {p0, p2, p3, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    .line 541
    invoke-static {p4, p5, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/zui/gallery/glrenderer/BasicTexture;)V

    .line 542
    invoke-direct {p0, p4}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 543
    iget p1, p5, Landroid/graphics/RectF;->left:F

    iget p2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    .line 544
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    const/16 p2, 0x1e01

    invoke-virtual {p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public drawRect(FFFFLcom/zui/gallery/glrenderer/GLPaint;)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 180
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/zui/gallery/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 181
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/zui/gallery/glrenderer/GLPaint;->getLineWidth()F

    move-result p5

    invoke-virtual {v1, p5}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->saveTransform()V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p0, p3, p4, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 187
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 p1, 0x2

    const/4 p2, 0x6

    const/4 p3, 0x4

    .line 188
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 190
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 191
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIII)V
    .locals 7

    .line 374
    iget v6, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;IIIIF)V

    return-void
.end method

.method public drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    .line 390
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 394
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 395
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 396
    iget-object p3, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 398
    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 400
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 401
    :cond_3
    invoke-static {p2, p3, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/zui/gallery/glrenderer/BasicTexture;)V

    .line 402
    invoke-direct {p0, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 403
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 404
    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget p2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;[FIIII)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 412
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->bindTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 413
    :cond_2
    invoke-direct {p0, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setTextureCoords([F)V

    .line 414
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    int-to-float p1, p3

    int-to-float p2, p4

    int-to-float p3, p5

    int-to-float p4, p6

    .line 415
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    return-void
.end method

.method public dumpStatisticsAndClear()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 822
    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    .line 824
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureRect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureOES:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountFillRect:I

    .line 825
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawLine:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    .line 822
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 826
    iput v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    .line 827
    iput v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureRect:I

    .line 828
    iput v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountTextureOES:I

    .line 829
    iput v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountFillRect:I

    .line 830
    iput v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountDrawLine:I

    const-string v1, "GLCanvasImp"

    .line 831
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endRenderTarget()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/RawTexture;

    .line 875
    invoke-direct {p0, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/zui/gallery/glrenderer/RawTexture;)V

    .line 876
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->restore()V

    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLState:Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, p5, v1}, Lcom/zui/gallery/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 215
    iget-object p5, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 217
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->saveTransform()V

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 219
    invoke-virtual {p0, p3, p4, p1}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 p2, 0x0

    invoke-interface {p5, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 222
    invoke-interface {p5, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 224
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 225
    iget p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountFillRect:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 163
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 0

    return-void
.end method

.method public getGLId()Lcom/zui/gallery/glrenderer/GLId;
    .locals 1

    .line 995
    sget-object v0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGLId:Lcom/zui/gallery/glrenderer/GLId;

    return-object v0
.end method

.method public initializeTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 950
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 951
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 p1, 0x0

    .line 952
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/zui/gallery/glrenderer/BasicTexture;II)V
    .locals 10

    .line 941
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    .line 942
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 943
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v4

    .line 944
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v5

    .line 945
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v3, p2

    move v7, p2

    move v8, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 169
    iget v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 7

    .line 261
    iget-object v6, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .line 262
    iget-object v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 263
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 p2, 0x0

    const/16 v0, 0x10

    invoke-static {v6, p2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 0

    return-void
.end method

.method public restore()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    .line 789
    invoke-virtual {v0, p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->restore(Lcom/zui/gallery/glrenderer/GLES11Canvas;)V

    .line 790
    invoke-direct {p0, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->freeRestoreConfig(Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;)V

    return-void

    .line 787
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public rotate(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 254
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/16 v2, 0x10

    .line 255
    iget-object v3, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 256
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 p2, 0x0

    const/16 p3, 0x10

    invoke-static {v0, p3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public save()V
    .locals 1

    const/4 v0, -0x1

    .line 763
    invoke-virtual {p0, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .locals 4

    .line 768
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->obtainRestoreConfig()Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 771
    iget v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    iput v1, v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 773
    iput v1, v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    :goto_0
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 777
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v2, v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 779
    :cond_1
    iget-object p1, v0, Lcom/zui/gallery/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, p1, v1

    .line 782
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scale(FFF)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 158
    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    return-void
.end method

.method public setSize(II)V
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 129
    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 131
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    if-nez v1, :cond_1

    .line 132
    iput p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mScreenWidth:I

    .line 133
    iput p2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mScreenHeight:I

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    iput v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mAlpha:F

    .line 137
    iget-object v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 138
    invoke-interface {v2, v0, v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    const/16 v3, 0x1701

    .line 139
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 140
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    .line 141
    invoke-static {v2, v3, p1, v3, p2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 p1, 0x1700

    .line 143
    invoke-interface {v2, p1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 144
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 146
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 147
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 149
    iget-object v2, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    if-nez v2, :cond_2

    .line 150
    invoke-static {p1, v0, v3, p2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 151
    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    return-void
.end method

.method public setTextureParameters(Lcom/zui/gallery/glrenderer/BasicTexture;)V
    .locals 6

    .line 919
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    .line 920
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    .line 924
    sget-object v2, Lcom/zui/gallery/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    int-to-float v3, v1

    const/4 v5, 0x1

    .line 925
    aput v3, v2, v5

    int-to-float v0, v0

    const/4 v3, 0x2

    .line 926
    aput v0, v2, v3

    neg-int v0, v1

    int-to-float v0, v0

    const/4 v1, 0x3

    .line 927
    aput v0, v2, v1

    .line 930
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 931
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 932
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/zui/gallery/glrenderer/GLES11Canvas;->sCropRect:[F

    const v2, 0x8b9d

    invoke-interface {p1, v0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 933
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 934
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2803

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 935
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 936
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    return-void
.end method

.method public texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7

    .line 958
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 959
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 960
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v1, 0xc

    .line 239
    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 240
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 241
    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 242
    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 p1, 0x7

    aget p1, v0, p1

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcom/zui/gallery/glrenderer/BasicTexture;)Z
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/zui/gallery/util/IntArray;

    monitor-enter v0

    .line 731
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/zui/gallery/util/IntArray;

    iget p1, p1, Lcom/zui/gallery/glrenderer/BasicTexture;->mId:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/util/IntArray;->add(I)V

    const/4 p1, 0x1

    .line 733
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 734
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x1

    .line 970
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p1

    return p1
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    .line 965
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p1

    return p1
.end method
