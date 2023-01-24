.class public abstract Lcom/zui/gallery/glrenderer/UploadedTexture;
.super Lcom/zui/gallery/glrenderer/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;-><init>(Lcom/zui/gallery/glrenderer/UploadedTexture$1;)V

    sput-object v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sBorderKey:Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, v0, v1, v1}, Lcom/zui/gallery/glrenderer/BasicTexture;-><init>(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    .line 58
    iput-boolean v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mIsUploading:Z

    .line 59
    iput-boolean v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mOpaque:Z

    .line 60
    iput-boolean v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setBorder(Z)V

    .line 75
    iput v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freeBitmap Thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texture"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetBitmap isRecycle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texture"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 146
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 147
    iget v2, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setSize(II)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 122
    sget-object v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sBorderKey:Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    .line 123
    iput-boolean p0, v0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    .line 124
    iput-object p1, v0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 125
    iput p2, v0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->length:I

    .line 126
    sget-object v1, Lcom/zui/gallery/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 129
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 131
    sget-object p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->clone()Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    sput v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .line 230
    sget v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private uploadToCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 238
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 239
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getTextureWidth()I

    move-result v11

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getTextureHeight()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Texture"

    if-gt v9, v11, :cond_a

    if-le v10, v12, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_8

    .line 255
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->getGLId()Lcom/zui/gallery/glrenderer/GLId;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 260
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->getGLId()Lcom/zui/gallery/glrenderer/GLId;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/glrenderer/GLId;->generateTexture()I

    move-result v2

    iput v2, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mId:I

    .line 261
    invoke-interface {v0, v8}, Lcom/zui/gallery/glrenderer/GLCanvas;->setTextureParameters(Lcom/zui/gallery/glrenderer/BasicTexture;)V

    .line 263
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    return-void

    :cond_2
    const-string v2, " Thread id:"

    if-ne v9, v11, :cond_3

    if-ne v10, v12, :cond_3

    .line 268
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeTexture bitmap isRecycler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-interface {v0, v8, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->initializeTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 271
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    return-void

    .line 272
    :cond_4
    :try_start_3
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v15

    .line 273
    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 274
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 276
    invoke-interface {v0, v8, v15, v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->initializeTextureSize(Lcom/zui/gallery/glrenderer/BasicTexture;II)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "texSubImage2D bitmap isRecycler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v3, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    iget v4, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v13, v6

    move v6, v15

    move v14, v7

    invoke-interface/range {v1 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 280
    iget v1, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    if-lez v1, :cond_5

    const/4 v1, 0x1

    .line 282
    invoke-static {v1, v13, v12}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move v7, v14

    .line 283
    invoke-interface/range {v1 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    .line 286
    invoke-static {v1, v13, v11}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move v7, v14

    .line 287
    invoke-interface/range {v1 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 291
    :cond_5
    iget v1, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    add-int/2addr v1, v9

    if-ge v1, v11, :cond_6

    const/4 v1, 0x1

    .line 292
    invoke-static {v1, v13, v12}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 293
    iget v1, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    add-int v3, v1, v9

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move v7, v14

    invoke-interface/range {v1 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 297
    :cond_6
    iget v1, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    add-int/2addr v1, v10

    if-ge v1, v12, :cond_7

    const/4 v2, 0x0

    .line 298
    invoke-static {v2, v13, v11}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    .line 299
    iget v1, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    add-int v4, v1, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move v7, v14

    invoke-interface/range {v1 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :cond_7
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    .line 306
    invoke-virtual/range {p0 .. p1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setAssociatedCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    const/4 v3, 0x1

    .line 307
    iput v3, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mState:I

    .line 308
    iput-boolean v3, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    goto :goto_4

    :cond_8
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 256
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UploadedTexture uploadTOCanvas canvas is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    move v13, v3

    goto :goto_2

    :cond_9
    move v13, v2

    :goto_2
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    return-void

    :cond_a
    :goto_3
    :try_start_5
    const-string v0, "UploadedTexture bWidth > texWidth || bHeight > texHeight ,return"

    .line 248
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    .line 304
    throw v0

    :cond_b
    const/4 v0, -0x1

    .line 310
    iput v0, v8, Lcom/zui/gallery/glrenderer/UploadedTexture;->mState:I

    :goto_4
    return-void
.end method


# virtual methods
.method public getContentValid()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 174
    iget v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 175
    :cond_0
    iget v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 168
    iget v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 169
    :cond_0
    iget v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 185
    iput v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mWidth:I

    .line 186
    iput v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcom/zui/gallery/glrenderer/GLCanvas;)Z
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->updateContent(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 320
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isContentValid()Z

    move-result p1

    return p1
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/zui/gallery/glrenderer/BasicTexture;->recycle()V

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 9

    .line 205
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 206
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/zui/gallery/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->uploadToCanvas(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    .line 217
    :cond_2
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 218
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 219
    iget v5, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mBorder:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-interface/range {v2 .. v8}, Lcom/zui/gallery/glrenderer/GLCanvas;->texSubImage2D(Lcom/zui/gallery/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 220
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->freeBitmap()V

    .line 221
    iput-boolean v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;->mContentValid:Z

    :cond_3
    :goto_0
    return-void
.end method
