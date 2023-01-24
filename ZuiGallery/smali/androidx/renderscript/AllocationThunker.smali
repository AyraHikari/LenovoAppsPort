.class Landroidx/renderscript/AllocationThunker;
.super Landroidx/renderscript/Allocation;
.source "AllocationThunker.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$support$v8$renderscript$Allocation$MipmapControl:[I

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mN:Landroid/renderscript/Allocation;


# direct methods
.method static synthetic $SWITCH_TABLE$android$support$v8$renderscript$Allocation$MipmapControl()[I
    .locals 3

    .line 29
    sget-object v0, Landroidx/renderscript/AllocationThunker;->$SWITCH_TABLE$android$support$v8$renderscript$Allocation$MipmapControl:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/renderscript/Allocation$MipmapControl;->values()[Landroidx/renderscript/Allocation$MipmapControl;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroidx/renderscript/Allocation$MipmapControl;

    invoke-virtual {v1}, Landroidx/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    invoke-virtual {v1}, Landroidx/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroidx/renderscript/Allocation$MipmapControl;

    invoke-virtual {v1}, Landroidx/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Landroidx/renderscript/AllocationThunker;->$SWITCH_TABLE$android$support$v8$renderscript$Allocation$MipmapControl:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 389
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroidx/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    .line 391
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-void
.end method

.method constructor <init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/renderscript/Allocation;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    .line 78
    iput-object p2, p0, Landroidx/renderscript/AllocationThunker;->mType:Landroidx/renderscript/Type;

    .line 79
    iput p3, p0, Landroidx/renderscript/AllocationThunker;->mUsage:I

    .line 80
    iput-object p4, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    return-void
.end method

.method static convertMipmapControl(Landroidx/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    .line 40
    invoke-static {}, Landroidx/renderscript/AllocationThunker;->$SWITCH_TABLE$android$support$v8$renderscript$Allocation$MipmapControl()[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    sget-object p0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    return-object p0

    .line 42
    :cond_2
    sget-object p0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    return-object p0
.end method

.method public static createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 430
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 434
    :try_start_0
    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p2}, Landroidx/renderscript/AllocationThunker;->convertMipmapControl(Landroidx/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object p2

    .line 433
    invoke-static {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 435
    new-instance p2, Landroidx/renderscript/TypeThunker;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 436
    new-instance v0, Landroidx/renderscript/AllocationThunker;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 438
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 11

    move-object v0, p0

    .line 451
    move-object v1, v0

    check-cast v1, Landroidx/renderscript/RenderScriptThunker;

    .line 455
    :try_start_0
    iget-object v2, v1, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    .line 456
    invoke-static/range {p7 .. p7}, Landroidx/renderscript/AllocationThunker;->convertMipmapControl(Landroidx/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p8

    .line 454
    invoke-static/range {v2 .. v10}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 457
    new-instance v2, Landroidx/renderscript/TypeThunker;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 458
    new-instance v3, Landroidx/renderscript/AllocationThunker;

    move/from16 v4, p8

    invoke-direct {v3, p0, v2, v4, v1}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 460
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 413
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 416
    :try_start_0
    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    .line 417
    invoke-static {p2}, Landroidx/renderscript/AllocationThunker;->convertMipmapControl(Landroidx/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object p2

    .line 416
    invoke-static {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 419
    new-instance p2, Landroidx/renderscript/TypeThunker;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 420
    new-instance v0, Landroidx/renderscript/AllocationThunker;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 423
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;ILandroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 470
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 474
    :try_start_0
    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p3}, Landroidx/renderscript/AllocationThunker;->convertMipmapControl(Landroidx/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object p3

    .line 473
    invoke-static {v0, p1, p2, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 475
    new-instance p2, Landroidx/renderscript/TypeThunker;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 476
    new-instance p3, Landroidx/renderscript/AllocationThunker;

    invoke-direct {p3, p0, p2, p4, p1}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 478
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createFromString(Landroidx/renderscript/RenderScript;Ljava/lang/String;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 485
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 489
    :try_start_0
    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    .line 488
    invoke-static {v0, p1, p2}, Landroid/renderscript/Allocation;->createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 490
    new-instance v0, Landroidx/renderscript/TypeThunker;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 491
    new-instance v1, Landroidx/renderscript/AllocationThunker;

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 493
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;
    .locals 2

    .line 499
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 500
    move-object v1, p1

    check-cast v1, Landroidx/renderscript/ElementThunker;

    .line 504
    :try_start_0
    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroidx/renderscript/Element;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object p1

    check-cast p1, Landroid/renderscript/Element;

    .line 503
    invoke-static {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 505
    new-instance p2, Landroidx/renderscript/TypeThunker;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 506
    new-instance v0, Landroidx/renderscript/AllocationThunker;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 508
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 395
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 396
    move-object v1, p1

    check-cast v1, Landroidx/renderscript/TypeThunker;

    .line 400
    :try_start_0
    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    .line 401
    invoke-static {p2}, Landroidx/renderscript/AllocationThunker;->convertMipmapControl(Landroidx/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object p2

    .line 400
    invoke-static {v0, v1, p2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 403
    new-instance v0, Landroidx/renderscript/AllocationThunker;

    invoke-direct {v0, p0, p1, p3, p2}, Landroidx/renderscript/AllocationThunker;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 405
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroidx/renderscript/Allocation;I)V
    .locals 1

    .line 297
    :try_start_0
    check-cast p3, Landroidx/renderscript/AllocationThunker;

    .line 298
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    iget-object p3, p3, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Allocation;->copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 300
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 1

    .line 282
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 284
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 1

    .line 289
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 1

    .line 268
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 270
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 1

    .line 275
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 277
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 1

    .line 253
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 255
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 1

    .line 260
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 262
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 1

    .line 239
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 241
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 1

    .line 246
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 248
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy2DRangeFrom(IIIILandroidx/renderscript/Allocation;II)V
    .locals 8

    .line 336
    :try_start_0
    check-cast p5, Landroidx/renderscript/AllocationThunker;

    .line 337
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    iget-object v5, p5, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 339
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 6

    .line 306
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 308
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 6

    .line 327
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 329
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 6

    .line 320
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 322
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 6

    .line 313
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 315
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 1

    .line 344
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 346
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 183
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFrom(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 187
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 189
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    iget-object p1, p1, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFrom([B)V
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 169
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFrom([F)V
    .locals 1

    .line 174
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFrom([I)V
    .locals 1

    .line 153
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 155
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFrom([Landroidx/renderscript/BaseObj;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/renderscript/BaseObj;

    const/4 v1, 0x0

    .line 112
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 116
    :try_start_0
    iget-object p1, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->copyFrom([Landroid/renderscript/BaseObj;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 113
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public copyFrom([S)V
    .locals 1

    .line 160
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 162
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFromUnchecked([B)V
    .locals 1

    .line 138
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 140
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFromUnchecked([F)V
    .locals 1

    .line 145
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFromUnchecked([I)V
    .locals 1

    .line 124
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyFromUnchecked([S)V
    .locals 1

    .line 131
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 133
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 353
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 355
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyTo([B)V
    .locals 1

    .line 360
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 362
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyTo([F)V
    .locals 1

    .line 381
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 383
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyTo([I)V
    .locals 1

    .line 374
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 376
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public copyTo([S)V
    .locals 1

    .line 367
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo([S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 369
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public generateMipmaps()V
    .locals 1

    .line 231
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->generateMipmaps()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 233
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getBytesSize()I
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getBytesSize()I

    move-result v0
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getElement()Landroidx/renderscript/Element;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroidx/renderscript/AllocationThunker;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Allocation;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroidx/renderscript/Type;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v0}, Landroidx/renderscript/TypeThunker;->find(Landroid/renderscript/Type;)Landroidx/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .line 61
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v0
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public ioReceive()V
    .locals 1

    .line 101
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioReceive()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 103
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public ioSend()V
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioSend()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFromFieldPacker(IILandroidx/renderscript/FieldPacker;)V
    .locals 4

    .line 216
    :try_start_0
    invoke-virtual {p3}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 217
    invoke-virtual {p3}, Landroidx/renderscript/FieldPacker;->getPos()I

    move-result p3

    .line 219
    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-direct {v1, p3}, Landroid/renderscript/FieldPacker;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p3, :cond_0

    .line 223
    iget-object p3, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {p3, p1, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    return-void

    .line 221
    :cond_0
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/renderscript/FieldPacker;->addI8(B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setFromFieldPacker(ILandroidx/renderscript/FieldPacker;)V
    .locals 4

    .line 200
    :try_start_0
    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 201
    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getPos()I

    move-result p2

    .line 203
    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-direct {v1, p2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p2, :cond_0

    .line 207
    iget-object p2, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    return-void

    .line 205
    :cond_0
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/renderscript/FieldPacker;->addI8(B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public syncAll(I)V
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->syncAll(I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
