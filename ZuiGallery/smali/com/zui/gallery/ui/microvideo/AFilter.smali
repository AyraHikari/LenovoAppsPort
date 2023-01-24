.class abstract Lcom/zui/gallery/ui/microvideo/AFilter;
.super Ljava/lang/Object;
.source "VideoView.java"


# static fields
.field public static DEBUG:Z = true

.field public static final OM:[F

.field private static final TAG:Ljava/lang/String; = "Filter"


# instance fields
.field private coord:[F

.field private index:[B

.field private mBools:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field protected mFlag:I

.field private mFloats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field protected mHCoord:I

.field protected mHMatrix:I

.field protected mHPosition:I

.field protected mHTexture:I

.field private mHeight:I

.field protected mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mInts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field protected mProgram:I

.field protected mRes:Landroid/content/res/Resources;

.field protected mTexBuffer:Ljava/nio/FloatBuffer;

.field protected mVerBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:I

.field private matrix:[F

.field private pos:[F

.field private textureId:I

.field private textureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    invoke-static {}, Lcom/zui/gallery/util/MatrixUtils;->getOriginalMatrix()[F

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/ui/microvideo/AFilter;->OM:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFlag:I

    .line 378
    sget-object v1, Lcom/zui/gallery/ui/microvideo/AFilter;->OM:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->matrix:[F

    .line 380
    iput v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureType:I

    .line 381
    iput v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureId:I

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 384
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->pos:[F

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 391
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->index:[B

    new-array v0, v0, [F

    .line 396
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->coord:[F

    .line 409
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mRes:Landroid/content/res/Resources;

    .line 410
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->initBuffer()V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static glError(ILjava/lang/Object;)V
    .locals 2

    .line 604
    sget-boolean v0, Lcom/zui/gallery/ui/microvideo/AFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "---"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Filter"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static uCreateGlProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 630
    invoke-static {v0, p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->uLoadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 632
    invoke-static {v1, p1}, Lcom/zui/gallery/ui/microvideo/AFilter;->uLoadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 634
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 637
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 638
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v2, 0x8b82

    .line 640
    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 641
    aget p1, p1, v0

    if-eq p1, p0, :cond_2

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not link program:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/ui/microvideo/AFilter;->glError(ILjava/lang/Object;)V

    .line 643
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public static uLoadShader(ILjava/lang/String;)I
    .locals 4

    .line 654
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 656
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 657
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array v2, p1, [I

    const v3, 0x8b81

    .line 659
    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 660
    aget v2, v2, v1

    if-nez v2, :cond_0

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->glError(ILjava/lang/Object;)V

    .line 662
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20 Error:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->glError(ILjava/lang/Object;)V

    .line 663
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method public static uRes(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 614
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    :goto_0
    const/4 v2, -0x1

    .line 617
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 618
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\r\\n"

    const-string v0, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 623
    :goto_1
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 624
    throw p1

    :catch_0
    move-object p0, v1

    .line 623
    :catch_1
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v1
.end method


# virtual methods
.method public final create()V
    .locals 0

    .line 414
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->onCreate()V

    return-void
.end method

.method protected final createProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 529
    invoke-static {p1, p2}, Lcom/zui/gallery/ui/microvideo/AFilter;->uCreateGlProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mProgram:I

    const-string/jumbo p2, "vPosition"

    .line 530
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHPosition:I

    .line 531
    iget p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mProgram:I

    const-string/jumbo p2, "vCoord"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHCoord:I

    .line 532
    iget p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mProgram:I

    const-string/jumbo p2, "vMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHMatrix:I

    .line 533
    iget p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mProgram:I

    const-string/jumbo p2, "vTexture"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHTexture:I

    return-void
.end method

.method protected final createProgramByAssetsFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mRes:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/microvideo/AFilter;->uRes(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mRes:Landroid/content/res/Resources;

    invoke-static {v0, p2}, Lcom/zui/gallery/ui/microvideo/AFilter;->uRes(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/microvideo/AFilter;->createProgram(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public draw()V
    .locals 0

    .line 424
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->onClear()V

    .line 425
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->onUseProgram()V

    .line 426
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->onSetExpandData()V

    .line 427
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->onBindTexture()V

    .line 428
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->onDraw()V

    return-void
.end method

.method public getBool(II)Z
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mBools:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 486
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    if-eqz p1, :cond_1

    .line 487
    array-length v0, p1

    if-le v0, p2, :cond_1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFlag()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFlag:I

    return v0
.end method

.method public getFloat(II)F
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFloats:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 501
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-eqz p1, :cond_2

    .line 502
    array-length v0, p1

    if-gt v0, p2, :cond_1

    goto :goto_0

    .line 505
    :cond_1
    aget p1, p1, p2

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getInt(II)I
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mInts:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 492
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_2

    .line 493
    array-length v0, p1

    if-gt v0, p2, :cond_1

    goto :goto_0

    .line 496
    :cond_1
    aget p1, p1, p2

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getMatrix()[F
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->matrix:[F

    return-object v0
.end method

.method public getOutputTexture()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mTexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final getTextureId()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureId:I

    return v0
.end method

.method public final getTextureType()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureType:I

    return v0
.end method

.method public getVerBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mVerBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected initBuffer()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->pos:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 545
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 546
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mVerBuffer:Ljava/nio/FloatBuffer;

    .line 547
    iget-object v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->pos:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 548
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mVerBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 550
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->index:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 551
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->index:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 552
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 554
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->coord:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 555
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 556
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 557
    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->coord:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 558
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected onBindTexture()V
    .locals 2

    .line 598
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureType:I

    const v1, 0x84c0

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 599
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/AFilter;->getTextureId()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 600
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHTexture:I

    iget v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureType:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method protected onClear()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 583
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 584
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method protected abstract onCreate()V
.end method

.method protected onDraw()V
    .locals 7

    .line 569
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 570
    iget v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHPosition:I

    iget-object v6, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mVerBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 571
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHCoord:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 572
    iget v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHCoord:I

    iget-object v6, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 573
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->index:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    const/16 v3, 0x1401

    invoke-static {v2, v0, v3, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 575
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 576
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHCoord:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method protected onSetExpandData()V
    .locals 4

    .line 591
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHMatrix:I

    iget-object v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->matrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method protected abstract onSizeChanged(II)V
.end method

.method protected onUseProgram()V
    .locals 1

    .line 562
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected saveImage()V
    .locals 8

    .line 673
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mWidth:I

    iget v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 674
    iget v3, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mWidth:I

    iget v4, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 677
    iget v1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mWidth:I

    iget v2, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 678
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 679
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/a.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 680
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 681
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs setBool(I[Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mBools:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mBools:Landroid/util/SparseArray;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mBools:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFlag:I

    return-void
.end method

.method public varargs setFloat(I[F)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFloats:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFloats:Landroid/util/SparseArray;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mFloats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs setInt(I[I)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mInts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mInts:Landroid/util/SparseArray;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mInts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final setMatrix([F)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->matrix:[F

    return-void
.end method

.method public final setSize(II)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mWidth:I

    .line 419
    iput p2, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->mHeight:I

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/microvideo/AFilter;->onSizeChanged(II)V

    return-void
.end method

.method public final setTextureId(I)V
    .locals 0

    .line 452
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureId:I

    return-void
.end method

.method public final setTextureType(I)V
    .locals 0

    .line 440
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/AFilter;->textureType:I

    return-void
.end method
