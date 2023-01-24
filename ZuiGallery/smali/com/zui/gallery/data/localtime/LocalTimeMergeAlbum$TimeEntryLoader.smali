.class Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;
.super Ljava/lang/Object;
.source "LocalTimeMergeAlbum.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeEntryLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;-><init>(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 415
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/util/List;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "LocalTimeMergeAlbum"

    const-string v2, "LocalTimeMergeAlbum TimeEntryLoader start"

    .line 420
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 424
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 428
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 432
    iget-object v8, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v8}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$000(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    .line 434
    aget-object v10, v8, v9

    check-cast v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    .line 435
    aget-object v12, v8, v11

    check-cast v12, Ljava/util/Map;

    const/16 v23, 0x2

    .line 436
    aget-object v8, v8, v23

    check-cast v8, Ljava/util/Map;

    .line 437
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_1

    return-object v5

    .line 448
    :cond_1
    iget-object v13, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-object/from16 v15, p1

    invoke-static {v13, v15}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$100(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;Lcom/zui/gallery/util/ThreadPool$JobContext;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 451
    array-length v13, v14

    if-lez v13, :cond_10

    .line 452
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 454
    array-length v5, v14

    new-array v5, v5, [Lcom/zui/gallery/data/MediaSet;

    .line 456
    array-length v9, v14

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v24, 0x0

    :goto_0
    if-ge v11, v9, :cond_f

    move/from16 v25, v9

    aget-object v9, v14, v11

    move-object/from16 v26, v4

    move-object/from16 v17, v14

    move/from16 v4, v16

    .line 458
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-wide/16 v27, 0x1

    const-wide/32 v29, 0x5265c00

    if-ge v4, v14, :cond_9

    .line 459
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    move-wide/from16 v31, v2

    .line 460
    iget-wide v2, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    iget-wide v6, v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_5

    iget-wide v2, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    iget-wide v6, v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_5

    .line 461
    iget v2, v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    .line 465
    iget-wide v6, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-virtual {v13, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 466
    invoke-static {v13}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getDateName(Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v2

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v14, v2, v7

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v2, v3

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, "/"

    .line 469
    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 470
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    invoke-virtual {v6, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 472
    :cond_2
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-eqz v6, :cond_3

    .line 474
    iget v7, v6, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    add-int/2addr v7, v3

    iput v7, v6, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    .line 477
    :cond_3
    iget-object v3, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v3}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$200(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 478
    aget-object v2, v2, v3

    .line 479
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-eqz v2, :cond_4

    .line 481
    iget v3, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    :cond_4
    move-object/from16 v35, v1

    move/from16 v16, v4

    move-object v7, v13

    move-object/from16 v42, v17

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 487
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    return-object v2

    .line 490
    :cond_6
    iget-wide v2, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    iget-wide v6, v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_8

    .line 491
    iget-wide v2, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 493
    iget-wide v2, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-static {v13}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getTimeOffSet(Ljava/util/Calendar;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 494
    invoke-static {v13}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getDateName(Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v6

    .line 496
    new-instance v7, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    add-long v18, v2, v29

    sub-long v38, v18, v27

    move-object/from16 v18, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x1

    aget-object v15, v6, v16

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v6, v23

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x1

    move-object/from16 v35, v7

    move-wide/from16 v36, v2

    invoke-direct/range {v35 .. v41}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    .line 497
    invoke-static {v14}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isWeek(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {v7}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 498
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v1

    const/4 v15, 0x0

    aget-object v1, v6, v15

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v15, v6, v1

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v6, v23

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object/from16 v35, v1

    .line 500
    invoke-static {v7}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getLocalTimeName(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Ljava/lang/String;

    .line 502
    :goto_3
    invoke-virtual {v10, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 506
    iget-object v13, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/16 v20, 0x0

    invoke-static {v13}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$200(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)Z

    move-result v21

    iget-object v1, v14, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    move-object/from16 v7, v18

    move-object/from16 v15, v17

    move-object v14, v7

    move-object/from16 v42, v15

    move-wide v15, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v12

    move-object/from16 v19, v8

    move-object/from16 v22, v1

    invoke-static/range {v13 .. v22}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$300(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;Ljava/util/Calendar;J[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/String;)V

    move/from16 v16, v4

    goto/16 :goto_2

    :cond_8
    move-object/from16 v35, v1

    move-object v7, v13

    move-object/from16 v42, v17

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, p1

    move-wide/from16 v2, v31

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    goto/16 :goto_1

    :cond_9
    move-object/from16 v35, v1

    move-wide/from16 v31, v2

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object v7, v13

    move-object/from16 v42, v17

    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_e

    .line 515
    iget-wide v1, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 516
    iget-wide v1, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-static {v7}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getTimeOffSet(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 517
    invoke-static {v7}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getDateName(Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v3

    .line 519
    new-instance v4, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    add-long v13, v1, v29

    sub-long v16, v13, v27

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x1

    aget-object v14, v3, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v3, v23

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object v13, v4

    move-wide v14, v1

    invoke-direct/range {v13 .. v19}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    .line 520
    invoke-static {v4}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isWeek(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v4}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v14, v3, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    aget-object v14, v3, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v3, v23

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_5

    .line 523
    :cond_a
    invoke-static {v4}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getLocalTimeName(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Ljava/lang/String;

    .line 525
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 526
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v14, v3, v13

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    aget-object v15, v3, v14

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-nez v15, :cond_d

    const/4 v15, 0x5

    .line 531
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 532
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v15

    add-int/lit8 v13, v16, -0x1

    int-to-long v13, v13

    mul-long v13, v13, v29

    sub-long v17, v1, v13

    int-to-long v1, v15

    mul-long v1, v1, v29

    add-long v1, v17, v1

    sub-long v19, v1, v27

    .line 535
    new-instance v1, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    const/16 v22, 0x1

    move-object/from16 v16, v1

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v22}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    .line 536
    invoke-static {v1}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 537
    invoke-static {v1}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisMonth(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    .line 538
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getMonthEn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 539
    iput-object v3, v1, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const/4 v2, 0x1

    .line 542
    sget-object v3, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_MONTH:Ljava/lang/String;

    iput-object v3, v1, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    .line 546
    :goto_6
    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move v2, v14

    .line 548
    iget v1, v15, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    add-int/2addr v1, v2

    iput v1, v15, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    :goto_7
    move/from16 v16, v6

    .line 579
    :cond_e
    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    iget v2, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    .line 580
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 581
    iget-object v2, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$400(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 583
    invoke-virtual {v2, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 584
    move-object v2, v1

    check-cast v2, Lcom/zui/gallery/data/LocalAlbum;

    iget-wide v3, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/data/LocalAlbum;->setDateInMs(J)V

    .line 585
    iget-object v3, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/data/LocalAlbum;->setFilePath(Ljava/lang/String;)V

    add-int/lit8 v2, v24, 0x1

    .line 586
    aput-object v1, v5, v24

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v15, p1

    move/from16 v24, v2

    move-object v13, v7

    move/from16 v9, v25

    move-object/from16 v4, v26

    move-wide/from16 v2, v31

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v1, v35

    move-object/from16 v14, v42

    goto/16 :goto_0

    :cond_f
    move-object/from16 v35, v1

    move-wide/from16 v31, v2

    move-object/from16 v26, v4

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v42, v14

    .line 591
    iget-object v1, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$500(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$500(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    check-cast v1, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    move-object/from16 v2, v42

    .line 592
    invoke-virtual {v1, v2, v5}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->updateMediaSet([Lcom/zui/gallery/data/BucketHelper$BucketEntry;[Lcom/zui/gallery/data/MediaSet;)V

    const/4 v2, 0x0

    goto :goto_8

    :cond_10
    move-object/from16 v35, v1

    move-wide/from16 v31, v2

    move-object/from16 v26, v4

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    .line 595
    iget-object v1, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$500(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;->this$0:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-static {v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->access$500(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    check-cast v1, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    const/4 v2, 0x0

    .line 596
    invoke-virtual {v1, v2, v2}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->updateMediaSet([Lcom/zui/gallery/data/BucketHelper$BucketEntry;[Lcom/zui/gallery/data/MediaSet;)V

    .line 599
    :goto_8
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v2

    .line 601
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeEntry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v35

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 604
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v4, v33

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 607
    :cond_12
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 608
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v4, v34

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 610
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localtime reload spend time "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v31

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v26
.end method
