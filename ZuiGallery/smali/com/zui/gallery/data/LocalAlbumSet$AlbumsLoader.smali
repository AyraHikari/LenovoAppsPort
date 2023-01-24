.class Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocalAlbumSet;
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
.field final synthetic this$0:Lcom/zui/gallery/data/LocalAlbumSet;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/data/LocalAlbumSet;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/LocalAlbumSet$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 275
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 277
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 278
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 279
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v9, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v9}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 288
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v10

    invoke-static {v1, v9, v10}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v10

    .line 290
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    return-object v12

    .line 292
    :cond_0
    iget-object v11, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v11}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v11

    .line 296
    sget v13, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 297
    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->SD_PANORAMA_BUCKET_ID:I

    .line 300
    iget-object v15, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v15}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v15

    invoke-static {v15}, Lcom/zui/gallery/cloud/CloudUtils;->getAllNoneEmptyAutoSyncOnCloudAlbums(Lcom/zui/gallery/app/GalleryApp;)Ljava/util/List;

    move-result-object v15

    const-string v12, "LogLocalAlbumSet"

    if-eqz v10, :cond_f

    .line 303
    array-length v4, v10

    if-lez v4, :cond_f

    .line 305
    invoke-static {v9, v10}, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->filterFromLesafeBlackList(Landroid/content/ContentResolver;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v4

    move/from16 v18, v13

    .line 309
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v13

    move/from16 v19, v14

    const/4 v14, 0x4

    if-eq v13, v14, :cond_1

    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    :cond_1
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$200(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v4, :cond_2

    .line 310
    array-length v13, v4

    if-lez v13, :cond_2

    .line 311
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v14

    invoke-static {v13, v4, v11, v14}, Lcom/zui/gallery/data/LocalAlbumSet;->access$300(Lcom/zui/gallery/data/LocalAlbumSet;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v13

    .line 312
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    move-wide/from16 v20, v2

    const/4 v14, 0x0

    .line 324
    :goto_1
    array-length v2, v10

    if-ge v14, v2, :cond_4

    .line 325
    aget-object v2, v10, v14

    iget-object v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous_img_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 331
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasContinuous Folder "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget v3, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v4, v3}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v3

    .line 357
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v10

    invoke-interface {v10}, Lcom/zui/gallery/app/GalleryApp;->getExtSDCardPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 359
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v5

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DCIM/Camera"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 360
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "DCIM/Camera/Panorama"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 361
    invoke-static {v5}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v5

    .line 362
    invoke-static {v10}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    :cond_5
    move-object/from16 v22, v5

    move/from16 v5, v18

    move/from16 v14, v19

    .line 365
    :goto_3
    invoke-static {v4, v5}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v10

    move-object/from16 v23, v7

    .line 366
    sget v7, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    invoke-static {v4, v7}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v7

    move-object/from16 v24, v8

    .line 367
    invoke-static {v4, v14}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v8

    move-object/from16 v25, v11

    const/4 v11, -0x1

    if-ne v3, v11, :cond_9

    if-eq v10, v11, :cond_6

    goto :goto_4

    .line 399
    :cond_6
    iget-object v3, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v3}, Lcom/zui/gallery/data/LocalAlbumSet;->access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v2, :cond_7

    if-ne v7, v11, :cond_7

    if-eq v8, v11, :cond_8

    .line 401
    :cond_7
    sget-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    .line 402
    iget-object v3, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    const/16 v7, 0x14

    invoke-static {v3, v2, v7, v5, v14}, Lcom/zui/gallery/data/LocalAlbumSet;->access$700(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    .line 403
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    move v3, v2

    move v13, v5

    move v2, v14

    goto/16 :goto_7

    :cond_8
    move v3, v13

    move v2, v14

    move v13, v5

    goto :goto_7

    :cond_9
    :goto_4
    move v2, v11

    const/4 v7, 0x0

    if-eq v3, v2, :cond_a

    .line 370
    invoke-static {v4, v7, v3}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 372
    :cond_a
    invoke-static {v4, v5}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v8

    if-eq v8, v2, :cond_b

    .line 374
    invoke-static {v4, v7, v8}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 377
    :cond_b
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v7

    .line 378
    sget-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    .line 379
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 380
    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v2, v2, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    goto :goto_5

    :cond_c
    const/16 v7, 0x14

    .line 388
    :goto_5
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10, v2, v7, v5, v14}, Lcom/zui/gallery/data/LocalAlbumSet;->access$700(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    .line 391
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    const/4 v7, -0x1

    if-eq v3, v7, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    if-eq v8, v7, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    move v13, v5

    move v5, v3

    move v3, v2

    move v2, v14

    goto :goto_8

    :cond_f
    move-wide/from16 v20, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v11

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v13, v18

    move/from16 v2, v19

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-nez v3, :cond_11

    .line 414
    iget-object v7, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v7}, Lcom/zui/gallery/data/LocalAlbumSet;->access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "Camera"

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 415
    iget-object v7, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    sget-object v8, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    const/16 v10, 0x14

    invoke-static {v7, v8, v10, v13, v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$700(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object v7

    goto :goto_9

    .line 417
    :cond_10
    new-instance v7, Lcom/zui/gallery/data/LocalGroupAlbum;

    sget-object v27, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v8}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x14

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    const-string v31, "FakeCameraSet"

    move-object/from16 v26, v7

    invoke-direct/range {v26 .. v32}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_9
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    .line 429
    :cond_11
    invoke-static {v1, v9}, Lcom/zui/gallery/data/GroupBucketHelper;->loadGroupWhiteBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v7

    .line 432
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    return-object v1

    .line 435
    :cond_12
    array-length v1, v7

    const/4 v8, 0x2

    .line 440
    invoke-static {v7, v8}, Lcom/zui/gallery/data/LocalAlbumSet;->access$800([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v10

    const/4 v8, -0x1

    if-eq v10, v8, :cond_13

    const/4 v11, 0x0

    .line 443
    invoke-static {v7, v11, v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    const/4 v10, 0x1

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x1

    .line 448
    invoke-static {v7, v11}, Lcom/zui/gallery/data/LocalAlbumSet;->access$800([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v13

    if-eq v13, v8, :cond_14

    .line 451
    invoke-static {v7, v10, v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    :cond_14
    const/4 v11, 0x3

    .line 456
    invoke-static {v7, v11}, Lcom/zui/gallery/data/LocalAlbumSet;->access$800([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v11

    if-eq v11, v8, :cond_15

    .line 458
    invoke-static {v7, v10, v11}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    :cond_15
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_b
    const-string v14, "/local/camera/fakevideo"

    const-string v13, "4"

    if-ge v8, v10, :cond_1e

    move/from16 v26, v10

    .line 466
    aget-object v10, v7, v8

    iget-object v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    if-eqz v10, :cond_16

    .line 467
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    move/from16 v27, v2

    move-object v2, v15

    goto/16 :goto_f

    .line 470
    :cond_16
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 471
    aget-object v10, v7, v8

    iget v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 472
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v13

    move-object/from16 v16, v15

    const/4 v15, 0x2

    if-ne v13, v15, :cond_17

    const/4 v13, 0x1

    goto :goto_c

    :cond_17
    const/4 v13, 0x0

    .line 471
    :goto_c
    invoke-static {v9, v10, v13}, Lcom/zui/gallery/data/GroupBucketHelper;->isGroupAlbumEmpty(Landroid/content/ContentResolver;IZ)Z

    move-result v10

    goto :goto_d

    :cond_18
    move-object/from16 v16, v15

    .line 474
    aget-object v10, v7, v8

    iget v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-static {v9, v10}, Lcom/zui/gallery/data/GroupBucketHelper;->isSystemGroupEmpty(Landroid/content/ContentResolver;I)Z

    move-result v10

    .line 476
    :goto_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "entries2[i].bucketName = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v7, v8

    iget-object v15, v15, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", isExist photo = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_1a

    const/4 v13, 0x2

    .line 481
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aget-object v13, v7, v8

    iget-object v13, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const/4 v13, 0x2

    .line 482
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aget-object v13, v7, v8

    iget-object v13, v13, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    if-nez v10, :cond_1a

    .line 483
    :cond_19
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$900(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 485
    new-instance v11, Lcom/zui/gallery/data/LocalGroupAlbum;

    invoke-static {v14}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v28

    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v29

    const/16 v30, 0x1

    const/16 v31, 0x4

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    const-string v32, "FakeVideoSet"

    move-object/from16 v27, v11

    invoke-direct/range {v27 .. v33}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x1

    :cond_1a
    if-eqz v10, :cond_1d

    .line 494
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1000(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1b

    sget-object v10, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/zui/gallery/data/Path;

    goto :goto_e

    :cond_1b
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v10, v10, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    .line 495
    :goto_e
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 496
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    aget-object v14, v7, v8

    iget v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    move/from16 p1, v11

    aget-object v11, v7, v8

    iget-object v11, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move/from16 v17, v14

    aget-object v14, v7, v8

    iget-object v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    move-object/from16 v19, v14

    move-object/from16 v14, v25

    move/from16 v27, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    .line 495
    invoke-static/range {v13 .. v19}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1100(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v10

    .line 498
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x2

    .line 500
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aget-object v10, v7, v8

    iget-object v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v11, 0x1

    goto :goto_f

    :cond_1c
    move/from16 v11, p1

    goto :goto_f

    :cond_1d
    move/from16 v27, v2

    move/from16 p1, v11

    move-object/from16 v2, v16

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object v15, v2

    move/from16 v10, v26

    move/from16 v2, v27

    goto/16 :goto_b

    :cond_1e
    move/from16 v27, v2

    move/from16 v26, v10

    move-object v2, v15

    if-nez v11, :cond_1f

    .line 505
    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v8}, Lcom/zui/gallery/data/LocalAlbumSet;->access$900(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 507
    new-instance v8, Lcom/zui/gallery/data/LocalGroupAlbum;

    invoke-static {v14}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v29

    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v30

    const/16 v31, 0x1

    const/16 v32, 0x4

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    const-string v33, "FakeVideoSet"

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v34}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    move/from16 v10, v26

    :goto_10
    if-ge v10, v1, :cond_28

    .line 516
    aget-object v8, v7, v10

    iget-object v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    if-eqz v8, :cond_20

    .line 517
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto/16 :goto_16

    .line 520
    :cond_20
    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v8}, Lcom/zui/gallery/data/LocalAlbumSet;->access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 521
    aget-object v8, v7, v10

    iget v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v11, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 522
    invoke-static {v11}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_21

    const/4 v11, 0x1

    goto :goto_11

    :cond_21
    const/4 v11, 0x0

    .line 521
    :goto_11
    invoke-static {v9, v8, v11}, Lcom/zui/gallery/data/GroupBucketHelper;->isGroupAlbumEmpty(Landroid/content/ContentResolver;IZ)Z

    move-result v8

    goto :goto_12

    :cond_22
    const/4 v8, 0x1

    :goto_12
    if-eqz v8, :cond_27

    .line 525
    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v8}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1000(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v8

    if-eqz v8, :cond_23

    sget-object v8, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/zui/gallery/data/Path;

    goto :goto_13

    :cond_23
    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v8, v8, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    .line 526
    :goto_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mType is "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v14}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " && path is "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " && id is "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    iget v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " && name is "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    iget-object v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " && systemId is "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    iget-object v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "wangcanALbum"

    invoke-static {v14, v11}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "filetest bucketId:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    iget v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  entries2[i].bucketName:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    iget-object v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " entries2[i].systemId:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    iget-object v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    aget-object v11, v7, v10

    iget-object v11, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-static {v11}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    aget-object v11, v7, v10

    iget-object v11, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    goto :goto_14

    .line 560
    :cond_24
    iget-object v11, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 561
    invoke-static {v11}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    aget-object v14, v7, v10

    iget v14, v14, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    move/from16 v26, v1

    aget-object v1, v7, v10

    iget-object v1, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v28, v9

    aget-object v9, v7, v10

    iget-object v9, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    move-object/from16 v29, v13

    move-object v13, v11

    move v11, v14

    move-object/from16 v14, v25

    move-object/from16 v16, v8

    move/from16 v17, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v9

    .line 560
    invoke-static/range {v13 .. v19}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1100(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 563
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_25
    :goto_14
    move/from16 v26, v1

    move-object/from16 v28, v9

    move-object/from16 v29, v13

    .line 532
    aget-object v1, v7, v10

    iget v1, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v7, v10

    iget-object v9, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 539
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bucketId is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v10

    iget v11, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " && =====realBucketId is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "wangcan"

    invoke-static {v11, v9}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filetest group folder exist and not empty, create local album realBucketId:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 542
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v9, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v9, v9, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    aget-object v11, v7, v10

    iget-object v11, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v9

    move/from16 v17, v1

    move-object/from16 v18, v11

    .line 541
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v9

    .line 546
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mediaItemCount "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v9, :cond_26

    .line 548
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 549
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    aget-object v1, v7, v10

    iget v1, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    aget-object v9, v7, v10

    iget-object v9, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    aget-object v11, v7, v10

    iget-object v11, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v8

    move/from16 v17, v1

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    .line 548
    invoke-static/range {v13 .. v19}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1100(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 554
    :cond_26
    aget-object v8, v7, v10

    iget v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v1, v8}, Lcom/zui/gallery/data/MediaSet;->setGroupIdForDelete(I)V

    .line 556
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    :goto_16
    move/from16 v26, v1

    move-object/from16 v28, v9

    move-object/from16 v29, v13

    :goto_17
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v26

    move-object/from16 v9, v28

    move-object/from16 v13, v29

    goto/16 :goto_10

    :cond_28
    if-eqz v4, :cond_34

    .line 577
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-static {v4, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_29

    .line 579
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 580
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 581
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    aget-object v7, v4, v5

    iget v7, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    aget-object v8, v4, v5

    iget-object v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    move/from16 v17, v7

    move-object/from16 v18, v8

    .line 580
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    .line 584
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_29
    const-string v1, "Screenshots"

    .line 586
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 587
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 588
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget v17, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    const-string v18, "Screenshots"

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    .line 587
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 590
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 595
    :cond_2a
    :goto_19
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    invoke-static {v4, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2b

    .line 597
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 598
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 599
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    aget-object v7, v4, v5

    iget v7, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    aget-object v8, v4, v5

    iget-object v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    move/from16 v17, v7

    move-object/from16 v18, v8

    .line 598
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    .line 602
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const-string v1, "screenrecorder"

    .line 605
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 606
    invoke-static {v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$900(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 607
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 608
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget v17, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    const-string v18, "screenrecorder"

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    .line 607
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 610
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 615
    :cond_2c
    :goto_1b
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->BLUETOOTH_ID:I

    invoke-static {v4, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2d

    .line 617
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 618
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 619
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    aget-object v2, v4, v5

    iget v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    aget-object v7, v4, v5

    iget-object v7, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v7

    .line 618
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    .line 622
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2d
    const-string v1, "bluetooth"

    .line 624
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 625
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 626
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget v17, Lcom/zui/gallery/util/MediaSetUtils;->BLUETOOTH_ID:I

    const-string v18, "bluetooth"

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    .line 625
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 628
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 633
    :cond_2e
    :goto_1d
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    invoke-static {v4, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 636
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 637
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 638
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    aget-object v2, v4, v5

    iget v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    aget-object v7, v4, v5

    iget-object v7, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v7

    .line 637
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    .line 641
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    .line 645
    :cond_2f
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    invoke-static {v4, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 648
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 649
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 650
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    aget-object v2, v4, v5

    iget v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    aget-object v7, v4, v5

    iget-object v7, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v7

    .line 649
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    .line 653
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    .line 658
    :cond_30
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    invoke-static {v4, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    move/from16 v2, v27

    .line 660
    invoke-static {v4, v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v1, v8, :cond_31

    if-eq v7, v8, :cond_34

    :cond_31
    if-eq v1, v8, :cond_32

    .line 664
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    .line 667
    :cond_32
    invoke-static {v4, v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    if-eq v1, v8, :cond_33

    .line 670
    invoke-static {v4, v5, v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    .line 673
    :cond_33
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 674
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget v17, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    iget-object v7, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v7}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    .line 675
    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100154

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v25

    move-object/from16 v16, v1

    .line 673
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 677
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 678
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v7, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v7, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    iget-object v9, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v9}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    .line 679
    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v7

    move/from16 v17, v2

    .line 677
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/zui/gallery/data/MediaSet;

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const/4 v1, 0x1

    aput-object v2, v7, v1

    .line 681
    new-instance v1, Lcom/zui/gallery/data/ComboAlbum;

    const-string v2, "/combo/panora/*"

    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    iget-object v9, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v9}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    .line 682
    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v2, v7, v8}, Lcom/zui/gallery/data/ComboAlbum;-><init>(Lcom/zui/gallery/data/Path;[Lcom/zui/gallery/data/MediaSet;Ljava/lang/String;)V

    .line 683
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_34
    if-eqz v4, :cond_39

    .line 702
    array-length v1, v4

    const/4 v2, 0x0

    :goto_1e
    if-ge v5, v1, :cond_38

    .line 704
    aget-object v7, v4, v5

    .line 705
    iget-object v13, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    .line 706
    invoke-static {v13}, Lcom/zui/gallery/data/LocalAlbumSet;->access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I

    move-result v15

    iget-object v8, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v8, v8, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    iget v9, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v10, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v14, v25

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    .line 705
    invoke-static/range {v13 .. v18}, Lcom/zui/gallery/data/LocalAlbumSet;->access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v8

    .line 708
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filetest bucket : path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " entry.appType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->appType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget v9, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->appType:I

    invoke-virtual {v8, v9}, Lcom/zui/gallery/data/MediaSet;->setAppFolderType(I)V

    .line 710
    iget-boolean v9, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z

    if-eqz v9, :cond_35

    move-object/from16 v9, v24

    .line 712
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_35
    move-object/from16 v9, v24

    .line 717
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v10

    if-nez v10, :cond_36

    .line 718
    iget-object v10, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    const-string v11, "DCIM/Camera/Continuous_IMG"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_36

    goto :goto_20

    .line 722
    :cond_36
    iget-object v10, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v10}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v10

    invoke-interface {v10}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v13, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-static {v10, v11, v13}, Lcom/zui/gallery/util/GroupUtils;->isFolderInGroup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v10, v10, v13

    if-lez v10, :cond_37

    .line 723
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filetest bucket in group, do not create album here. path:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " entry.bucketId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 727
    :cond_37
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :goto_20
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v24, v9

    goto/16 :goto_1e

    :cond_38
    move-object/from16 v9, v24

    move v7, v2

    goto :goto_21

    :cond_39
    move-object/from16 v9, v24

    const/4 v7, 0x0

    .line 739
    :goto_21
    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$200(Lcom/zui/gallery/data/LocalAlbumSet;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_3a

    if-le v7, v2, :cond_3a

    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    iget-boolean v1, v1, Lcom/zui/gallery/data/LocalAlbumSet;->isForAddPage:Z

    if-nez v1, :cond_3a

    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 742
    invoke-interface {v9, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    sput v4, Lcom/zui/gallery/data/LocalAlbumSetMore;->maxOtherAlbumCount:I

    .line 748
    new-instance v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 749
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const-string v5, "MoreOthers"

    invoke-direct {v1, v4, v5}, Lcom/zui/gallery/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 751
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    const-string v4, ""

    .line 752
    invoke-static {v4}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v14

    .line 753
    new-instance v4, Lcom/zui/gallery/data/LocalGroupAlbum;

    iget-object v5, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v5}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v15

    iget v5, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    const/16 v17, 0x6

    iget-object v7, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v1, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    move-object v13, v4

    move/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v19}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v2

    goto :goto_22

    .line 761
    :cond_3a
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 766
    :goto_22
    iget-object v1, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v1}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-lez v3, :cond_3b

    .line 768
    new-instance v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const v4, 0x7f10027e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    sget-object v8, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    invoke-direct {v2, v4, v3, v5, v8}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;-><init>(Ljava/lang/String;ILcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;)V

    move-object/from16 v4, v23

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    move-object/from16 v4, v23

    :goto_23
    if-lez v7, :cond_3c

    .line 780
    new-instance v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const v5, 0x7f1001cc

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    sget-object v8, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    invoke-direct {v2, v1, v7, v5, v8}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;-><init>(Ljava/lang/String;ILcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_3c
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/GalleryTrash"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 789
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 791
    :cond_3d
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.nomedia"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 794
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :catch_0
    :cond_3e
    new-instance v1, Lcom/zui/gallery/data/LocalGroupAlbum;

    sget-object v14, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_PRIVACY:Lcom/zui/gallery/data/Path;

    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v15

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v2, 0xa

    .line 804
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const-string v18, "FakePrivacyCanSet"

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    new-instance v1, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1001fe

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    sget-object v8, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->PRIVACY:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const/4 v9, 0x1

    invoke-direct {v1, v2, v9, v5, v8}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;-><init>(Ljava/lang/String;ILcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance v1, Lcom/zui/gallery/data/LocalGroupAlbum;

    sget-object v14, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const-string v18, "FakeTrashCanSet"

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v1, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    iget-object v2, v0, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalAlbumSet;->access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10029c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    sget-object v8, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->TRASH:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const/4 v9, 0x1

    invoke-direct {v1, v2, v9, v5, v8}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;-><init>(Ljava/lang/String;ILcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otherAlbumCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " systemAlbumCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pianzisiguangguang"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aput-object v6, v22, v1

    const/4 v1, 0x1

    aput-object v4, v22, v1

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: startTimeMillis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "   end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22
.end method
