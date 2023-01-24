.class public Lcom/zui/gallery/cloud/CloudSettingLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CloudSettingLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudSettingLoader"


# instance fields
.field private galleryApp:Lcom/zui/gallery/app/GalleryApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;
    .locals 17

    move-object/from16 v0, p0

    .line 33
    iget-object v1, v0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v4, v0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v4, v3}, Lcom/zui/gallery/cloud/CloudUtils;->getAllCloudAlbums(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allCloudAlbums.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  noneEmptyOrSystemCloudAlbums.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CloudSettingLoader"

    invoke-static {v6, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v5, v0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v5}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/gallery/util/GroupUtils;->getCustomGroups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localCustomAlbums.size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x6

    .line 46
    invoke-static {v2, v1, v7}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 48
    array-length v8, v7

    if-lez v8, :cond_1

    .line 49
    invoke-static {v1, v7}, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->filterFromLesafeBlackList(Landroid/content/ContentResolver;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v2

    .line 53
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 60
    iget-object v13, v0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v13}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/zui/gallery/cloud/CloudManager;->isAlbumAutoSync(Ljava/lang/String;)Z

    move-result v13

    .line 61
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cloudalbum:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "   autosync:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v10}, Lcom/zui/gallery/cloud/CloudUtils;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 65
    invoke-static {v10}, Lcom/zui/gallery/cloud/CloudUtils;->getSystemAlbumPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    new-instance v13, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    invoke-direct {v13, v10, v11, v12}, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 76
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_3
    const-string v13, ""

    .line 79
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 80
    invoke-static {v10, v2}, Lcom/zui/gallery/cloud/CloudUtils;->findEntryWithName(Ljava/lang/String;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 82
    iget-object v13, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    .line 86
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 87
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    move v11, v12

    .line 93
    :goto_2
    new-instance v12, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    invoke-direct {v12, v10, v13, v11}, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_f

    .line 103
    array-length v9, v2

    if-lez v9, :cond_f

    .line 104
    array-length v9, v2

    move v10, v12

    :goto_3
    if-ge v10, v9, :cond_f

    aget-object v13, v2, v10

    .line 106
    iget-object v14, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :goto_4
    move-object/from16 v16, v2

    goto/16 :goto_7

    .line 111
    :cond_7
    iget-object v14, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v13, "bucket name empty, skip"

    .line 112
    invoke-static {v6, v13}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const/4 v14, 0x2

    .line 119
    iget-object v15, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 120
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    goto :goto_5

    .line 123
    :cond_9
    iget-object v11, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    move v15, v12

    .line 127
    :goto_5
    iget-object v12, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 129
    iget-object v12, v0, Lcom/zui/gallery/cloud/CloudSettingLoader;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v12}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v12

    iget-object v14, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/zui/gallery/cloud/CloudManager;->isAlbumAutoSync(Ljava/lang/String;)Z

    move-result v12

    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    .line 132
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "entry.bucketName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   auto sync:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "    entry.path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_c

    .line 135
    iget-object v0, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v15, :cond_e

    .line 138
    iget-object v0, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    new-instance v2, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    iget-object v12, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-direct {v2, v12, v11, v14}, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 141
    :cond_b
    iget-object v0, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    new-instance v2, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    iget-object v12, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-direct {v2, v12, v11, v14}, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 144
    :cond_c
    iget-object v0, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v15, :cond_e

    .line 147
    iget-object v0, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    new-instance v2, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    iget-object v12, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-direct {v2, v12, v11, v14}, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 150
    :cond_d
    iget-object v0, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    new-instance v2, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    iget-object v12, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-direct {v2, v12, v11, v14}, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 157
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync on size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  sync off size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v1, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;

    invoke-direct {v1, v0, v2, v4}, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingLoader;->loadInBackground()Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;

    move-result-object v0

    return-object v0
.end method
