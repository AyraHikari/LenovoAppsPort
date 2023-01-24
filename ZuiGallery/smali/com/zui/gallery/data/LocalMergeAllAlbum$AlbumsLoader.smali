.class Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalMergeAllAlbum.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocalMergeAllAlbum;
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
        "Lcom/zui/gallery/data/MediaSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/data/LocalMergeAllAlbum;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/LocalMergeAllAlbum;Lcom/zui/gallery/data/LocalMergeAllAlbum$1;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;-><init>(Lcom/zui/gallery/data/LocalMergeAllAlbum;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Lcom/zui/gallery/data/MediaSet;
    .locals 19

    move-object/from16 v1, p0

    .line 289
    iget-object v0, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    iget-object v2, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v2}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$200(Lcom/zui/gallery/data/LocalMergeAllAlbum;)I

    move-result v2

    move-object/from16 v3, p1

    invoke-static {v3, v0, v2}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v2

    const-string v4, "kugoubug"

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlbumsLoader entriesOri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    array-length v4, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    move v4, v5

    .line 293
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    const-string v6, "kugoubug"

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlbumsLoader1 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v4

    iget v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v4

    iget v8, v8, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    return-object v6

    .line 300
    :cond_1
    iget-object v4, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v4}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    if-eqz v2, :cond_b

    .line 302
    array-length v4, v2

    if-lez v4, :cond_b

    .line 304
    invoke-static {v0, v2}, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->filterFromLesafeBlackList(Landroid/content/ContentResolver;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v0

    .line 305
    array-length v4, v2

    if-lez v4, :cond_2

    move v4, v5

    .line 306
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_2

    const-string v7, "kugoubug"

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AlbumsLoader 2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v4

    iget v9, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v4

    iget v9, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 310
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v6

    :cond_3
    if-eqz v0, :cond_b

    .line 313
    array-length v2, v0

    if-lez v2, :cond_b

    .line 314
    sget-object v2, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v4, "kugoubug"

    const-string v7, "album enty"

    .line 315
    invoke-static {v4, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v4, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 317
    :try_start_0
    iget-object v7, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v7}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$200(Lcom/zui/gallery/data/LocalMergeAllAlbum;)I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v7, v9, :cond_5

    if-eq v7, v8, :cond_4

    goto :goto_2

    .line 324
    :cond_4
    sget-object v2, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_VIDEO:Lcom/zui/gallery/data/Path;

    goto :goto_2

    .line 321
    :cond_5
    sget-object v2, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_IMAGE:Lcom/zui/gallery/data/Path;

    .line 327
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 329
    array-length v7, v0

    :goto_3
    if-ge v5, v7, :cond_a

    aget-object v10, v0, v5

    .line 330
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_6

    return-object v6

    .line 332
    :cond_6
    iget-object v11, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v11}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$200(Lcom/zui/gallery/data/LocalMergeAllAlbum;)I

    move-result v11

    if-eq v11, v9, :cond_9

    if-eq v11, v8, :cond_8

    const/4 v12, 0x6

    if-eq v11, v12, :cond_7

    goto/16 :goto_4

    .line 347
    :cond_7
    iget v11, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v2, v11}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v11

    .line 348
    new-instance v15, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v12, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v12}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v14

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    const/16 v16, 0x1

    iget-object v12, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v17, v12

    move-object v12, v15

    move/from16 v18, v13

    move-object v13, v11

    move-object v6, v15

    move/from16 v15, v18

    invoke-direct/range {v12 .. v17}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    .line 350
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v12, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v12}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v14

    iget v15, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    const/16 v16, 0x0

    iget-object v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object v12, v6

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    .line 353
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 341
    :cond_8
    iget v6, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v2, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v12

    .line 342
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v11, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v11}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v13

    iget v14, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    const/4 v15, 0x0

    iget-object v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object v11, v6

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    .line 344
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 334
    :cond_9
    iget v6, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v2, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v12

    const-string v6, "kugoubug"

    .line 335
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "album enty mediaPath:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " entry.bucketId:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " entry.bucketName:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v11, v1, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-static {v11}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v13

    iget v14, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    const/4 v15, 0x1

    iget-object v10, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object v11, v6

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    .line 338
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 357
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Lcom/zui/gallery/data/MediaSet;

    .line 358
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 327
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    const/4 v6, 0x0

    :goto_5
    return-object v6
.end method
