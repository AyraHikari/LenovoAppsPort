.class public Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;
.super Ljava/lang/Object;
.source "AssetFxUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleFilterInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 347
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 350
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 353
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, ","

    .line 357
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 358
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto :goto_0

    .line 361
    :cond_2
    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;-><init>()V

    const/4 v2, 0x0

    .line 362
    aget-object v2, p0, v2

    iput-object v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    const/4 v2, 0x1

    .line 363
    aget-object v3, p0, v2

    iput-object v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    const/4 v3, 0x2

    .line 364
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 365
    iput-boolean v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    .line 366
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getBundleFilterInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 380
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 384
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 385
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 388
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_8

    const-string v2, ","

    .line 389
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 390
    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    .line 393
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 394
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    if-nez v3, :cond_4

    goto :goto_2

    .line 398
    :cond_4
    iget-boolean v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    if-nez v4, :cond_5

    goto :goto_2

    .line 401
    :cond_5
    iget-object v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    .line 402
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 405
    :cond_6
    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 406
    aget-object v1, p0, v1

    iput-object v1, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 407
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    goto :goto_0

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_8
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 415
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getCaptionData(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 280
    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->isZh(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u65e0"

    .line 281
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "None"

    .line 283
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 285
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_1

    .line 312
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02000a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "moviefilter/info_Zh.txt"

    goto :goto_1

    .line 308
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020005

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "delicacyfilter/info_Zh.txt"

    goto :goto_1

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "portraitfilter/info_Zh.txt"

    goto :goto_1

    .line 300
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020002

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "filter/info_Zh.txt"

    .line 316
    :goto_1
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getBundleFilterInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 319
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 320
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 321
    new-instance v3, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 322
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:///android_asset/filter/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    iput-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 332
    :cond_1
    sget v4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_PACKAGE:I

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterMode(I)V

    .line 333
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 334
    iget-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setPackageId(Ljava/lang/String;)V

    .line 335
    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setImageUrl(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFaceUDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    const-string v2, ""

    .line 28
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setPackageId(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ".png"

    const-string v2, "file:///android_asset/arface/"

    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 34
    new-instance v4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 35
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    iput-object v5, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 44
    iget-object v5, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_0
    iget-object v5, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 48
    :goto_1
    sget v5, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_PACKAGE:I

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterMode(I)V

    .line 49
    iget-object v5, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setPackageId(Ljava/lang/String;)V

    .line 50
    iget-object v5, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setImageUrl(Ljava/lang/String;)V

    .line 51
    iget v3, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    invoke-virtual {v4, v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setCategoryId(I)V

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 58
    new-instance v3, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    iput-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 69
    :cond_2
    sget v4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_BUNDLE:I

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterMode(I)V

    .line 70
    iget-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 71
    iget-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setPackageId(Ljava/lang/String;)V

    .line 72
    iget-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setImageUrl(Ljava/lang/String;)V

    .line 73
    iget p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    invoke-virtual {v3, p1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setCategoryId(I)V

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static getFilterData(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 205
    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->isZh(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u65e0"

    .line 206
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "None"

    .line 208
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 210
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_1

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02000e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p1, "videofilter/info_Zh.txt"

    goto :goto_1

    .line 237
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02000a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "moviefilter/info_Zh.txt"

    goto :goto_1

    .line 233
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020005

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "delicacyfilter/info_Zh.txt"

    goto :goto_1

    .line 229
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "portraitfilter/info_Zh.txt"

    goto :goto_1

    .line 225
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020002

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string p1, "filter/info_Zh.txt"

    .line 245
    :goto_1
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getBundleFilterInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 248
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 249
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 250
    new-instance v3, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 251
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:///android_asset/filter/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    iput-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 261
    :cond_1
    sget v4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_PACKAGE:I

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterMode(I)V

    .line 262
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 263
    iget-object v4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setPackageId(Ljava/lang/String;)V

    .line 264
    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setImageUrl(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilterData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ZZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance p4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {p4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 125
    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->isZh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u65e0"

    .line 126
    invoke-virtual {p4, v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 128
    invoke-virtual {p4, v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 132
    :goto_0
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->isZh(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "filter/info_Zh.txt"

    .line 136
    invoke-static {p0, p1, p4}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getBundleFilterInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string p4, "filter/info.txt"

    .line 139
    invoke-static {p0, p1, p4}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getBundleFilterInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 144
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 148
    new-instance p4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {p4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/filter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iput-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 159
    :cond_2
    sget v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_PACKAGE:I

    invoke-virtual {p4, v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterMode(I)V

    .line 160
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 161
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setPackageId(Ljava/lang/String;)V

    .line 162
    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setImageUrl(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    const/4 p0, 0x0

    .line 183
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_4

    .line 184
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 185
    new-instance p4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-direct {p4}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;-><init>()V

    .line 186
    invoke-virtual {p4, p1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterName(Ljava/lang/String;)V

    .line 190
    sget p1, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_BUILTIN:I

    invoke-virtual {p4, p1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setFilterMode(I)V

    .line 191
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    return-object p3
.end method

.method public static getSelectedFaceUPropPos(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    .line 92
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    if-nez v2, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getPackageId()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public static isZh(Landroid/content/Context;)Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 107
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
