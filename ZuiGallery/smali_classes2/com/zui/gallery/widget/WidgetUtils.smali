.class public Lcom/zui/gallery/widget/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "zlq === WidgetUtils"

.field private static calender:Lcom/zui/gallery/widget/LunarCalender;

.field private static mPathsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUriIdMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V
    .locals 1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static clearFilePath(Ljava/lang/String;)V
    .locals 1

    .line 607
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zui/gallery/util/GalleryUtils;->removeSpKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearMap()V
    .locals 2

    .line 922
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 924
    sput-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    .line 926
    :cond_0
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 928
    sput-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    :cond_1
    return-void
.end method

.method private static compressBmpFromBmp(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    .line 656
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 658
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 659
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 660
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 662
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 663
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 665
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 666
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v2, :cond_0

    if-ne v5, v3, :cond_0

    .line 668
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 670
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compressBmpFromBmp: \u524d== \u5bbd == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  \u9ad8 ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "zlq === WidgetUtils"

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v2, p1, 0x2

    mul-int/lit8 v7, p2, 0x2

    .line 680
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int/lit8 v2, p1, 0x3

    mul-int/lit8 v7, p2, 0x3

    :cond_1
    if-le v4, v5, :cond_2

    if-le v4, v2, :cond_2

    .line 687
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr p1, v2

    goto :goto_0

    :cond_2
    if-ge v4, v5, :cond_3

    if-le v5, v7, :cond_3

    .line 689
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p1, v7

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-gtz p1, :cond_4

    move p1, v1

    :cond_4
    const/16 p2, 0xa

    if-lt p1, p2, :cond_5

    const/4 p1, 0x2

    .line 698
    :cond_5
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 700
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 702
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 705
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 707
    invoke-static {p0}, Lcom/zui/gallery/widget/WidgetUtils;->readPictureDegree(Ljava/lang/String;)I

    move-result p0

    .line 709
    invoke-static {p2, p0}, Lcom/zui/gallery/widget/WidgetUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 710
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compressBmpFromBmp: \u540e== \u5bbd == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u91c7\u6837\u7387 == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static decodeFileBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 744
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 746
    invoke-static {p0}, Lcom/zui/gallery/widget/WidgetUtils;->readPictureDegree(Ljava/lang/String;)I

    move-result p0

    .line 748
    invoke-static {v0, p0}, Lcom/zui/gallery/widget/WidgetUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static detectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0

    return-object p0
.end method

.method public static detectWH(II)Z
    .locals 0

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getAppContext()Landroid/content/Context;
    .locals 1

    .line 933
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2

    if-eqz p0, :cond_3

    .line 722
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 727
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0

    .line 729
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 731
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    .line 734
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 603
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/zui/gallery/util/GalleryUtils;->getSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIdUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3

    .line 436
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getImageIdMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    .line 137
    :cond_0
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getImagePathMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    .line 130
    :cond_0
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getMediaUriFromPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    .line 575
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    .line 579
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data= ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 585
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 586
    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 592
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_1
    throw v0

    :catch_0
    move-object p0, v7

    :catch_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-object v7
.end method

.method public static getOrientation(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "window"

    .line 835
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 836
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    .line 838
    invoke-static {p0}, Lcom/zui/gallery/widget/WidgetUtils;->getRot(I)Z

    move-result p0

    return p0
.end method

.method private static getRot(I)Z
    .locals 2

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static getSpBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 615
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zui/gallery/util/GalleryUtils;->getSpBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getWidgetDefault()Ljava/lang/String;
    .locals 1

    .line 912
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gallery_widget_default_zh.png"

    return-object v0

    :cond_0
    const-string v0, "gallery_widget_default_en.png"

    return-object v0
.end method

.method public static greaterThanValue(II)Z
    .locals 0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isChinese()Z
    .locals 2

    .line 903
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en-US"

    .line 905
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCurrentScreen(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "true"

    .line 804
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDayOrMin15(Ljava/lang/String;)Z
    .locals 15

    .line 493
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "min154x2"

    .line 495
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "min154x3"

    .line 496
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "oneDayDifference4x2"

    .line 497
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "oneDayDifference4x3"

    .line 498
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v2, :cond_1

    const-string v9, "nextTime4x2"

    .line 500
    invoke-static {v9, v8}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 501
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    return v7

    .line 505
    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    const-string v9, "nextTime"

    .line 507
    invoke-static {v9, v8}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 508
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    return v7

    .line 512
    :cond_2
    new-instance v9, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    .line 514
    invoke-static {v4, v8}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 516
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    return v7

    .line 520
    :cond_4
    new-instance v9, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_7

    .line 522
    invoke-static {v6, v8}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 524
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    return v7

    .line 528
    :cond_6
    new-instance v9, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 531
    :cond_7
    :goto_0
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 534
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 536
    :try_start_0
    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 537
    invoke-virtual {v9, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 539
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v8, v0

    const-wide/32 v0, 0x5265c00

    .line 540
    div-long v10, v8, v0

    mul-long/2addr v0, v10

    sub-long/2addr v8, v0

    const-wide/32 v0, 0x36ee80

    .line 541
    div-long v12, v8, v0

    mul-long/2addr v0, v12

    sub-long/2addr v8, v0

    const-wide/32 v0, 0xea60

    .line 543
    div-long/2addr v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-nez v2, :cond_a

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "\u5206"

    const-string v2, "\u5c0f\u65f6"

    const-string v3, "\u5929"

    const-string v14, "zlq === WidgetUtils"

    if-eqz v5, :cond_9

    .line 552
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oneDayDifference4x2  \u76f8\u5dee == "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v14, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object p0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->HOURS:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p0, v12, v1

    if-ltz p0, :cond_b

    .line 554
    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    return v0

    :cond_9
    if-eqz p0, :cond_b

    .line 558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oneDayDifference4x3  \u76f8\u5dee == "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v14, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object p0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->HOURS:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p0, v12, v1

    if-ltz p0, :cond_b

    .line 560
    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_a
    :goto_1
    const-wide/16 v1, 0x5

    cmp-long p0, v8, v1

    if-ltz p0, :cond_b

    return v0

    :catch_0
    :cond_b
    return v7
.end method

.method public static isMultiWindowMode()Z
    .locals 3

    const-string v0, "multiWindowMode"

    const-string v1, ""

    .line 873
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "notMultiWindowMode"

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "isMultiWindowMode"

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public static isNavigationBarShowIng()Z
    .locals 1

    .line 885
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 0

    .line 866
    invoke-static {p0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static newCalender()V
    .locals 1

    .line 483
    sget-object v0, Lcom/zui/gallery/widget/WidgetUtils;->calender:Lcom/zui/gallery/widget/LunarCalender;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/zui/gallery/widget/LunarCalender;

    invoke-direct {v0}, Lcom/zui/gallery/widget/LunarCalender;-><init>()V

    sput-object v0, Lcom/zui/gallery/widget/WidgetUtils;->calender:Lcom/zui/gallery/widget/LunarCalender;

    :cond_0
    return-void
.end method

.method private static nextTime(Ljava/lang/String;)V
    .locals 1

    const-string v0, "isWidget4x3"

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object p0

    const-string v0, "oneDayDifference4x3"

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getNextTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "isWidget4x2"

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 428
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object p0

    const-string v0, "oneDayDifference4x2"

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getNextTime(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 1

    .line 473
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xa

    return p0

    .line 476
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static putFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 599
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/zui/gallery/util/GalleryUtils;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putSpBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 612
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/zui/gallery/util/GalleryUtils;->putSpBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static queryConformToTheRules(Ljava/lang/String;)V
    .locals 29

    .line 153
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->queryImage()V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 157
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 158
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getImagePathMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 160
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getImageIdMap()Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 161
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v9

    if-lez v9, :cond_2b

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v6, "zlq === WidgetUtils"

    if-eqz v16, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 172
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 173
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-gtz v21, :cond_0

    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x5

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/zui/gallery/widget/WidgetUtils;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v15

    const/4 v15, 0x0

    .line 179
    invoke-virtual {v3, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/4 v15, 0x5

    .line 181
    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v7

    const/4 v7, 0x7

    .line 183
    invoke-virtual {v3, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const/16 v15, 0x8

    .line 185
    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 193
    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 194
    invoke-static/range {v21 .. v21}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v26

    sub-int v7, v25, v26

    move-object/from16 v25, v14

    const/4 v14, 0x1

    if-ne v7, v14, :cond_1

    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 198
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 199
    invoke-static {v9, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    .line 201
    invoke-static {v10, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueLastYearToday value == "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 205
    :cond_1
    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 206
    invoke-static/range {v21 .. v21}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x1

    if-gt v4, v7, :cond_12

    .line 209
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v14, "lunarCalendar"

    const/4 v7, 0x2

    if-gt v4, v7, :cond_c

    .line 210
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0xf

    if-ge v4, v7, :cond_3

    goto :goto_2

    :cond_2
    const/16 v7, 0xf

    .line 211
    :goto_2
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_a

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0xf

    if-gt v4, v7, :cond_a

    .line 212
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old \u7b26\u5408\u9664\u5915\u6625\u8282\u6761\u4ef6\u7684\u65e5\u671f == "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->newCalender()V

    .line 216
    sget-object v4, Lcom/zui/gallery/widget/WidgetUtils;->calender:Lcom/zui/gallery/widget/LunarCalender;

    invoke-static/range {v21 .. v21}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v27, v2

    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4, v7, v2, v15, v14}, Lcom/zui/gallery/widget/LunarCalender;->getLunarCalendar(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    sget-object v4, Lcom/zui/gallery/widget/WidgetListener$WidgetAction4x2;->SPRING_FESTIVAL:[Ljava/lang/String;

    .line 218
    sget-object v7, Lcom/zui/gallery/widget/WidgetListener$WidgetAction4x2;->LUNAR_NEW_YEARS:[Ljava/lang/String;

    const-string v14, "2023"

    .line 221
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    .line 222
    aget-object v7, v7, v14

    const/16 v19, 0x0

    goto :goto_3

    :cond_4
    const/4 v14, 0x1

    const-string v15, "2022"

    .line 223
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v19, 0x0

    .line 224
    aget-object v7, v7, v19

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    const-string v15, "2021"

    .line 225
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 226
    aget-object v7, v7, v14

    goto :goto_3

    :cond_6
    const-string v7, ""

    .line 230
    :goto_3
    array-length v14, v4

    move/from16 v15, v19

    :goto_4
    if-ge v15, v14, :cond_9

    move-object/from16 v28, v5

    aget-object v5, v4, v15

    .line 231
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 233
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    .line 234
    invoke-static {v11, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    .line 236
    invoke-static {v12, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    goto :goto_5

    :cond_7
    move-object/from16 v18, v4

    .line 238
    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 239
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 241
    invoke-static {v11, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    .line 244
    invoke-static {v12, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v18

    move-object/from16 v5, v28

    goto :goto_4

    :cond_9
    move-object/from16 v28, v5

    goto/16 :goto_8

    :cond_a
    move-object/from16 v27, v2

    move-object/from16 v28, v5

    const/16 v19, 0x0

    .line 248
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x3

    if-gt v2, v4, :cond_b

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old \u7b26\u5408\u5143\u65e6\u6761\u4ef6\u7684\u65e5\u671f == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-static {v11, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 255
    invoke-static {v12, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 257
    :cond_b
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_13

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_13

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old \u7b26\u54082.14\u6761\u4ef6\u7684\u65e5\u671f == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    invoke-static {v11, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 264
    invoke-static {v12, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    goto/16 :goto_8

    :cond_c
    move-object/from16 v27, v2

    move-object/from16 v28, v5

    const/16 v19, 0x0

    .line 269
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_e

    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_d

    goto :goto_6

    .line 298
    :cond_d
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_13

    .line 299
    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x17

    if-lt v2, v4, :cond_13

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x19

    if-gt v2, v4, :cond_13

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old \u7b26\u5408\u5723\u8bde\u8282\u7684\u65e5\u671f == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    invoke-static {v11, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 306
    invoke-static {v12, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 271
    :cond_e
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old \u7b26\u5408\u4e2d\u79cb\u8282\u6761\u4ef6\u7684\u65e5\u671f == "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_f

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_10

    .line 273
    :cond_f
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_13

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xf

    if-gt v2, v4, :cond_13

    .line 274
    :cond_10
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->newCalender()V

    .line 275
    sget-object v2, Lcom/zui/gallery/widget/WidgetUtils;->calender:Lcom/zui/gallery/widget/LunarCalender;

    invoke-static/range {v21 .. v21}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v4, v5, v7, v14}, Lcom/zui/gallery/widget/LunarCalender;->getLunarCalendar(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old \u7b26\u5408\u4e2d\u79cb\u82829\u670801\u65e5 ~ 10\u670815\u65e5\u7684\u65e5\u671f == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  lunar == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "\u516b\u6708\u5341\u4e94"

    .line 277
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 278
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    invoke-static {v11, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 282
    invoke-static {v12, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    .line 285
    :cond_11
    invoke-static/range {v24 .. v24}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_13

    .line 286
    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_13

    invoke-static {v15}, Lcom/zui/gallery/widget/WidgetUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x7

    if-gt v2, v4, :cond_13

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old \u7b26\u5408\u56fd\u5e86\u8282\u7684\u65e5\u671f == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    invoke-static {v11, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->getIdUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 292
    invoke-static {v12, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Landroid/net/Uri;)V

    goto :goto_8

    :cond_12
    :goto_7
    move-object/from16 v27, v2

    move-object/from16 v28, v5

    const/16 v19, 0x0

    :cond_13
    :goto_8
    const-wide/32 v4, 0x5265c00

    sub-long v4, v0, v4

    const-wide/32 v14, 0xa4cb800

    sub-long v14, v0, v14

    .line 313
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v4, v5}, Lcom/zui/gallery/widget/WidgetUtils;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-static {v14, v15}, Lcom/zui/gallery/widget/WidgetUtils;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 318
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 323
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toDays == "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " yesterdays ==  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lastTwoDays1 =="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move/from16 v3, v19

    move-object/from16 v15, v20

    move-object/from16 v7, v23

    move-object/from16 v14, v25

    move-object/from16 v2, v27

    move-object/from16 v5, v28

    const/4 v4, 0x4

    goto/16 :goto_1

    :cond_16
    move-object/from16 v23, v7

    move-object/from16 v25, v14

    const/16 v19, 0x0

    .line 327
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    .line 328
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 332
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    new-array v5, v4, [Ljava/lang/String;

    .line 336
    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1c

    move/from16 v7, v19

    move v8, v7

    move v15, v8

    .line 340
    :goto_9
    array-length v11, v0

    if-ge v15, v11, :cond_1b

    .line 341
    array-length v11, v0

    if-le v7, v11, :cond_17

    goto :goto_b

    :cond_17
    if-lt v8, v4, :cond_18

    goto :goto_c

    :cond_18
    if-ne v7, v15, :cond_1a

    .line 348
    aget-object v4, v0, v7

    aput-object v4, v5, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    if-ne v8, v4, :cond_19

    add-int/lit8 v7, v7, 0x4

    goto :goto_a

    :cond_19
    add-int/lit8 v7, v7, 0x5

    :goto_a
    move v15, v7

    :cond_1a
    :goto_b
    const/16 v4, 0xa

    goto :goto_9

    :cond_1b
    :goto_c
    move/from16 v15, v19

    const/16 v0, 0xa

    :goto_d
    if-ge v15, v0, :cond_1d

    .line 359
    aget-object v4, v5, v15

    .line 360
    invoke-static {v3, v4}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_1c
    move v0, v4

    .line 365
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v0, [Ljava/lang/String;

    .line 367
    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_23

    move/from16 v7, v19

    move v8, v7

    move v15, v8

    .line 371
    :goto_e
    array-length v11, v2

    if-ge v15, v11, :cond_22

    .line 372
    array-length v11, v2

    if-le v7, v11, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    goto :goto_10

    :cond_1f
    if-lt v8, v0, :cond_20

    goto :goto_11

    :cond_20
    if-ne v7, v15, :cond_1e

    .line 379
    aget-object v0, v2, v7

    aput-object v0, v5, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x1

    if-ne v8, v0, :cond_21

    add-int/lit8 v7, v7, 0x4

    goto :goto_f

    :cond_21
    add-int/lit8 v7, v7, 0x5

    :goto_f
    move v15, v7

    :goto_10
    const/16 v0, 0xa

    goto :goto_e

    :cond_22
    :goto_11
    const/4 v0, 0x1

    move/from16 v15, v19

    :goto_12
    const/16 v2, 0xa

    if-ge v15, v2, :cond_24

    .line 390
    aget-object v2, v5, v15

    .line 391
    invoke-static {v4, v2}, Lcom/zui/gallery/widget/WidgetUtils;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :cond_23
    const/4 v0, 0x1

    .line 396
    :cond_24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 398
    array-length v5, v1

    const/16 v7, 0xa

    if-gt v5, v7, :cond_25

    array-length v1, v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_26

    move v15, v0

    goto :goto_13

    :cond_25
    const/4 v5, 0x2

    :cond_26
    move/from16 v15, v19

    .line 399
    :goto_13
    array-length v1, v2

    if-gt v1, v7, :cond_27

    array-length v1, v2

    if-lt v1, v5, :cond_27

    goto :goto_14

    :cond_27
    move/from16 v0, v19

    :goto_14
    if-nez v15, :cond_28

    if-nez v0, :cond_28

    .line 403
    invoke-static/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetUtils;->nextTime(Ljava/lang/String;)V

    :cond_28
    if-eqz v15, :cond_29

    if-eqz v0, :cond_29

    move-object/from16 v0, p0

    .line 406
    invoke-static {v0, v4, v3}, Lcom/zui/gallery/widget/WidgetUtils;->setData(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    goto :goto_15

    :cond_29
    move-object/from16 v0, p0

    goto :goto_15

    :cond_2a
    move-object/from16 v0, p0

    .line 409
    invoke-static/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetUtils;->nextTime(Ljava/lang/String;)V

    .line 411
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataPath.string == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n  dataUris.string = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v23, v7

    .line 413
    :goto_16
    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_2c

    .line 414
    invoke-static/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetUtils;->nextTime(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private static queryImage()V
    .locals 8

    const-string v0, "zlq === WidgetUtils"

    .line 74
    sget-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    .line 79
    :cond_0
    sget-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    :cond_1
    const-string v2, "_id"

    const-string v3, "title"

    const-string v4, "datetaken"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "_size"

    .line 84
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 90
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 91
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android:query-arg-sql-selection"

    const-string v5, "_size > 0 "

    .line 92
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android:query-arg-sql-sort-order"

    const-string v5, "date_modified DESC, title DESC"

    .line 93
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    .line 97
    :try_start_0
    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_5

    .line 98
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    .line 99
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    .line 100
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "DCIM/Camera"

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 107
    :cond_3
    sget-object v4, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 110
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DATA == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 111
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 113
    sget-object v6, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_6

    .line 119
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_6
    throw v0

    :catch_0
    if-eqz v5, :cond_7

    .line 119
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPathsMap size == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/gallery/widget/WidgetUtils;->mPathsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriIdMap size == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/gallery/widget/WidgetUtils;->mUriIdMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readPictureDegree(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 779
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 780
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    :goto_0
    move v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 793
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static reallyPad()Z
    .locals 4

    .line 815
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 818
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 820
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 823
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 762
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 763
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 766
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 767
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 768
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static setData(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "isWidget4x3"

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->automaticSetData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "isWidget4x2"

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 421
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->automaticSetData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static timeStamp2Date(J)Ljava/lang/String;
    .locals 2

    .line 464
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 465
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
