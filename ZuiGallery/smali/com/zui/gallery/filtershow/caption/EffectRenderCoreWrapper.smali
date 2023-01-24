.class public Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;
.super Ljava/lang/Object;
.source "EffectRenderCoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;
    }
.end annotation


# static fields
.field private static final POSITION_COORDINATE:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "EffectRenderCoreWrapper"

.field private static final TEXTURE_COORDINATE:Ljava/lang/String; = "inputTextureCoordinate"

.field private static final TEXTURE_UNIFORM:Ljava/lang/String; = "inputImageTexture"


# instance fields
.field private final mArraySyncObject:Ljava/lang/Object;

.field private mConvertProgramId:I

.field private mCurrentVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

.field private mDataType:I

.field private mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

.field private mDrawTextureBuffer:Ljava/nio/FloatBuffer;

.field private mDrawTextureProgramId:I

.field public mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private mEffectRenderInit:Z

.field private mFrameBuffers:[I

.field private mGlCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGlRenderTexture:I

.field private mGlRenderTexture1:I

.field private mPreProcessTextures:I

.field private mPreviewImageData:[B

.field private final mPreviewImageDataLock:Ljava/lang/Object;

.field private mPreviewRgbaImageData:[B

.field private mRemoveArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private modifyTime:J

.field private start:Z


# direct methods
.method public constructor <init>(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderInit:Z

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    .line 44
    iput v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    .line 48
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    .line 51
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    .line 52
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture1:I

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewImageDataLock:Ljava/lang/Object;

    .line 60
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDataType:I

    .line 62
    iput v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    .line 529
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->start:Z

    const-wide/16 v0, 0x0

    .line 530
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->modifyTime:J

    .line 73
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 74
    new-instance p1, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {p1}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mCurrentVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    .line 75
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v0, p1, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    return-void
.end method

.method private calcPreviewBufferPhysicalOrientation(IZI)I
    .locals 1

    const/16 v0, 0x2d

    if-le p3, v0, :cond_3

    const/16 v0, 0x13b

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x87

    if-ge p3, v0, :cond_1

    const/16 p3, 0x5a

    goto :goto_1

    :cond_1
    const/16 v0, 0xe1

    if-gt p3, v0, :cond_2

    const/16 p3, 0xb4

    goto :goto_1

    :cond_2
    const/16 p3, 0x10e

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-nez p2, :cond_4

    add-int/2addr p1, p3

    .line 324
    rem-int/lit16 p1, p1, 0x168

    goto :goto_2

    :cond_4
    sub-int/2addr p1, p3

    add-int/lit16 p1, p1, 0x168

    .line 326
    rem-int/lit16 p1, p1, 0x168

    :goto_2
    return p1
.end method

.method private createGlTexture(II)I
    .locals 13

    const v0, 0x84c0

    .line 435
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 437
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v3, "Texture generate"

    .line 438
    invoke-static {v3}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 440
    aget v3, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 441
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    if-nez v3, :cond_0

    new-array v3, v0, [I

    .line 442
    iput-object v3, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    .line 443
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    :cond_0
    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v7, p1

    move v8, p2

    .line 445
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 446
    aget v0, v1, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    aget v3, v3, v2

    invoke-static {v0, v3, p1, p2}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->bindFrameBuffer(IIII)V

    .line 447
    aget p1, v1, v2

    return p1
.end method

.method private destroyGlTexture(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 564
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method private preProcess(IIIIZ)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 458
    iget v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-gtz v4, :cond_0

    .line 459
    invoke-static {}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->loadProgramForSurfaceTexture()I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    .line 461
    sget-object v4, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->CUBE:[F

    array-length v4, v4

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 462
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 463
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlCubeBuffer:Ljava/nio/FloatBuffer;

    .line 464
    sget-object v7, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->CUBE:[F

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    sget-object v4, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_NO_ROTATION:[F

    array-length v4, v4

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 467
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 468
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 469
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 470
    iget-object v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v7, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 473
    :cond_0
    iget v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    const/4 v7, -0x1

    if-gez v4, :cond_1

    return v7

    :cond_1
    const/4 v4, 0x1

    move/from16 v8, p4

    move/from16 v9, p5

    .line 477
    invoke-static {v8, v4, v9}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->getRotation(IZZ)[F

    move-result-object v4

    .line 478
    iget-object v8, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 479
    iget-object v8, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string v4, "preProcess"

    .line 480
    invoke-static {v4}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 482
    iget v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "glUseProgram"

    .line 483
    invoke-static {v4}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 485
    iget v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    if-gtz v4, :cond_2

    .line 486
    invoke-direct {v0, v2, v3}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->createGlTexture(II)I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    .line 487
    iget-object v8, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    aget v8, v8, v6

    invoke-static {v4, v8, v2, v3}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->bindFrameBuffer(IIII)V

    .line 490
    :cond_2
    iget v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    const/16 v8, 0xde1

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0x2800

    const v9, 0x46180400    # 9729.0f

    .line 491
    invoke-static {v8, v4, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2801

    .line 492
    invoke-static {v8, v4, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v9, 0x47012f00    # 33071.0f

    .line 493
    invoke-static {v8, v4, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2803

    .line 494
    invoke-static {v8, v4, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 495
    iget-object v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    aget v4, v4, v6

    const v9, 0x8d40

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    .line 496
    iget v10, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    invoke-static {v9, v4, v8, v10, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 498
    iget-object v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 499
    iget v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    const-string v8, "position"

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 500
    iget-object v15, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlCubeBuffer:Ljava/nio/FloatBuffer;

    move v10, v4

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 501
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v8, "glEnableVertexAttributeArray"

    .line 502
    invoke-static {v8}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 504
    iget-object v10, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 505
    iget v10, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    const-string v11, "inputTextureCoordinate"

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v10

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 506
    iget-object v11, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v12, v10

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 507
    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 508
    invoke-static {v8}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    const-string v8, "glBindTexture"

    const v11, 0x8d65

    const v12, 0x84c0

    if-eq v1, v7, :cond_3

    .line 511
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 512
    iget v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    const-string v7, "inputImageTexture"

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 513
    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 514
    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 515
    invoke-static {v8}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 517
    :cond_3
    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 518
    invoke-static {v6, v6, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v1, 0x5

    .line 519
    invoke-static {v1, v6, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 520
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 521
    invoke-static {v10}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 522
    invoke-static {v11, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 523
    invoke-static {v8}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 524
    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 525
    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 526
    iget v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    return v1
.end method

.method private processGeneralFilter(Lcom/meicam/effect/sdk/NvsEffect;IIIIJ)Z
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v6, p6

    .line 533
    iget-object v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return v9

    .line 536
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mCurrentVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    move/from16 v2, p3

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 537
    iget-object v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mCurrentVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    move/from16 v2, p4

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    move-object/from16 v2, p1

    .line 540
    instance-of v1, v2, Lcom/meicam/effect/sdk/NvsVideoEffectTransition;

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    new-array v12, v1, [I

    aput p2, v12, v9

    aput p2, v12, v8

    .line 542
    iget-boolean v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->start:Z

    if-nez v1, :cond_1

    .line 543
    iput-wide v6, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->modifyTime:J

    .line 544
    iput-boolean v8, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->start:Z

    .line 546
    :cond_1
    iget-wide v3, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->modifyTime:J

    sub-long v3, v6, v3

    const-wide/32 v10, 0x4c4b40

    cmp-long v1, v3, v10

    if-ltz v1, :cond_2

    move-wide/from16 v16, v6

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v3

    .line 550
    :goto_0
    iget-object v10, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v13, 0x2

    iget-object v14, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mCurrentVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    const/16 v18, 0x0

    move-object/from16 v11, p1

    move/from16 v15, p5

    invoke-virtual/range {v10 .. v18}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[IILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result v1

    if-nez v1, :cond_3

    move v9, v8

    :cond_3
    return v9

    .line 553
    :cond_4
    iget-object v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v4, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mCurrentVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move v11, v8

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result v1

    if-nez v1, :cond_5

    move v9, v11

    :cond_5
    return v9
.end method


# virtual methods
.method public addNewRenderEffect(Lcom/meicam/effect/sdk/NvsEffect;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v1, -0x1

    .line 87
    iput-wide v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->startTimeStamp:J

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNewRenderEffect(Lcom/meicam/effect/sdk/NvsEffect;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v1, -0x1

    .line 100
    iput-wide v1, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->startTimeStamp:J

    .line 101
    iput-object p2, v0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->markTag:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 103
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public destroyGlResource()V
    .locals 4

    .line 394
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->destroyGlTexture(I)V

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    .line 396
    iget v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture1:I

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->destroyGlTexture(I)V

    .line 397
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture1:I

    .line 398
    iget v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->destroyGlTexture(I)V

    .line 399
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreProcessTextures:I

    .line 401
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 402
    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mFrameBuffers:[I

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v1, :cond_4

    .line 407
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    .line 409
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    invoke-virtual {v3, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 414
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    .line 415
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    invoke-virtual {v3, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    goto :goto_1

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 420
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    .line 422
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    .line 424
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    if-lez v0, :cond_5

    .line 425
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_5
    const/4 v0, -0x1

    .line 427
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    .line 428
    iget v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    if-lez v1, :cond_6

    .line 429
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 431
    :cond_6
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mConvertProgramId:I

    return-void

    :catchall_0
    move-exception v1

    .line 420
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public drawTexture(IIIII)V
    .locals 9

    .line 336
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 337
    invoke-static {}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->loadProgramForTexture()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    .line 338
    sget-object v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->CUBE:[F

    array-length v0, v0

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    .line 339
    sget-object v3, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->CUBE:[F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    sget-object v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    .line 341
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 342
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p3, p4

    int-to-float p4, p5

    div-float/2addr p3, p4

    cmpl-float p4, p2, p3

    const/high16 p5, 0x3f800000    # 1.0f

    if-lez p4, :cond_1

    div-float/2addr p2, p3

    move p3, p5

    move p5, p2

    goto :goto_0

    :cond_1
    div-float/2addr p3, p2

    .line 356
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    neg-float p4, p5

    invoke-virtual {p2, v2, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 357
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 358
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 359
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 360
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 361
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    neg-float p3, p3

    const/4 p4, 0x5

    invoke-virtual {p2, p4, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 362
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 363
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p5, 0x7

    invoke-virtual {p2, p5, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 364
    iget-object p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 365
    iget p2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p2, 0x84c0

    .line 366
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p3, 0xde1

    .line 367
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 369
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    iget p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    const-string p5, "position"

    invoke-static {p1, p5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 371
    iget-object v8, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawGlCubeBuffer:Ljava/nio/FloatBuffer;

    move v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 372
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 374
    iget-object p5, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p5, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 375
    iget p5, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    const-string v0, "inputTextureCoordinate"

    invoke-static {p5, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p5

    .line 376
    iget-object v8, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    move v3, p5

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 377
    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 379
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDrawTextureProgramId:I

    const-string v3, "inputImageTexture"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 380
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 382
    invoke-static {p4, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 383
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 384
    invoke-static {p5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 385
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 386
    invoke-static {p3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 387
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public removeRenderEffect(Ljava/lang/String;)V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    .line 110
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    instance-of v3, v3, Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    check-cast v3, Lcom/meicam/effect/sdk/NvsVideoEffect;

    .line 112
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffect;->getVideoFxPackageId()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffect;->getBuiltinVideoFxName()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    instance-of v3, v3, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    check-cast v3, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    .line 121
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionStylePackageId()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->markTag:Ljava/lang/String;

    .line 125
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_4
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    instance-of v3, v3, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;

    if-eqz v3, :cond_5

    .line 131
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    check-cast v3, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;

    .line 132
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->getCaptionStylePackageId()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_5
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    instance-of v3, v3, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    check-cast v3, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    .line 140
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->getAnimatedStickerPackageId()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public renderVideoEffect(IZIIJIIZIZ)I
    .locals 20

    move-object/from16 v9, p0

    move/from16 v0, p3

    move/from16 v10, p4

    .line 188
    iget-object v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    .line 192
    iget-object v4, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v3, v3, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    invoke-virtual {v4, v3}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRemoveArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 197
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    iget-object v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v1, :cond_2

    return p1

    .line 204
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_1
    iget-object v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    if-ge v1, v12, :cond_3

    .line 207
    monitor-exit v2

    return p1

    .line 209
    :cond_3
    iget-object v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-boolean v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderInit:Z

    if-nez v1, :cond_4

    .line 213
    iget-object v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    move-result v1

    iput-boolean v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mEffectRenderInit:Z

    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p9

    .line 218
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->preProcess(IIIIZ)I

    move-result v1

    goto :goto_1

    :cond_5
    move/from16 v1, p1

    :goto_1
    const-string v2, "preProcess"

    .line 220
    invoke-static {v2}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 223
    iget v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    if-lez v2, :cond_6

    if-eqz p11, :cond_7

    .line 224
    :cond_6
    invoke-direct {v9, v0, v10}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->createGlTexture(II)I

    move-result v2

    iput v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    :cond_7
    const-string v2, "createGLTexture"

    .line 226
    invoke-static {v2}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 228
    iget v2, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    .line 229
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v12, :cond_8

    .line 231
    iget v3, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture1:I

    if-lez v3, :cond_9

    :cond_8
    if-eqz p11, :cond_a

    .line 232
    :cond_9
    invoke-direct {v9, v0, v10}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->createGlTexture(II)I

    move-result v3

    iput v3, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture1:I

    :cond_a
    new-array v13, v12, [I

    const v3, 0x8ca6

    const/4 v14, 0x0

    .line 237
    invoke-static {v3, v13, v14}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v3, "glGetIntegerv"

    .line 238
    invoke-static {v3}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v1

    move v7, v2

    move/from16 v17, v14

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    .line 285
    iget-object v2, v1, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v3, 0x3e8

    mul-long v18, p5, v3

    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move v14, v7

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->processGeneralFilter(Lcom/meicam/effect/sdk/NvsEffect;IIIIJ)Z

    move-result v1

    add-int/lit8 v2, v17, 0x1

    if-nez v1, :cond_b

    move/from16 v17, v2

    move v7, v14

    :goto_3
    const/4 v14, 0x0

    goto :goto_2

    .line 291
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_c

    goto :goto_4

    .line 295
    :cond_c
    iget v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture:I

    if-ne v14, v1, :cond_d

    .line 296
    iget v1, v9, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mGlRenderTexture1:I

    :cond_d
    move v7, v1

    move/from16 v17, v2

    move/from16 v16, v14

    goto :goto_3

    :cond_e
    move v14, v7

    :goto_4
    const-string v0, "ProcessSingleFilter"

    .line 301
    invoke-static {v0}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 303
    aget v1, v13, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 304
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move/from16 v16, v14

    :goto_5
    return v16

    :catchall_0
    move-exception v0

    .line 210
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 197
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resetEffectRenderTime()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mArraySyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mRenderArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;

    const-wide/16 v3, -0x1

    .line 155
    iput-wide v3, v2, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper$EffectRenderItem;->startTimeStamp:J

    goto :goto_0

    .line 157
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

.method public sendPreviewBuffer([B)V
    .locals 4

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDataType:I

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewImageData:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 163
    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewImageData:[B

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewImageDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewImageData:[B

    array-length v3, p1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendRgbaBuffer([B)V
    .locals 4

    const/4 v0, 0x2

    .line 171
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mDataType:I

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewRgbaImageData:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 173
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewRgbaImageData:[B

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewImageDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/EffectRenderCoreWrapper;->mPreviewRgbaImageData:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
