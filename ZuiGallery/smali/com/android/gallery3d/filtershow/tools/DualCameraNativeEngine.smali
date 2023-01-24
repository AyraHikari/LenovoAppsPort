.class public Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;
.super Ljava/lang/Object;
.source "DualCameraNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;,
        Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DdmStatus;
    }
.end annotation


# static fields
.field private static final CALIBRATION_FILENAME:Ljava/lang/String; = "ddm_calib_file.dat"

.field public static final DEFAULT_BRIGHTNESS_INTENSITY:F = 1.0f

.field public static final DEPTH_MAP_EXT:Ljava/lang/String; = "dm"

.field private static final TAG:Ljava/lang/String; = "DualCameraNativeEngine"

.field private static mInstance:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

.field private static mLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DualCameraNativeEngine"

    :try_start_0
    const-string v1, "jni_dualcamera"

    .line 46
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 47
    sput-boolean v1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->mLibLoaded:Z

    const-string/jumbo v1, "successfully loaded dual camera lib"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "failed to load dual camera lib"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->mLibLoaded:Z

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()V
    .locals 1

    .line 74
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->mInstance:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->mInstance:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    :cond_0
    return-void
.end method

.method private native get3DEffectImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method public static getInstance()Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;
    .locals 1

    .line 80
    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->createInstance()V

    .line 81
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->mInstance:Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    return-object v0
.end method


# virtual methods
.method public native applyBlackAndWhite(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyBlackBoard(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyFocus(IIF[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyFocusHexagon(IIF[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyFocusStar(IIF[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyHalo(IIF[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyMotion(IIF[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyNegative(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyPosterize(IIF[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applySketch(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyWhiteBoard(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native applyZoom(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public getCalibFilepath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "ddm_calib_file.dat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native getDepthMap(Landroid/graphics/Bitmap;)Z
.end method

.method public getDepthMap3D(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;
    .locals 11

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 139
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 140
    invoke-direct {p0, p1, v8}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->get3DEffectImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_0
    new-instance p1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;-><init>()V

    .line 144
    iput v6, p1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;->width:I

    .line 145
    iput v7, p1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;->height:I

    mul-int v9, v6, v7

    .line 146
    new-array v0, v9, [C

    iput-object v0, p1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;->pixels:[C

    .line 148
    new-array v10, v9, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v10

    move v3, v6

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v9, v9, -0x1

    :goto_0
    if-ltz v9, :cond_1

    .line 151
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine$DepthMap3D;->pixels:[C

    aget v1, v10, v9

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, v0, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public native getDepthMapSize(Landroid/graphics/Point;)Z
.end method

.method public native getForegroundImg(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native getPrimaryImg(II[IZLandroid/graphics/Bitmap;)Z
.end method

.method public native initDepthMap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;F)Z
.end method

.method public isLibLoaded()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->mLibLoaded:Z

    return v0
.end method

.method public native releaseDepthMap()V
.end method
