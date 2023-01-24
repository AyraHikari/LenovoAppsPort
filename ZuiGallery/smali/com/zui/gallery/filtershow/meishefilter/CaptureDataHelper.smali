.class public Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;
.super Ljava/lang/Object;
.source "CaptureDataHelper.java"


# static fields
.field private static final TYPE_ANIMATEDSTICKER:Ljava/lang/String; = "animatedsticker"

.field private static instance:Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createStickerItem(Lcom/meicam/sdk/NvsStreamingContext;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/ItemBean;
    .locals 8

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->uninstallAssetPackage(Ljava/lang/String;I)I

    .line 78
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v0

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-object p1

    .line 84
    :cond_1
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;-><init>()V

    .line 86
    iput-object p3, v1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->nameCH:Ljava/lang/String;

    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->itemid:Ljava/lang/String;

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "png"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "assets:"

    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x8

    .line 93
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-static {p2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->imageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_4

    .line 101
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 97
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_4

    .line 101
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p2, :cond_2

    .line 101
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 104
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    :cond_2
    :goto_2
    throw p1

    .line 108
    :cond_3
    invoke-static {p3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->imageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static getInstance()Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;
    .locals 2

    .line 23
    const-class v0, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;->instance:Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;-><init>()V

    sput-object v1, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;->instance:Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;

    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;->instance:Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;

    return-object v0

    :catchall_0
    move-exception v1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createStickerItem(Lcom/meicam/sdk/NvsStreamingContext;Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/ItemBean;
    .locals 8

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v0

    const/4 v7, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/meicam/sdk/NvsAssetPackageManager;->uninstallAssetPackage(Ljava/lang/String;I)I

    .line 119
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/16 p1, 0xc

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_1
    new-instance p1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;-><init>()V

    const/4 v0, 0x0

    .line 126
    invoke-virtual {v6, v0, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->nameCH:Ljava/lang/String;

    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->itemid:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "png"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iput-object p2, p1, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->imagePath:Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public getStickerDataList(Lcom/meicam/sdk/NvsStreamingContext;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsStreamingContext;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/ItemBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 44
    new-instance v0, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "\u65e0"

    .line 47
    iput-object v2, v0, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->nameCH:Ljava/lang/String;

    const-string v2, ""

    .line 48
    iput-object v2, v0, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->itemid:Ljava/lang/String;

    const/4 v2, 0x1

    .line 49
    iput-boolean v2, v0, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->selected:Z

    .line 50
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "sticker/sticker_none.png"

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-static {v2, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 55
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v0, "assets:/sticker/4DE6FFE2-B7E7-482C-A487-6CC62232448A.animatedsticker"

    const-string v1, "1"

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/CaptureDataHelper;->createStickerItem(Lcom/meicam/sdk/NvsStreamingContext;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/ItemBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :goto_2
    if-eqz v1, :cond_3

    .line 59
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 61
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    :cond_3
    :goto_3
    throw p1
.end method
