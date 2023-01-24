.class public Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterTinyPlanet.java"


# static fields
.field public static final CROPPED_AREA_FULL_PANO_HEIGHT_PIXELS:Ljava/lang/String; = "FullPanoHeightPixels"

.field public static final CROPPED_AREA_FULL_PANO_WIDTH_PIXELS:Ljava/lang/String; = "FullPanoWidthPixels"

.field public static final CROPPED_AREA_IMAGE_HEIGHT_PIXELS:Ljava/lang/String; = "CroppedAreaImageHeightPixels"

.field public static final CROPPED_AREA_IMAGE_WIDTH_PIXELS:Ljava/lang/String; = "CroppedAreaImageWidthPixels"

.field public static final CROPPED_AREA_LEFT:Ljava/lang/String; = "CroppedAreaLeftPixels"

.field public static final CROPPED_AREA_TOP:Ljava/lang/String; = "CroppedAreaTopPixels"

.field public static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 39
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    const-string v0, "TinyPlanet"

    .line 55
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->mName:Ljava/lang/String;

    return-void
.end method

.method private applyXmp(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;
    .locals 10

    :try_start_0
    const-string v0, "CroppedAreaImageWidthPixels"

    .line 113
    invoke-static {p2, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v0

    const-string v1, "CroppedAreaImageHeightPixels"

    .line 115
    invoke-static {p2, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v1

    const-string v2, "FullPanoWidthPixels"

    .line 117
    invoke-static {p2, v2}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v2

    const-string v3, "FullPanoHeightPixels"

    .line 119
    invoke-static {p2, v3}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v3

    const-string v4, "CroppedAreaLeftPixels"

    .line 120
    invoke-static {p2, v4}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v4

    const-string v5, "CroppedAreaTopPixels"

    .line 121
    invoke-static {p2, v5}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p3, p3

    int-to-float v2, v2

    div-float/2addr p3, v2

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    if-nez v6, :cond_1

    mul-float v7, v2, p3

    float-to-int v7, v7

    int-to-float v8, v3

    mul-float/2addr v8, p3

    float-to-int v8, v8

    .line 132
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 136
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr p3, v7

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    add-int/2addr v0, v4

    add-int/2addr v1, p2

    .line 144
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    mul-float/2addr v4, p3

    int-to-float p2, p2

    mul-float/2addr p2, p3

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-direct {v3, v4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 145
    invoke-virtual {v2, p1, v5, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, v6

    nop

    :catch_1
    :cond_2
    :goto_1
    return-object p1
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    .line 154
    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 8

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    int-to-float p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 80
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getXmpObject(Landroid/content/Context;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0, p1, v0, p2}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->applyXmp(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    move-object v1, p1

    const/4 p1, 0x0

    move v5, p3

    :goto_0
    if-nez p1, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object p2

    const/16 p3, 0xa

    invoke-virtual {p2, v5, v5, p3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 100
    div-int/lit8 v5, v5, 0x2

    .line 101
    sget-object p2, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->LOGTAG:Ljava/lang/String;

    const-string p3, "No memory to create Full Tiny Planet create half"

    invoke-static {p2, p3}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 105
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getZoom()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float v6, p2, p3

    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getAngle()F

    move-result v7

    move-object v0, p0

    move-object v4, p1

    .line 104
    invoke-virtual/range {v0 .. v7}, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 66
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;-><init>()V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 61
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    return-void
.end method
