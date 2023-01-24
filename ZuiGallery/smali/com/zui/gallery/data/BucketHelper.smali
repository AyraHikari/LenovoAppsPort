.class public Lcom/zui/gallery/data/BucketHelper;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = " 1) GROUP BY 1,(1"

.field private static final BUCKET_GROUP_BY_ALL_IMAGE:Ljava/lang/String; = " 1) and media_type=\'1\' GROUP BY 1,(1"

.field private static final BUCKET_GROUP_BY_ALL_TYPE:Ljava/lang/String; = " 1) and media_type in (1,3) GROUP BY 1,(1"

.field private static final BUCKET_GROUP_BY_ALL_VIDEO:Ljava/lang/String; = " 1) and media_type=\'3\' GROUP BY 1,(1"

.field private static final BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

.field private static final BUCKET_HAVING_IN_ONE_TABLE:Ljava/lang/String; = "sum(_size)>0"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

.field private static final CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE_MOTO:Ljava/lang/String; = "_display_name like \'%/_BURST%\' ESCAPE \'/\' and bucket_id in (?,?)"

.field private static final CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE_MOTO_P:Ljava/lang/String;

.field private static final EDITPATH_BY_IN_ONE_TABLE:Ljava/lang/String;

.field public static final EDITPATH_TABLE:[Ljava/lang/String;

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final FILEPATH_TABLE:[Ljava/lang/String;

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_ITEM_COUNT:I = 0x3

.field private static final INDEX_BUCKET_NAME:I = 0x2

.field private static final INDEX_DATE:I = 0x3

.field private static final INDEX_DATE_TAKEN:I = 0x1

.field private static final INDEX_MEDIA_TYPE:I = 0x1

.field private static final INDEX_SUM:I = 0x4

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

.field private static final PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

.field private static final PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE_MOTO:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BucketHelper"

.field private static queryFromFileTalbe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "bucket_id"

    const-string v1, "media_type"

    const-string v2, "bucket_display_name"

    .line 63
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v1, "MAX(datetaken)"

    const-string v3, "_data"

    const-string/jumbo v4, "sum(_size)"

    .line 103
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const/16 v1, 0x1d

    .line 120
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "1) GROUP BY 1,(1) having (sum(_size)>0"

    :goto_0
    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

    const-string v4, "bucket_id"

    const-string v5, "MAX(datetaken)"

    const-string v6, "bucket_display_name"

    const-string v7, "COUNT(_id)"

    const-string v8, "_data"

    const-string v9, "_id"

    .line 125
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v4, "_display_name"

    const-string v5, "datetaken"

    const-string v6, "bucket_id"

    const-string v7, "bucket_display_name"

    const-string v8, "COUNT(_id)"

    const-string v9, "_data"

    const-string v10, "_id"

    .line 134
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE_MOTO:[Ljava/lang/String;

    const/16 v1, 0x1e

    .line 147
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "bucket_display_name like \'continuous/_IMG/_%\' ESCAPE \'/\'"

    goto :goto_1

    :cond_1
    const-string v4, "1) and bucket_display_name like \'continuous/_IMG/_%\' ESCAPE \'/\'  GROUP BY (1"

    .line 152
    :goto_1
    sput-object v4, Lcom/zui/gallery/data/BucketHelper;->CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

    .line 155
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1) and _display_name like \'%/_EDIT/_%\' ESCAPE \'/\' and (1"

    goto :goto_2

    :cond_2
    const-string v1, "1) and _data like \'%/_EDIT/_%\' ESCAPE \'/\'  GROUP BY (1"

    .line 158
    :goto_2
    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->EDITPATH_BY_IN_ONE_TABLE:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1) and _display_name like \'%/_BURST%\' ESCAPE \'/\' and bucket_id in (?,?) GROUP BY (substr(_display_name,1,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getBurstNameSize()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/BucketHelper;->CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE_MOTO_P:Ljava/lang/String;

    const-string v1, "_id"

    .line 174
    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/BucketHelper;->FILEPATH_TABLE:[Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "mime_type"

    const-string v4, "_data"

    const-string v5, "bucket_id"

    const-string v6, "bucket_display_name"

    .line 181
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/BucketHelper;->EDITPATH_TABLE:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 191
    sput-boolean v0, Lcom/zui/gallery/data/BucketHelper;->queryFromFileTalbe:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 2

    .line 501
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 502
    invoke-static {}, Lcom/zui/gallery/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/zui/gallery/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    .line 505
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/zui/gallery/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 509
    :cond_2
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/zui/gallery/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method private static getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 478
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v5, v0

    .line 480
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "limit"

    const-string v0, "1"

    .line 481
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 483
    sget-object v3, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v4, "bucket_id = ?"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 486
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 487
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 491
    throw p1

    .line 490
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContinuousBucketEntry(Ljava/lang/String;Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 9

    const-string p0, "BucketHelper"

    const-string p1, "getContinuousBucketEntry"

    .line 614
    invoke-static {p0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    .line 618
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    const/16 p3, 0x1e

    .line 622
    invoke-static {p3}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result p3

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    .line 623
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getBurstNameSize()I

    .line 624
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android:query-arg-sql-group-by"

    const-string v2, "bucket_display_name"

    .line 625
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-object v1, Lcom/zui/gallery/data/BucketHelper;->CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

    const-string v2, "android:query-arg-sql-selection"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-sort-order"

    const-string v2, "MAX(datetaken) desc"

    .line 627
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    sget-object v1, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    invoke-virtual {p2, p1, v1, p3, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 630
    :cond_1
    sget-object v3, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    sget-object v4, Lcom/zui/gallery/data/BucketHelper;->CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "MAX(datetaken) desc"

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot open media database: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 638
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cusor Size ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 640
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_4

    .line 641
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    new-array v7, p0, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    const/4 p0, 0x0

    move p1, p0

    .line 643
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 645
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v1, 0x1

    .line 646
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    .line 647
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 648
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 649
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 651
    new-instance v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p3, v8}, Lcom/zui/gallery/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 652
    iput-wide v1, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    .line 653
    iput v3, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->itemCount:I

    .line 654
    iput v5, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->coverItemId:I

    if-eqz v4, :cond_3

    .line 655
    iget-object p3, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "/"

    .line 656
    invoke-virtual {v4, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v4, p0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 658
    :cond_3
    iput-object v4, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    .line 669
    aput-object v6, v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 682
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 683
    throw p0

    .line 682
    :cond_4
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v7
.end method

.method public static getContinuousBucketEntry([Ljava/lang/String;Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 10

    .line 542
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    .line 544
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    const/16 p3, 0x1e

    .line 547
    invoke-static {p3}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result p3

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    .line 548
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "substr(_display_name,1,"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getBurstNameSize()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 549
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android:query-arg-sql-group-by"

    .line 550
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "android:query-arg-sql-selection"

    const-string v2, "_display_name like \'%/_BURST%\' ESCAPE \'/\' and bucket_id in (?,?)"

    .line 551
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "android:query-arg-sql-selection-args"

    .line 552
    invoke-virtual {v1, p3, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "android:query-arg-sql-sort-order"

    const-string p3, "MIN(datetaken) desc"

    .line 553
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sget-object p0, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE_MOTO:[Ljava/lang/String;

    invoke-virtual {p2, p1, p0, v1, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 556
    :cond_1
    sget-object v3, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_CONTINUOUS_BUCKET_IN_ONE_TABLE_MOTO:[Ljava/lang/String;

    sget-object v4, Lcom/zui/gallery/data/BucketHelper;->CONTINUOUS_BUCKET_GROUP_BY_IN_ONE_TABLE_MOTO_P:Ljava/lang/String;

    const-string v6, "MIN(datetaken) desc"

    move-object v1, p2

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    .line 560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot open media database: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BucketHelper"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    if-eqz p0, :cond_4

    .line 564
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 565
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-array v7, p1, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    const/4 p1, 0x0

    move p2, p1

    .line 567
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 577
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getBurstNameSize()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    .line 578
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    .line 579
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 580
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x5

    .line 581
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x6

    .line 582
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 584
    new-instance v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v4, v3}, Lcom/zui/gallery/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 585
    iput-wide v1, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    .line 586
    iput v5, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->itemCount:I

    .line 587
    iput v8, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->coverItemId:I

    .line 588
    iput-object p3, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->burstID:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 589
    iget-object p3, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "/"

    .line 590
    invoke-virtual {v6, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v6, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 592
    :cond_3
    iput-object v6, v9, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    .line 593
    aput-object v9, v7, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 606
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 607
    throw p1

    .line 606
    :cond_4
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v7
.end method

.method private static getFilesContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "external"

    .line 497
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static initLocalWhite(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BucketHelper"

    if-eqz p1, :cond_4

    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 347
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;

    .line 349
    sget-object v3, Lcom/zui/gallery/database/GalleryContract$Whites;->CONTENT_URI:Landroid/net/Uri;

    .line 350
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 351
    iget v4, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bucket_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 352
    iget-object v4, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->name:Ljava/lang/String;

    const-string v5, "display_name"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 353
    iget-object v4, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->path:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 354
    iget-object v4, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->path:Ljava/lang/String;

    const-string v5, "path"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 356
    :cond_1
    iget-boolean v4, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->isExist:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_exist"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 357
    iget-boolean v4, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->isWhite:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_white"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 358
    iget v2, v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    sget v4, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2

    .line 359
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "read_only"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 361
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "from_lesafe"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 362
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_0
    const-string p1, "batchInsertWhite, applyBatch start"

    .line 365
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.zui.gallery.provider"

    .line 366
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    const-string p0, "batchInsertWhite, applyBatch end"

    .line 367
    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    const-string p1, "batchInsertWhite, applyBatch OperationApplicationException"

    .line 374
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    :goto_2
    const-string p1, "batchInsertWhite, applyBatch RemoteException"

    .line 370
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void

    :cond_4
    :goto_4
    const-string p0, "lesafeWhite is empty!!"

    .line 343
    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isExistPath(Landroid/content/ContentResolver;ILjava/lang/String;)Z
    .locals 7

    .line 720
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 722
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    const/16 p1, 0x1e

    .line 725
    invoke-static {p1}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 726
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 727
    sget-object v1, Lcom/zui/gallery/data/BucketHelper;->EDITPATH_BY_IN_ONE_TABLE:Ljava/lang/String;

    const-string v2, "android:query-arg-sql-selection"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v1, Lcom/zui/gallery/data/BucketHelper;->BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

    const-string v2, "android:query-arg-sql-group-by"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-sort-order"

    const/4 v2, 0x0

    .line 729
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    sget-object v1, Lcom/zui/gallery/data/BucketHelper;->EDITPATH_TABLE:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 732
    :cond_1
    sget-object v3, Lcom/zui/gallery/data/BucketHelper;->EDITPATH_TABLE:[Ljava/lang/String;

    sget-object v4, Lcom/zui/gallery/data/BucketHelper;->EDITPATH_BY_IN_ONE_TABLE:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot open media database: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BucketHelper"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p0, :cond_4

    .line 740
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 741
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    .line 742
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 743
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 749
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 750
    throw p1

    .line 749
    :cond_4
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isFileExitInMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x1e

    .line 768
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1) and _data in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GROUP BY (1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    const-string p1, "bucket_id"

    .line 774
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string p1, "external"

    .line 777
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 778
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    const-string p0, "BucketHelper"

    const-string p2, "query file curosr is null"

    .line 780
    invoke-static {p0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 783
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 790
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
.end method

.method public static loadBucketEntries(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 1

    .line 195
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/gallery/data/BucketHelper;->queryFromFileTalbe:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntriesFromFilesTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object p0

    return-object p0

    .line 200
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object p0

    return-object p0
.end method

.method private static loadBucketEntriesFromFilesTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 10

    .line 419
    invoke-static {}, Lcom/zui/gallery/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v6

    and-int/lit8 v0, p2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    move p2, v7

    goto :goto_1

    :cond_1
    move p2, v8

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string p2, " 1) and media_type=\'1\' GROUP BY 1,(1"

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    const-string p2, " 1) and media_type=\'3\' GROUP BY 1,(1"

    goto :goto_3

    :cond_4
    :goto_2
    const-string p2, " 1) and media_type in (1,3) GROUP BY 1,(1"

    :goto_3
    move-object v3, p2

    .line 437
    sget-object v2, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MAX(datetaken) DESC"

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "kugoubug"

    if-nez p1, :cond_5

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cannot open local database: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v8, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    return-object p0

    .line 444
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    :cond_6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    .line 449
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBucketEntriesFromFilesTable bucket_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bucket_name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    .line 452
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "/"

    .line 454
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-le v6, v9, :cond_7

    .line 456
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 459
    :cond_7
    new-instance v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    invoke-direct {v6, v1, v2}, Lcom/zui/gallery/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 460
    iput-object v5, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    .line 461
    iput-wide v3, v6, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    .line 462
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 463
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_8
    invoke-interface {p0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    const/4 p0, 0x0

    .line 470
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object p0

    :cond_9
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    return-object p0

    :catchall_0
    move-exception p0

    .line 470
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 471
    throw p0
.end method

.method private static loadBucketEntriesFromImagesAndVideoTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 2

    .line 382
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 384
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1, v0}, Lcom/zui/gallery/data/BucketHelper;->updateBucketEntriesFromTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    :cond_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 388
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/zui/gallery/data/BucketHelper;->updateBucketEntriesFromTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 391
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 394
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 395
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 396
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load all bucket from file table :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "kugoubug"

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_2
    :try_start_0
    new-instance p1, Lcom/zui/gallery/data/BucketHelper$1;

    invoke-direct {p1}, Lcom/zui/gallery/data/BucketHelper$1;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "BucketHelper"

    const-string v0, "compare exception "

    .line 411
    invoke-static {p2, v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p0
.end method

.method public static renameBucketName(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .locals 1

    .line 516
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lcom/zui/gallery/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/zui/gallery/data/BucketHelper;->renameBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static renameBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 524
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 526
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "limit"

    const-string v1, "1"

    .line 527
    invoke-virtual {p1, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 529
    sget-object v3, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v4, "bucket_id = ?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 531
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "bucket_display_name"

    .line 532
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "bucket_id = ?"

    .line 533
    invoke-virtual {p0, p1, v1, p3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 535
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private static updateBucketEntriesFromTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$JobContext;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/data/BucketHelper$BucketEntry;",
            ">;)V"
        }
    .end annotation

    const/16 p0, 0x1e

    .line 207
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 208
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 209
    sget-object v0, Lcom/zui/gallery/data/BucketHelper;->BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String;

    const-string v1, "android:query-arg-sql-group-by"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-selection"

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-having"

    const-string/jumbo v2, "sum(_size)>0"

    .line 211
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-sort-order"

    .line 212
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_0
    sget-object v2, Lcom/zui/gallery/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "bucket_id"

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    const-string p1, "BucketHelper"

    if-nez p0, :cond_1

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot open media database: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 225
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 226
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangccc"

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 228
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x3

    .line 229
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 231
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bucked "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is empty"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 240
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 242
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "/"

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_4

    .line 250
    invoke-virtual {v4, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 254
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    if-nez p2, :cond_5

    .line 256
    new-instance p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    invoke-direct {p2, v0, v1}, Lcom/zui/gallery/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 257
    iput-object v4, p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    .line 258
    iput-wide v2, p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iput-wide v2, p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    goto/16 :goto_1

    .line 262
    :cond_5
    iget-wide v0, p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 266
    :cond_6
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 267
    throw p1
.end method

.method private static updateLocalWhite(Landroid/content/ContentResolver;Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "batchUpdateWhite, applyBatch end count "

    const-string v1, "batchUpdateWhite, applyBatch OperationApplicationException"

    const-string v2, "batchUpdateWhite, applyBatch start"

    const-string v3, "BucketHelper"

    if-eqz p1, :cond_1

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto/16 :goto_3

    .line 279
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from_lesafe=1 and is_exist=0 and bucket_id"

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in ("

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {v4, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->appendIntegers(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    const-string v5, ")"

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x1

    .line 286
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "is_exist"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "is_white"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x0

    .line 289
    :try_start_0
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v10, Lcom/zui/gallery/database/GalleryContract$Whites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v6, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 294
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from_lesafe=1 and is_exist=1 and bucket_id"

    .line 299
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not in ("

    .line 300
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {v4, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->appendIntegers(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    .line 305
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    :try_start_1
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v8, Lcom/zui/gallery/database/GalleryContract$Whites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v10, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 313
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from_lesafe=0 and bucket_id"

    .line 319
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {v0, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->appendIntegers(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 322
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :try_start_2
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object p1, Lcom/zui/gallery/database/GalleryContract$Whites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "batchUpdateWhite, applyBatch end count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 331
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    :goto_3
    const-string p0, "batchUpdateWhite, bucketIds = null!!"

    .line 275
    invoke-static {v3, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
