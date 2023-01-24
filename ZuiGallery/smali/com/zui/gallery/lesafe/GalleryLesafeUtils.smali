.class public Lcom/zui/gallery/lesafe/GalleryLesafeUtils;
.super Ljava/lang/Object;
.source "GalleryLesafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;
    }
.end annotation


# static fields
.field private static final APPNAME_COLUMN_INDEX:I = 0x1

.field private static final APP_QQ_KEYS:Ljava/lang/String; = "QQ,qq,\u817e\u8baf"

.field private static final APP_WEIBO_KEY_STRING:Ljava/lang/String; = "\u5fae\u535a"

.field private static final APP_WEIXIN_KEY_STRING:Ljava/lang/String; = "\u5fae\u4fe1"

.field private static final AUTHORITY:Ljava/lang/String; = "com.zui.safecenter.lesafedata"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final DEEPNESS_COLUMN_INDEX:I = 0x2

.field private static final IMGINWHITELIST_COLUMN_INDEX:I = 0x1

.field public static final LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

.field private static final LESAFE_BLACK_PROJECTION:[Ljava/lang/String;

.field public static final LESAFE_WHITE_CONTENT_URI:Landroid/net/Uri;

.field private static final LESAFE_WHITE_PROJECTION:[Ljava/lang/String;

.field private static final PATH_COLUMN_INDEX:I = 0x0

.field public static final PATH_PREFIX:Ljava/lang/String;

.field public static PATH_PREFIX_OTHER:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GalleryLesafeUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    const-string v0, "/storage/0000-0000/"

    .line 43
    sput-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX_OTHER:Ljava/lang/String;

    const-string v0, "content://com.zui.safecenter.lesafedata"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "spaceclean/whitelist"

    .line 58
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_CONTENT_URI:Landroid/net/Uri;

    .line 64
    sget-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "spaceclean/blacklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "Path"

    const-string v1, "AppName"

    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_PROJECTION:[Ljava/lang/String;

    const-string v2, "ImgInWhiteList"

    const-string v3, "Deepness"

    .line 75
    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugQueryLesafeBlackList(Landroid/content/ContentResolver;)V
    .locals 6

    .line 135
    sget-object v1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_PROJECTION:[Ljava/lang/String;

    const-string v0, "LM0WuLG49D5awHDgPUHI9A=="

    const-string v3, "1"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "Path = ? and ImgInWhiteList = ?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string v0, "GalleryLesafeUtils"

    if-nez p0, :cond_0

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot open local database: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 146
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 157
    throw v0
.end method

.method public static filterFromLesafeBlackList(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 411
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "GalleryLesafeUtils"

    if-ge v5, v3, :cond_0

    aget-object v7, p1, v5

    .line 416
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInLesafeBlackList, lePath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {v8}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 423
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "path"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " in ("

    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-static {p1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->appendStrings(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v0, ")"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 430
    :try_start_0
    sget-object v8, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_PROJECTION:[Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    .line 430
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 432
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 433
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, p0, :cond_1

    .line 434
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "query lesafe exception "

    .line 440
    invoke-static {v6, p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_2
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :goto_2
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 443
    throw p0
.end method

.method public static filterFromLesafeBlackList(Landroid/content/ContentResolver;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "GalleryLesafeUtils"

    .line 258
    sget-object v2, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 259
    sget-object v3, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX_OTHER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 263
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v6, :cond_8

    aget-object v10, v0, v8

    .line 266
    iget-object v11, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    if-nez v11, :cond_0

    goto/16 :goto_4

    .line 270
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v2, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v3, :cond_1

    goto/16 :goto_3

    .line 276
    :cond_1
    sget-object v12, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 277
    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 278
    :cond_2
    sget-object v12, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX_OTHER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 279
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 286
    :goto_1
    invoke-static {v12}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->WEIXIN_VIDEO_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-eq v13, v14, :cond_5

    iget v13, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    if-ne v13, v14, :cond_3

    goto :goto_2

    .line 302
    :cond_3
    iget v9, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    sget v13, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    if-ne v9, v13, :cond_4

    .line 303
    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 305
    :cond_4
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v4, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 297
    :cond_5
    :goto_2
    iput-boolean v9, v10, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z

    .line 298
    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 282
    :cond_6
    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 271
    :cond_7
    :goto_3
    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 309
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v0

    .line 311
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Path"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " in ("

    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {v2, v5}, Lcom/zui/gallery/data/GroupBucketHelper;->appendStrings(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v0, ")"

    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 318
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 319
    sget-object v11, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_PROJECTION:[Ljava/lang/String;

    const-string v13, "ImgInWhiteList = 1 "

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 322
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 323
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    if-eqz v5, :cond_a

    .line 329
    invoke-static {v6}, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->getAppFolderType(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->appType:I

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is white  type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->appType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isSimpleChinese()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 333
    iput-object v6, v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    .line 336
    :cond_b
    iput-boolean v9, v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_a

    :cond_c
    if-eqz v3, :cond_d

    .line 348
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "query lesafe white list exception "

    .line 345
    invoke-static {v1, v5, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_d

    goto :goto_5

    .line 353
    :cond_d
    :goto_6
    :try_start_2
    sget-object v11, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_PROJECTION:[Ljava/lang/String;

    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    .line 353
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 356
    :cond_e
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 359
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    .line 360
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 361
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_10

    if-nez v2, :cond_10

    .line 363
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    if-eqz v0, :cond_e

    .line 365
    iget-boolean v2, v0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z

    if-eqz v2, :cond_f

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in white list also in black list, crazy! "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 368
    :cond_f
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in black list remove! "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    if-ne v0, v9, :cond_e

    if-ne v2, v9, :cond_e

    .line 373
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    if-eqz v0, :cond_e

    .line 375
    iput-boolean v9, v0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :cond_11
    if-eqz v3, :cond_12

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "getLesafeWhiteList exception"

    .line 384
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_12

    .line 387
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_12
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 392
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 394
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterFromLesafeBlackList :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "kugoubug"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    aput-object v2, v0, v7

    add-int/2addr v7, v9

    goto :goto_9

    :cond_13
    return-object v0

    :goto_a
    if-eqz v3, :cond_14

    .line 387
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_14
    throw v0

    :goto_b
    if-eqz v3, :cond_15

    .line 348
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_15
    throw v0
.end method

.method private static getAppFolderType(Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_3

    const-string v0, "QQ,qq,\u817e\u8baf"

    const-string v1, ","

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    array-length v1, v0

    if-lez v1, :cond_1

    .line 230
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 231
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u5fae\u4fe1"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string/jumbo v0, "\u5fae\u535a"

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static getLesafeWhiteList(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "GalleryLesafeUtils"

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 101
    :try_start_0
    sget-object v4, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_PROJECTION:[Ljava/lang/String;

    const-string v6, "ImgInWhiteList = 1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 106
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open local database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_WHITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v2

    .line 109
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 110
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 111
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    new-instance v4, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;

    invoke-direct {v4, v2, v3}, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    :goto_1
    :try_start_3
    const-string v3, "getLesafeWhiteList exception"

    .line 120
    invoke-static {v0, v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_2
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 123
    throw v0
.end method

.method public static isInLesafeBlackList(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10

    .line 172
    sget-object v0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInLesafeBlackList, lePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryLesafeUtils"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 191
    :try_start_0
    sget-object v4, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_PROJECTION:[Ljava/lang/String;

    const-string v6, "path=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    aput-object p1, v7, v0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cannot open local database: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->LESAFE_BLACK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v0

    .line 208
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 209
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v9, :cond_1

    move v0, v9

    .line 214
    :cond_1
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "query lesafeexception "

    .line 212
    invoke-static {v1, p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :cond_2
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v0

    :goto_0
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 215
    throw p0
.end method
