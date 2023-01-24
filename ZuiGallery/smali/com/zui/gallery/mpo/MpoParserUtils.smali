.class public final Lcom/zui/gallery/mpo/MpoParserUtils;
.super Ljava/lang/Object;
.source "MpoParserUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoParserUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMpoParser(Landroid/content/Context;Landroid/net/Uri;)Lcom/zui/gallery/mpo/MpoParser;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/zui/gallery/mpo/MpoParser;->parse(Landroid/content/Context;Landroid/net/Uri;)Lcom/zui/gallery/mpo/MpoParser;

    move-result-object p0

    return-object p0
.end method

.method public static initDepMap(Landroid/content/Context;Lcom/zui/gallery/mpo/MpoParser;Landroid/net/Uri;)Z
    .locals 9

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lcom/zui/gallery/mpo/MpoParser;->readImgData(Z)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1}, Lcom/zui/gallery/mpo/MpoParser;->readImgData(Z)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 35
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    invoke-static {p0, p2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 44
    array-length p2, p1

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v1

    .line 52
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getInstance()Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    move-result-object v3

    .line 54
    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getInstance()Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getCalibFilepath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, v0

    move-object v5, p1

    .line 52
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->initDepthMap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;F)Z

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 62
    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getInstance()Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getDepthMapSize(Landroid/graphics/Point;)Z

    move-result p1

    const-string p2, "MpoParserUtils"

    if-eqz p1, :cond_4

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get depthmapsize returned true. size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget p1, p0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/graphics/Point;->y:I

    if-nez p1, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 71
    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getInstance()Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getDepthMap(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get depthmap return "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ddm size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "get depthmapsize returned false"

    .line 81
    invoke-static {p2, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v1
.end method

.method public static isDepthImage(Lcom/zui/gallery/mpo/MpoParser;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/mpo/MpoParser;->isDepthImage()Z

    move-result p0

    :goto_0
    return p0
.end method
