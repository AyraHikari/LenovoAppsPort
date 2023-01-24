.class Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSetMore.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocalAlbumSetMore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/data/LocalAlbumSetMore;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/LocalAlbumSetMore$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSetMore;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 250
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v7, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v7}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 259
    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v8}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I

    move-result v8

    invoke-static {v1, v7, v8}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v8

    .line 261
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    return-object v10

    .line 263
    :cond_0
    iget-object v9, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v9}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v9

    .line 267
    sget v11, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 268
    sget v12, Lcom/zui/gallery/util/MediaSetUtils;->SD_PANORAMA_BUCKET_ID:I

    const-string v15, "LocalAlbumSetMore"

    const/16 v17, 0x1

    if-eqz v8, :cond_f

    .line 270
    array-length v13, v8

    if-lez v13, :cond_f

    .line 272
    invoke-static {v7, v8}, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->filterFromLesafeBlackList(Landroid/content/ContentResolver;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v13

    .line 276
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I

    move-result v10

    const/4 v14, 0x4

    if-eq v10, v14, :cond_1

    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I

    move-result v10

    if-ne v10, v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$200(Lcom/zui/gallery/data/LocalAlbumSetMore;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v13, :cond_2

    .line 277
    array-length v2, v13

    if-lez v2, :cond_2

    .line 278
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I

    move-result v10

    invoke-static {v2, v13, v9, v10}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$300(Lcom/zui/gallery/data/LocalAlbumSetMore;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    .line 279
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x0

    .line 291
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_4

    .line 292
    aget-object v10, v8, v2

    iget-object v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v14, "continuous_img_"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move/from16 v2, v17

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 298
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasContinuous Folder "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget v8, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v13, v8}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v8

    .line 324
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v10

    invoke-interface {v10}, Lcom/zui/gallery/app/GalleryApp;->getExtSDCardPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 326
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "DCIM/Camera"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 327
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "DCIM/Camera/Panorama"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 328
    invoke-static {v11}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v11

    .line 329
    invoke-static {v10}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v12

    .line 332
    :cond_5
    invoke-static {v13, v11}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v10

    .line 333
    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    invoke-static {v13, v14}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v14

    move-object/from16 v19, v15

    .line 334
    invoke-static {v13, v12}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v15

    move-object/from16 v20, v3

    const/4 v3, -0x1

    if-ne v8, v3, :cond_9

    if-eq v10, v3, :cond_6

    goto :goto_2

    .line 366
    :cond_6
    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v8}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$600(Lcom/zui/gallery/data/LocalAlbumSetMore;)Z

    move-result v8

    if-nez v8, :cond_8

    if-nez v2, :cond_7

    if-ne v14, v3, :cond_7

    if-eq v15, v3, :cond_8

    .line 368
    :cond_7
    sget-object v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    .line 369
    iget-object v3, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    const/16 v10, 0x14

    invoke-static {v3, v2, v10, v11, v12}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$700(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    .line 370
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object v3, v13

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    :goto_2
    const/16 v10, 0x14

    const/4 v2, 0x0

    if-eq v8, v3, :cond_a

    .line 337
    invoke-static {v13, v2, v8}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$500([Ljava/lang/Object;II)V

    .line 339
    :cond_a
    invoke-static {v13, v11}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v14

    if-eq v14, v3, :cond_b

    .line 341
    invoke-static {v13, v2, v14}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$500([Ljava/lang/Object;II)V

    .line 344
    :cond_b
    iget-object v15, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v15}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I

    move-result v15

    .line 345
    sget-object v18, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    .line 346
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$600(Lcom/zui/gallery/data/LocalAlbumSetMore;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 347
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    iget-object v2, v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    goto :goto_3

    :cond_c
    move v15, v10

    move-object/from16 v2, v18

    .line 355
    :goto_3
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v10, v2, v15, v11, v12}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$700(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    .line 358
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v8, v3, :cond_d

    move/from16 v2, v17

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :goto_4
    if-eq v14, v3, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    move-object v3, v13

    goto :goto_5

    :cond_f
    move-object/from16 v20, v3

    move-object/from16 v19, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 382
    :goto_5
    invoke-static {v1, v7}, Lcom/zui/gallery/data/GroupBucketHelper;->loadGroupWhiteBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 386
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    return-object v1

    :cond_10
    if-eqz v3, :cond_18

    .line 392
    array-length v1, v3

    const/4 v7, 0x0

    :goto_6
    if-ge v2, v1, :cond_17

    .line 394
    aget-object v8, v3, v2

    .line 395
    sget v10, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-eq v10, v11, :cond_16

    sget v10, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-eq v10, v11, :cond_16

    sget v10, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v10, v11, :cond_11

    goto/16 :goto_8

    .line 401
    :cond_11
    sget v10, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-eq v10, v11, :cond_16

    sget v10, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-eq v10, v11, :cond_16

    sget v10, Lcom/zui/gallery/util/MediaSetUtils;->BLUETOOTH_ID:I

    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v10, v11, :cond_12

    goto/16 :goto_8

    .line 406
    :cond_12
    iget-object v11, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    .line 407
    invoke-static {v11}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I

    move-result v13

    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    iget-object v14, v10, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    iget v15, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v10, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object v12, v9

    move/from16 v18, v1

    const/4 v1, 0x0

    move-object/from16 v1, v19

    move-object/from16 v16, v10

    .line 406
    invoke-static/range {v11 .. v16}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$800(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v10

    .line 409
    iget v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->appType:I

    invoke-virtual {v10, v11}, Lcom/zui/gallery/data/MediaSet;->setAppFolderType(I)V

    .line 410
    iget-boolean v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z

    if-eqz v11, :cond_13

    .line 412
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 416
    :cond_13
    iget-object v11, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v11}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$600(Lcom/zui/gallery/data/LocalAlbumSetMore;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 417
    iget-object v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    const-string v12, "DCIM/Camera/Continuous_IMG"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_9

    .line 421
    :cond_14
    iget-object v11, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v11}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v13, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/zui/gallery/util/GroupUtils;->isFolderInGroup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    const-string v12, " entry.bucketId:"

    const-string v13, "filetest bucket in group, do not create album here. path:"

    if-lez v11, :cond_15

    .line 422
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 426
    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " title:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " systemid;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_16
    :goto_8
    move/from16 v18, v1

    move-object/from16 v1, v19

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v1

    move/from16 v1, v18

    goto/16 :goto_6

    :cond_17
    move-object/from16 v1, v19

    move v14, v7

    goto :goto_a

    :cond_18
    move-object/from16 v1, v19

    const/4 v14, 0x0

    :goto_a
    const/4 v2, 0x6

    if-lt v14, v2, :cond_19

    const/4 v3, 0x3

    const/4 v7, 0x0

    .line 442
    invoke-interface {v6, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x5

    .line 447
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 450
    new-instance v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 451
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "MoreOthers"

    invoke-direct {v6, v7, v8}, Lcom/zui/gallery/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 453
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    const-string v2, ""

    .line 454
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v8

    .line 455
    new-instance v7, Lcom/zui/gallery/data/LocalGroupAlbum;

    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    iget v10, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    const/4 v11, 0x6

    iget-object v12, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v13, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 460
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_b

    .line 465
    :cond_19
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 466
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v14, 0x0

    .line 502
    :goto_b
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSetMore;->access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-lez v14, :cond_1a

    .line 504
    new-instance v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const v6, 0x7f1001cc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    sget-object v7, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    invoke-direct {v3, v2, v14, v6, v7}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;-><init>(Ljava/lang/String;ILcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->maxOtherAlbumCount:I

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxOtherAlbumCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/zui/gallery/data/LocalAlbumSetMore;->maxOtherAlbumCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aput-object v4, v20, v1

    aput-object v5, v20, v17

    return-object v20
.end method
