.class public Landroidx/renderscript/Allocation;
.super Landroidx/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config:[I = null

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroidx/renderscript/Allocation;

.field mBitmap:Landroid/graphics/Bitmap;

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mReadAllowed:Z

.field mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroidx/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config()[I
    .locals 3

    .line 59
    sget-object v0, Landroidx/renderscript/Allocation;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Landroidx/renderscript/Allocation;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1194
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroidx/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    .line 1196
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-void
.end method

.method constructor <init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V
    .locals 1

    .line 222
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/BaseObj;-><init>(ILandroidx/renderscript/RenderScript;)V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Landroidx/renderscript/Allocation;->mReadAllowed:Z

    .line 71
    iput-boolean p1, p0, Landroidx/renderscript/Allocation;->mWriteAllowed:Z

    .line 75
    sget-object p2, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_X:Landroidx/renderscript/Type$CubemapFace;

    iput-object p2, p0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    and-int/lit16 p2, p4, -0xe4

    if-nez p2, :cond_4

    and-int/lit8 p2, p4, 0x20

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 232
    iput-boolean v0, p0, Landroidx/renderscript/Allocation;->mWriteAllowed:Z

    and-int/lit8 p2, p4, -0x24

    if-nez p2, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Invalid usage combination."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_1
    :goto_0
    iput-object p3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 242
    iput p4, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 243
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getCount()I

    move-result p2

    iget-object p4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {p4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result p4

    mul-int/2addr p2, p4

    iput p2, p0, Landroidx/renderscript/Allocation;->mSize:I

    if-eqz p3, :cond_2

    .line 246
    invoke-direct {p0, p3}, Landroidx/renderscript/Allocation;->updateCacheInfo(Landroidx/renderscript/Type;)V

    .line 248
    :cond_2
    sget-boolean p2, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z

    if-eqz p2, :cond_3

    .line 250
    :try_start_0
    sget-object p2, Landroidx/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object p3, Landroidx/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    new-array p1, p1, [Ljava/lang/Object;

    iget p4, p0, Landroidx/renderscript/Allocation;->mSize:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, v0

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "RenderScript_jni"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance p2, Landroidx/renderscript/RSRuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void

    .line 228
    :cond_4
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Unknown usage specified."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1461
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 5

    .line 1415
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1418
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1420
    rem-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_5

    .line 1423
    div-int/lit8 v1, v1, 0x6

    if-ne v1, v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 1431
    invoke-static {p0, p1}, Landroidx/renderscript/Allocation;->elementFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Element;

    move-result-object v1

    .line 1432
    new-instance v4, Landroidx/renderscript/Type$Builder;

    invoke-direct {v4, p0, v1}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 1433
    invoke-virtual {v4, v0}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 1434
    invoke-virtual {v4, v0}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    .line 1435
    invoke-virtual {v4, v3}, Landroidx/renderscript/Type$Builder;->setFaces(Z)Landroidx/renderscript/Type$Builder;

    .line 1436
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroidx/renderscript/Allocation$MipmapControl;

    if-ne p2, v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Landroidx/renderscript/Type$Builder;->setMipmaps(Z)Landroidx/renderscript/Type$Builder;

    .line 1437
    invoke-virtual {v4}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    move-result-object v0

    .line 1439
    invoke-virtual {v0, p0}, Landroidx/renderscript/Type;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v2

    iget p2, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v2, p2, p1, p3}, Landroidx/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I

    move-result p2

    if-eqz p2, :cond_2

    .line 1443
    new-instance p1, Landroidx/renderscript/Allocation;

    invoke-direct {p1, p2, p0, v0, p3}, Landroidx/renderscript/Allocation;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object p1

    .line 1441
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Load failed for bitmap "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " element "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1428
    :cond_3
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Only power of 2 cube faces supported"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1424
    :cond_4
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Only square cube map faces supported"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1421
    :cond_5
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Cubemap height must be multiple of 6"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 9

    .line 1560
    sget-object v7, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1559
    invoke-static/range {v0 .. v8}, Landroidx/renderscript/Allocation;->createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1393
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 4

    .line 1338
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 1339
    check-cast p0, Landroidx/renderscript/RenderScriptThunker;

    .line 1340
    invoke-static {p0, p1, p2, p3}, Landroidx/renderscript/AllocationThunker;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1345
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_2

    and-int/lit16 v0, p3, 0x80

    if-nez v0, :cond_1

    .line 1349
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1350
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1351
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1352
    invoke-static {p0, v0, p2, p3}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 1347
    :cond_1
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1355
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/renderscript/Allocation;->typeFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;)Landroidx/renderscript/Type;

    move-result-object v0

    .line 1358
    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const-string v2, "Load failed."

    if-ne p2, v1, :cond_4

    .line 1359
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v1

    invoke-static {p0}, Landroidx/renderscript/Element;->RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x83

    if-ne p3, v1, :cond_4

    .line 1361
    invoke-virtual {v0, p0}, Landroidx/renderscript/Type;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    iget p2, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v1, p2, p1, p3}, Landroidx/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I

    move-result p2

    if-eqz p2, :cond_3

    .line 1367
    new-instance v1, Landroidx/renderscript/Allocation;

    invoke-direct {v1, p2, p0, v0, p3}, Landroidx/renderscript/Allocation;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    .line 1368
    invoke-direct {v1, p1}, Landroidx/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 1363
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1373
    :cond_4
    invoke-virtual {v0, p0}, Landroidx/renderscript/Type;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    iget p2, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v1, p2, p1, p3}, Landroidx/renderscript/RenderScript;->nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I

    move-result p1

    if-eqz p1, :cond_5

    .line 1377
    new-instance p2, Landroidx/renderscript/Allocation;

    invoke-direct {p2, p1, p0, v0, p3}, Landroidx/renderscript/Allocation;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object p2

    .line 1375
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1613
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    .line 1612
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/renderscript/Allocation;->createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;ILandroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;ILandroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 1585
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    and-int/lit16 v0, p4, 0xe0

    if-nez v0, :cond_0

    .line 1589
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1590
    invoke-static {p0, p1, p3, p4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    .line 1591
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    .line 1587
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported usage specified."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromString(Landroidx/renderscript/RenderScript;Ljava/lang/String;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1629
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    :try_start_0
    const-string v0, "UTF-8"

    .line 1632
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1633
    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    array-length v1, p1

    invoke-static {p0, v0, v1, p2}, Landroidx/renderscript/Allocation;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;

    move-result-object p0

    .line 1634
    invoke-virtual {p0, p1}, Landroidx/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1638
    :catch_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Could not convert string to utf-8."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;I)Landroidx/renderscript/Allocation;
    .locals 1

    const/4 v0, 0x1

    .line 1292
    invoke-static {p0, p1, p2, v0}, Landroidx/renderscript/Allocation;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1266
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 1267
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 1268
    invoke-static {p0, p1, p2, p3}, Landroidx/renderscript/AllocationThunker;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 1270
    :cond_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1271
    new-instance v0, Landroidx/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 1272
    invoke-virtual {v0, p2}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 1273
    invoke-virtual {v0}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    move-result-object p1

    .line 1275
    invoke-virtual {p1, p0}, Landroidx/renderscript/Type;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p2

    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    iget v0, v0, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p3, v1}, Landroidx/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1279
    new-instance v0, Landroidx/renderscript/Allocation;

    invoke-direct {v0, p2, p0, p1, p3}, Landroidx/renderscript/Allocation;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object v0

    .line 1277
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Allocation creation failed."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1250
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 1237
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1210
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 1211
    check-cast p0, Landroidx/renderscript/RenderScriptThunker;

    .line 1212
    invoke-static {p0, p1, p2, p3}, Landroidx/renderscript/AllocationThunker;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 1214
    :cond_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1215
    invoke-virtual {p1, p0}, Landroidx/renderscript/Type;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1218
    invoke-virtual {p1, p0}, Landroidx/renderscript/Type;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    iget p2, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1222
    new-instance v0, Landroidx/renderscript/Allocation;

    invoke-direct {v0, p2, p0, p1, p3}, Landroidx/renderscript/Allocation;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object v0

    .line 1220
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Allocation creation failed."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1216
    :cond_2
    new-instance p0, Landroidx/renderscript/RSInvalidStateException;

    const-string p1, "Bad Type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private data1DChecks(IIII)V
    .locals 2

    .line 688
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    if-ltz p1, :cond_3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    add-int v0, p1, p2

    .line 695
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    if-gt v0, v1, :cond_1

    if-lt p3, p4, :cond_0

    return-void

    .line 700
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Array too small for allocation type."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :cond_1
    new-instance p3, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Overflow, Available count "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    .line 697
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " at offset "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 696
    invoke-direct {p3, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 693
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Count must be >= 1."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_3
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset must be >= 0."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static elementFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Element;
    .locals 2

    .line 1296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 1297
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    .line 1298
    invoke-static {p0}, Landroidx/renderscript/Element;->A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 1300
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1

    .line 1301
    invoke-static {p0}, Landroidx/renderscript/Element;->RGBA_4444(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 1303
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_2

    .line 1304
    invoke-static {p0}, Landroidx/renderscript/Element;->RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 1306
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_3

    .line 1307
    invoke-static {p0}, Landroidx/renderscript/Element;->RGB_565(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 1309
    :cond_3
    new-instance p0, Landroidx/renderscript/RSInvalidStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad bitmap type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getIDSafe()I
    .locals 2

    .line 163
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mAdaptedAllocation:Landroidx/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    return v0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 218
    iput-object p1, p0, Landroidx/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static typeFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;)Landroidx/renderscript/Type;
    .locals 2

    .line 1314
    invoke-static {p0, p1}, Landroidx/renderscript/Allocation;->elementFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Element;

    move-result-object v0

    .line 1315
    new-instance v1, Landroidx/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 1316
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 1317
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    .line 1318
    sget-object p0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroidx/renderscript/Allocation$MipmapControl;

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Landroidx/renderscript/Type$Builder;->setMipmaps(Z)Landroidx/renderscript/Type$Builder;

    .line 1319
    invoke-virtual {v1}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    move-result-object p0

    return-object p0
.end method

.method private updateCacheInfo(Landroidx/renderscript/Type;)V
    .locals 2

    .line 205
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    .line 206
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    .line 207
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getZ()I

    move-result p1

    iput p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    .line 208
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iput p1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 209
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    mul-int/2addr p1, v0

    .line 210
    iput p1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 212
    :cond_0
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-le p1, v1, :cond_1

    .line 213
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 1

    .line 844
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mAdaptedAllocation:Landroidx/renderscript/Allocation;

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p4, :cond_1

    if-ltz p3, :cond_1

    add-int/2addr p1, p3

    .line 854
    iget p3, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    if-gt p1, p3, :cond_0

    add-int/2addr p2, p4

    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-gt p2, p1, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Updated region larger than allocation."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 852
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Height or width cannot be negative."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset cannot be negative."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private validate3DRange(IIIIII)V
    .locals 1

    .line 995
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mAdaptedAllocation:Landroidx/renderscript/Allocation;

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-ltz p5, :cond_1

    if-ltz p4, :cond_1

    if-ltz p6, :cond_1

    add-int/2addr p1, p4

    .line 1005
    iget p4, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    if-gt p1, p4, :cond_0

    add-int/2addr p2, p5

    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-gt p2, p1, :cond_0

    add-int/2addr p3, p6

    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-gt p3, p1, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Updated region larger than allocation."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1003
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Height or width cannot be negative."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1000
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset cannot be negative."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 402
    invoke-static {}, Landroidx/renderscript/Allocation;->$SWITCH_TABLE$android$graphics$Bitmap$Config()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, " bytes, passed bitmap was "

    const-string v3, " of "

    const-string v4, ", type "

    const-string v5, "Allocation kind is "

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_0

    goto/16 :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    sget-object v6, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    if-ne v0, v6, :cond_1

    .line 424
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 425
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-ne v0, v1, :cond_3

    .line 414
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    if-ne v0, v7, :cond_3

    goto/16 :goto_0

    .line 415
    :cond_3
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_4
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    sget-object v6, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-ne v0, v6, :cond_5

    .line 434
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 435
    :cond_5
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_6
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    if-ne v0, v1, :cond_7

    :goto_0
    return-void

    .line 405
    :cond_7
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_8
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Bitmap has an unsupported format for this operation"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 447
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    .line 448
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateIsFloat32()V
    .locals 3

    .line 294
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "32 bit float source does not match allocation type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    .line 276
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt32()V
    .locals 3

    .line 267
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt8()V
    .locals 3

    .line 285
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsObject()V
    .locals 3

    .line 302
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_ELEMENT:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_TYPE:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_SAMPLER:Landroidx/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_SCRIPT:Landroidx/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object source does not match allocation type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroidx/renderscript/Allocation;I)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    .line 837
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    .line 838
    iget v5, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v6, v4, Landroidx/renderscript/Type$CubemapFace;->mID:I

    .line 839
    iget-object v4, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v4}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v9

    .line 840
    iget v12, v1, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v13, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v1, v2

    move v2, v3

    move v3, p1

    move/from16 v7, p2

    move/from16 v10, p4

    .line 837
    invoke-virtual/range {v1 .. v13}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V

    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 0

    .line 809
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 810
    invoke-virtual {p0, p1, p2, p3}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 0

    .line 823
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 824
    invoke-virtual {p0, p1, p2, p3}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 0

    .line 781
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 782
    invoke-virtual {p0, p1, p2, p3}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 0

    .line 795
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 796
    invoke-virtual {p0, p1, p2, p3}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 8

    .line 753
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v7, v0, p2

    .line 754
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/renderscript/Allocation;->data1DChecks(IIII)V

    .line 755
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v4, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nAllocationData1D(IIII[BI)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 8

    .line 766
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v7, v0, p2

    .line 767
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/renderscript/Allocation;->data1DChecks(IIII)V

    .line 768
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v4, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nAllocationData1D(IIII[FI)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 8

    .line 727
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v7, v0, p2

    .line 728
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/renderscript/Allocation;->data1DChecks(IIII)V

    .line 729
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v4, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nAllocationData1D(IIII[II)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 8

    .line 740
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v7, v0, p2

    .line 741
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/renderscript/Allocation;->data1DChecks(IIII)V

    .line 742
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v4, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nAllocationData1D(IIII[SI)V

    return-void
.end method

.method public copy2DRangeFrom(IIIILandroidx/renderscript/Allocation;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 963
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->validate()V

    .line 964
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 965
    iget-object v3, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v4

    .line 966
    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v8, v2, Landroidx/renderscript/Type$CubemapFace;->mID:I

    .line 967
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v11

    .line 968
    iget v14, v1, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v15, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    .line 965
    invoke-virtual/range {v3 .. v15}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 0

    .line 900
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 901
    invoke-virtual/range {p0 .. p5}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 0

    .line 945
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 946
    invoke-virtual/range {p0 .. p5}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 0

    .line 930
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 931
    invoke-virtual/range {p0 .. p5}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 0

    .line 915
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 916
    invoke-virtual/range {p0 .. p5}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V

    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 9

    .line 981
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 982
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 984
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 985
    invoke-virtual {v1, p3, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 986
    invoke-virtual {p0, p1, p2, v0}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    return-void

    .line 989
    :cond_0
    invoke-direct {p0, p3}, Landroidx/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 990
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 991
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v6, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v7, v0, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move v4, p1

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[B)V
    .locals 12

    move-object v0, p0

    .line 861
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 862
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 863
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v6, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v7, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v1, p5

    .line 864
    array-length v11, v1

    move v4, p1

    move v5, p2

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 863
    invoke-virtual/range {v2 .. v11}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIIII[BI)V

    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[F)V
    .locals 12

    move-object v0, p0

    .line 882
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 883
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 884
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v6, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v7, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v1, p5

    .line 885
    array-length v4, v1

    mul-int/lit8 v11, v4, 0x4

    move v4, p1

    move v5, p2

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 884
    invoke-virtual/range {v2 .. v11}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIIII[FI)V

    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[I)V
    .locals 12

    move-object v0, p0

    .line 875
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 876
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 877
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v6, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v7, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v1, p5

    .line 878
    array-length v4, v1

    mul-int/lit8 v11, v4, 0x4

    move v4, p1

    move v5, p2

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 877
    invoke-virtual/range {v2 .. v11}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIIII[II)V

    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[S)V
    .locals 12

    move-object v0, p0

    .line 868
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 869
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 870
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v6, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v7, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v1, p5

    .line 871
    array-length v4, v1

    mul-int/lit8 v11, v4, 0x2

    move v4, p1

    move v5, p2

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 870
    invoke-virtual/range {v2 .. v11}, Landroidx/renderscript/RenderScript;->nAllocationData2D(IIIIIII[SI)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIIILandroidx/renderscript/Allocation;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 1119
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1120
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1121
    iget-object v3, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v4

    iget v8, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    .line 1122
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v12

    .line 1123
    iget v1, v1, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, v1

    .line 1121
    invoke-virtual/range {v3 .. v16}, Landroidx/renderscript/RenderScript;->nAllocationData3D(IIIIIIIIIIIII)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIII[B)V
    .locals 0

    .line 1070
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 1071
    invoke-virtual/range {p0 .. p7}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIII[F)V
    .locals 0

    .line 1097
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 1098
    invoke-virtual/range {p0 .. p7}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIII[I)V
    .locals 0

    .line 1088
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 1089
    invoke-virtual/range {p0 .. p7}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIII[S)V
    .locals 0

    .line 1079
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 1080
    invoke-virtual/range {p0 .. p7}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V

    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[B)V
    .locals 13

    move-object v0, p0

    .line 1016
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1017
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1018
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v1, p7

    .line 1019
    array-length v12, v1

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 1018
    invoke-virtual/range {v2 .. v12}, Landroidx/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[BI)V

    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[F)V
    .locals 13

    move-object v0, p0

    .line 1049
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1050
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1051
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v1, p7

    .line 1052
    array-length v4, v1

    mul-int/lit8 v12, v4, 0x4

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 1051
    invoke-virtual/range {v2 .. v12}, Landroidx/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[FI)V

    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[I)V
    .locals 13

    move-object v0, p0

    .line 1038
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1039
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1040
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v1, p7

    .line 1041
    array-length v4, v1

    mul-int/lit8 v12, v4, 0x4

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 1040
    invoke-virtual/range {v2 .. v12}, Landroidx/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[II)V

    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[S)V
    .locals 13

    move-object v0, p0

    .line 1027
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1028
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1029
    iget-object v2, v0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v3

    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v1, p7

    .line 1030
    array-length v4, v1

    mul-int/lit8 v12, v4, 0x2

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 1029
    invoke-virtual/range {v2 .. v12}, Landroidx/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[SI)V

    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 607
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 611
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 612
    invoke-virtual {p0, v0}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    return-void

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 616
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 617
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public copyFrom(Landroidx/renderscript/Allocation;)V
    .locals 9

    .line 627
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 628
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 631
    iget v4, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IIIILandroidx/renderscript/Allocation;II)V

    return-void

    .line 629
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Types of allocations must match."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([B)V
    .locals 14

    .line 565
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 566
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 567
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFrom(IIIIII[B)V

    goto :goto_0

    .line 568
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 569
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 571
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFrom(II[B)V

    :goto_0
    return-void
.end method

.method public copyFrom([F)V
    .locals 14

    .line 583
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 584
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 585
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFrom(IIIIII[F)V

    goto :goto_0

    .line 586
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 587
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 589
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFrom(II[F)V

    :goto_0
    return-void
.end method

.method public copyFrom([I)V
    .locals 14

    .line 529
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 530
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 531
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFrom(IIIIII[I)V

    goto :goto_0

    .line 532
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 533
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 535
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFrom(II[I)V

    :goto_0
    return-void
.end method

.method public copyFrom([Landroidx/renderscript/BaseObj;)V
    .locals 5

    .line 384
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 385
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsObject()V

    .line 386
    array-length v0, p1

    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    if-ne v0, v1, :cond_1

    .line 390
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 391
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    .line 394
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, p1, v0}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    return-void

    .line 392
    :cond_0
    aget-object v3, p1, v2

    iget-object v4, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array size mismatch, allocation sizeX = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    iget v2, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyFrom([S)V
    .locals 14

    .line 547
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 548
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 549
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFrom(IIIIII[S)V

    goto :goto_0

    .line 550
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 551
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 553
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFrom(II[S)V

    :goto_0
    return-void
.end method

.method public copyFromUnchecked([B)V
    .locals 14

    .line 494
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 495
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 496
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V

    goto :goto_0

    .line 497
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 498
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 500
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    :goto_0
    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 14

    .line 511
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 512
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 513
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V

    goto :goto_0

    .line 514
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 515
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 517
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    :goto_0
    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 14

    .line 460
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 461
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 462
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V

    goto :goto_0

    .line 463
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 464
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 466
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    :goto_0
    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 14

    .line 477
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 478
    iget v7, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 479
    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V

    goto :goto_0

    .line 480
    :cond_0
    iget v12, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v12, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 481
    iget v11, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v8, p0

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 483
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    :goto_0
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1134
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1135
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1136
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1137
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public copyTo([B)V
    .locals 2

    .line 1148
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 1149
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1150
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationRead(I[B)V

    return-void
.end method

.method public copyTo([F)V
    .locals 2

    .line 1187
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 1188
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1189
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationRead(I[F)V

    return-void
.end method

.method public copyTo([I)V
    .locals 2

    .line 1174
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 1175
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1176
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationRead(I[I)V

    return-void
.end method

.method public copyTo([S)V
    .locals 2

    .line 1161
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 1162
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 1163
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationRead(I[S)V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 259
    sget-boolean v0, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Landroidx/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroidx/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroidx/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    invoke-super {p0}, Landroidx/renderscript/BaseObj;->finalize()V

    return-void
.end method

.method public generateMipmaps()V
    .locals 2

    .line 715
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/RenderScript;->nAllocationGenerateMipmaps(I)V

    return-void
.end method

.method public getBytesSize()I
    .locals 4

    .line 198
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget v0, v0, Landroidx/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getElement()Landroidx/renderscript/Element;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroidx/renderscript/Type;
    .locals 1

    .line 320
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .line 188
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 2

    .line 370
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 375
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/RenderScript;->nAllocationIoReceive(I)V

    return-void

    .line 371
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ioSend()V
    .locals 2

    .line 348
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 353
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/RenderScript;->nAllocationIoSend(I)V

    return-void

    .line 349
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ioSendOutput()V
    .locals 0

    .line 361
    invoke-virtual {p0}, Landroidx/renderscript/Allocation;->ioSend()V

    return-void
.end method

.method public setFromFieldPacker(IILandroidx/renderscript/FieldPacker;)V
    .locals 8

    .line 665
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 666
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    array-length v0, v0

    if-ge p2, v0, :cond_2

    if-ltz p1, :cond_1

    .line 673
    invoke-virtual {p3}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v6

    .line 674
    invoke-virtual {p3}, Landroidx/renderscript/FieldPacker;->getPos()I

    move-result v7

    .line 675
    iget-object p3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object p3, p3, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object p3, p3, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result p3

    .line 676
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget v0, v0, p2

    mul-int/2addr p3, v0

    if-ne v7, p3, :cond_0

    .line 683
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v4, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nAllocationElementData1D(IIII[BI)V

    return-void

    .line 679
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Field packer sizelength "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not match component size "

    .line 680
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 679
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 670
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset must be >= 0."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 667
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Component_number "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " out of range."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFromFieldPacker(ILandroidx/renderscript/FieldPacker;)V
    .locals 4

    .line 643
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 644
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 645
    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 646
    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getPos()I

    move-result p2

    .line 648
    div-int v2, p2, v0

    mul-int v3, v0, v2

    if-ne v3, p2, :cond_0

    .line 653
    invoke-virtual {p0, p1, v2, v1}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    return-void

    .line 650
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field packer length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not divisible by element size "

    .line 651
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 650
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public syncAll(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Source must be exactly one usage type."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 337
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nAllocationSyncAll(II)V

    return-void
.end method
