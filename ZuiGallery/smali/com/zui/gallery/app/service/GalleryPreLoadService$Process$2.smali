.class Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;
.super Ljava/lang/Object;
.source "GalleryPreLoadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadMediaItem()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "loadData task finished"

    const-string v3, "GalleryPreLoadService"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 461
    :try_start_0
    iget-object v0, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$900(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Lcom/zui/gallery/util/ThreadPool$JobContext;

    move-result-object v0

    iget-object v6, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v6, v6, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v6}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v0, v6, v7}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v0

    .line 463
    iget-object v6, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v6}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v6, :cond_1

    .line 557
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 558
    iget-object v0, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v0, v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$1900(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V

    .line 559
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_1
    :try_start_1
    iget-object v6, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v6}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    if-eqz v0, :cond_2

    .line 467
    iget-object v6, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v6, v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1200(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)Ljava/util/List;

    .line 470
    :cond_2
    iget-object v6, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v6}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 471
    :cond_3
    iget-object v6, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v6}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    if-eqz v0, :cond_16

    .line 473
    array-length v6, v0

    if-lez v6, :cond_16

    const-string v6, "bucket_id = ?"

    const-string v13, "bucket_id = ?"

    const-string v14, "datetaken DESC, _id DESC"

    const-string v15, "datetaken DESC, _id DESC"

    .line 480
    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 481
    sget-object v17, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 482
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v7, v7, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/4 v7, 0x0

    .line 484
    array-length v12, v0

    move v11, v4

    move-object/from16 v19, v7

    :goto_2
    if-ge v11, v12, :cond_16

    .line 486
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .line 487
    :cond_4
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    .line 489
    aget-object v10, v0, v11

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse  folder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 492
    :try_start_2
    invoke-static {}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$1300()[Ljava/lang/String;

    move-result-object v9

    new-array v8, v5, [Ljava/lang/String;

    iget v7, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    move-object/from16 v7, v18

    move-object/from16 v20, v8

    move-object/from16 v8, v16

    move-object/from16 v21, v10

    move-object v10, v6

    move/from16 v22, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 494
    :try_start_3
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v7, :cond_5

    if-eqz v12, :cond_0

    .line 519
    :goto_3
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/16 :goto_0

    .line 495
    :cond_5
    :try_start_5
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    if-nez v12, :cond_6

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query image AlbumSet item is null for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    iget-object v8, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v11, v21

    .line 500
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 502
    :cond_7
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7, v12, v5}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1400(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;Landroid/database/Cursor;Z)Lcom/zui/gallery/data/LocalMediaItem;

    move-result-object v7

    .line 504
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v12, :cond_0

    goto :goto_3

    .line 505
    :cond_8
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    if-eqz v7, :cond_9

    .line 508
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1500(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 509
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1600(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 512
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v7, :cond_7

    :cond_a
    :goto_4
    if-eqz v12, :cond_b

    .line 519
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_b
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_0

    .line 524
    :cond_c
    iget-object v7, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v7}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 528
    :try_start_7
    invoke-static {}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$1700()[Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    iget v7, v11, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v4
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move-object/from16 v19, v10

    move-object v10, v13

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v12

    move-object v12, v15

    :try_start_8
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v7, :cond_d

    .line 530
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query video AlbumSet item is null for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 532
    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 534
    :cond_e
    iget-object v5, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v5, v7, v4}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1400(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;Landroid/database/Cursor;Z)Lcom/zui/gallery/data/LocalMediaItem;

    move-result-object v5

    .line 536
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v8
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v8, :cond_10

    if-eqz v7, :cond_f

    .line 551
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 557
    :cond_f
    :goto_5
    iget-object v0, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 537
    :cond_10
    :try_start_b
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    if-eqz v5, :cond_11

    .line 540
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1500(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 541
    iget-object v8, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v8}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1600(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 544
    :cond_11
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v5, :cond_e

    :cond_12
    :goto_6
    if-eqz v7, :cond_13

    .line 551
    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_13
    add-int/lit8 v11, v22, 0x1

    move-object/from16 v19, v7

    move/from16 v12, v20

    const/4 v5, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v7

    goto :goto_7

    :catch_0
    move-object v12, v7

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v12, v19

    goto :goto_7

    :catch_1
    move-object/from16 v12, v19

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v19, v12

    :goto_7
    if-eqz v12, :cond_14

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_14
    throw v0

    :catch_2
    move-object/from16 v19, v12

    :goto_8
    if-eqz v12, :cond_f

    .line 551
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v19, v12

    goto :goto_9

    :catch_3
    move-object/from16 v19, v12

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_9
    if-eqz v19, :cond_15

    .line 519
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_15
    throw v0

    :catch_4
    :goto_a
    if-eqz v19, :cond_f

    .line 519
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_5

    .line 557
    :cond_16
    iget-object v0, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 558
    iget-object v0, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v0, v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$1900(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V

    .line 559
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_5
    move-exception v0

    .line 557
    iget-object v5, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v5}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 558
    iget-object v4, v1, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v4, v4, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v4}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$1900(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V

    .line 559
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    throw v0
.end method
