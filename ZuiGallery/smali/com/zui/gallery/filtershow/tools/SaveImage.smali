.class public Lcom/zui/gallery/filtershow/tools/SaveImage;
.super Ljava/lang/Object;
.source "SaveImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;,
        Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;
    }
.end annotation


# static fields
.field private static final AUX_DIR_NAME:Ljava/lang/String; = ".aux"

.field public static final DEFAULT_SAVE_DIRECTORY:Ljava/lang/String; = "EditedOnlinePhotos"

.field private static final LOGTAG:Ljava/lang/String; = "SaveImage"

.field public static final MAX_PROCESSING_STEPS:I = 0x6

.field private static final MaxSize:I = 0x3f3b8

.field private static final POSTFIX_JPG:Ljava/lang/String; = ".jpg"

.field private static final PREFIX_IMG:Ljava/lang/String; = "IMG"

.field private static final PREFIX_PANO:Ljava/lang/String; = "PANO"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "_yyyyMMdd_HHmmss"


# instance fields
.field private listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;

.field private final mCallback:Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentProcessingStep:I

.field private final mDestinationFile:Ljava/io/File;

.field private final mPreviewImage:Landroid/graphics/Bitmap;

.field private final mSelectedImageUri:Landroid/net/Uri;

.field private final mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCurrentProcessingStep:I

    .line 585
    new-instance v0, Lcom/zui/gallery/filtershow/tools/SaveImage$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/tools/SaveImage$3;-><init>(Lcom/zui/gallery/filtershow/tools/SaveImage;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;

    .line 151
    iput-object p1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSourceUri:Landroid/net/Uri;

    .line 153
    iput-object p6, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCallback:Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;

    .line 154
    iput-object p5, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    if-nez p4, :cond_0

    .line 156
    invoke-static {p1, p3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    goto :goto_0

    .line 158
    :cond_0
    iput-object p4, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    .line 161
    :goto_0
    iput-object p3, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/tools/SaveImage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->addFileInfoToSqlite(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/tools/SaveImage;)Landroid/net/Uri;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSourceUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/tools/SaveImage;)Ljava/io/File;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    return-object p0
.end method

.method private addFileInfoToSqlite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "file_model"

    const-string v3, "file_make"

    const-string v4, "/"

    .line 616
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "."

    .line 618
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 619
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filePath = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & fileName is "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "wcccc"

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/zui/gallery/database/GalleryContract$PrivacyFiles;->CONTENT_URI:Landroid/net/Uri;

    new-array v11, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v4, v11, v0

    const/4 v9, 0x0

    const-string/jumbo v10, "title=? "

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " & name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    .line 626
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 628
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v4, 0x8

    .line 632
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v4, 0x6

    .line 633
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 635
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 640
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ""

    if-nez v4, :cond_0

    move-object/from16 v19, v8

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    .line 641
    :goto_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object/from16 v20, v8

    goto :goto_2

    :cond_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    :goto_2
    const/16 v4, 0x11

    .line 644
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v4, 0x9

    .line 646
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v23

    const/16 v4, 0xb

    .line 648
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/4 v4, 0x3

    .line 650
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v4, 0x7

    .line 652
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v4, "delete_time_stamp"

    .line 653
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v4, "media_type"

    .line 654
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v30, 0x1

    .line 657
    iget-object v8, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v15, 0x0

    const-string/jumbo v21, "state"

    const/16 v28, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v30}, Lcom/zui/gallery/util/GalleryUtils;->insertPrivacyDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 662
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public static deleteAuxFiles(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    .line 195
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Lcom/zui/gallery/filtershow/tools/SaveImage$1;

    invoke-direct {v2, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage$1;-><init>([Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->querySourceFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    const/4 p0, 0x0

    .line 205
    aget-object p1, v0, p0

    if-eqz p1, :cond_1

    .line 209
    new-instance p1, Ljava/io/File;

    aget-object v0, v0, p0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalAuxDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    new-instance v1, Lcom/zui/gallery/filtershow/tools/SaveImage$2;

    invoke-direct {v1, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage$2;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 231
    array-length v0, p1

    :goto_1
    if-ge p0, v0, :cond_1

    aget-object v1, p1, p0

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;
    .locals 5

    .line 922
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 925
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 929
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "date_modified"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 930
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "date_added"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x0

    .line 931
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "orientation"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    const-string v1, "_data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "_size"

    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "mini_thumb_magic"

    .line 936
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "latitude"

    const-string p3, "longitude"

    .line 938
    filled-new-array {v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 943
    new-instance p3, Lcom/zui/gallery/filtershow/tools/SaveImage$6;

    invoke-direct {p3, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage$6;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    return-object v0
.end method

.method public static getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 977
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 979
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 980
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEditPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_EDIT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    .line 1003
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 1004
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1005
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1006
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/zui/gallery/data/BucketHelper;->isExistPath(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1011
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const-string v0, "SaveImage"

    const-string v2, "The largest editor 100"

    .line 1014
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 1

    .line 165
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_1

    .line 167
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    const-string v0, "EditedOnlinePhotos"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object p0
.end method

.method private static getLocalAuxDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 731
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 732
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".aux"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SaveImage"

    if-nez p1, :cond_0

    const-string/jumbo p0, "srcUri is null."

    .line 822
    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 826
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "scheme is null."

    .line 828
    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "content"

    .line 835
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 836
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 837
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string v1, "_data"

    .line 838
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/filtershow/tools/SaveImage$4;

    invoke-direct {v2, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage$4;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    goto :goto_0

    :cond_3
    const-string p0, "file"

    .line 849
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 850
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object p0, v0, v3

    .line 852
    :cond_4
    :goto_0
    aget-object p0, v0, v3

    return-object p0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 5

    .line 177
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 178
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->hasPanoPrefix(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    const-string p1, ".jpg"

    if-eqz p0, :cond_0

    .line 181
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PANO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 183
    :cond_0
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getOriginFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 1023
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1025
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getOriginPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1026
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOriginPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Lcom/zui/gallery/data/BucketHelper;->isExistPath(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const-string v0, "SaveImage"

    const-string v2, "The largest editor 100"

    .line 1043
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrivacyEditFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 989
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPrivacyImgOrientation(Ljava/lang/String;)I
    .locals 10

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmmmm"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "."

    .line 566
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 567
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8981\u67e5\u8bad\u7684fileName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$PrivacyFiles;->CONTENT_URI:Landroid/net/Uri;

    new-array v8, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v8, v0

    const/4 v6, 0x0

    const-string/jumbo v7, "title=? "

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 574
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "image_orientation"

    .line 575
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 576
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 580
    throw v0

    :cond_1
    :goto_1
    return v0
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 807
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 809
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTrueFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    .line 863
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/filtershow/tools/SaveImage$5;

    invoke-direct {v2, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage$5;-><init>([Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    const/4 p0, 0x0

    .line 871
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hasPanoPrefix(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    .line 878
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getTrueFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "PANO"

    .line 879
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFileUri(Landroid/net/Uri;)Z
    .locals 1

    .line 969
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "file"

    .line 970
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;
    .locals 1

    .line 893
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 894
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object p2

    .line 900
    invoke-static {p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->isFileUri(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 908
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 903
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 738
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 740
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".JPG"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 741
    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private moveSrcToAuxIfNeeded(Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;
    .locals 7

    .line 677
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    const-string v1, "SaveImage"

    if-nez v0, :cond_0

    const-string p2, "Source file is not a local file, no update."

    .line 679
    invoke-static {v1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 685
    :cond_0
    invoke-static {p2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalAuxDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 686
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 687
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    return-object p1

    .line 695
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 698
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Can\'t create the nomedia"

    .line 700
    invoke-static {v1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 706
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    .line 710
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 714
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 716
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 719
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4

    .line 720
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object p1

    .line 726
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V
    .locals 0

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 784
    invoke-static {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->querySourceFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    return-void
.end method

.method private static querySourceFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 792
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 795
    invoke-interface {p3, v6}, Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_1

    .line 801
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_1
    throw p0

    :catch_0
    if-eqz v6, :cond_2

    .line 801
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private resetProgress()V
    .locals 1

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCurrentProcessingStep:I

    return-void
.end method

.method private resetToOriginalImageIfNeeded(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)Landroid/net/Uri;
    .locals 7

    .line 318
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->hasModifications()Z

    move-result p1

    if-nez p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSourceUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 329
    iget-object v1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, p2

    .line 329
    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/filtershow/tools/SaveImage;->linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static saveImage(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V
    .locals 9

    .line 746
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSelectedImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 747
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x5a

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    .line 753
    invoke-static/range {v0 .. v8}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getSaveIntent(Landroid/content/Context;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;ZIFZ)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "is_from_privacy"

    .line 755
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "preset"

    .line 757
    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "destinationFile"

    .line 758
    invoke-virtual {p0, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    const-string p3, "selectedUri"

    .line 759
    invoke-virtual {p0, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    const-string/jumbo p3, "sourceUri"

    .line 760
    invoke-virtual {p0, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    .line 761
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "total intent size:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SaveImage"

    invoke-static {v0, p3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x3f3b8

    if-le p2, p3, :cond_0

    const p0, 0x7f1000b5

    const/4 p2, 0x0

    .line 763
    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 764
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V
    .locals 2

    .line 348
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 349
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 348
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/zui/gallery/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 350
    sget p2, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 p3, 0x1

    .line 351
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    .line 350
    invoke-virtual {p1, p2, p3}, Lcom/zui/gallery/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/exif/ExifInterface;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 353
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifInterface;->removeCompressedThumbnail()V

    return-void
.end method

.method public static updateFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/net/Uri;
    .locals 0

    .line 915
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object p2

    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object p1
.end method

.method private updateProgress()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCallback:Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 342
    iget v2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCurrentProcessingStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCurrentProcessingStep:I

    invoke-interface {v0, v1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;->onProgress(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;
    .locals 6

    const-string v0, "SaveImage"

    .line 262
    new-instance v1, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v1}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 263
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "image/jpeg"

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 275
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read exif for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :goto_1
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 278
    throw p1

    :cond_1
    :goto_2
    return-object v1
.end method

.method public getPanoramaXMPData(Landroid/net/Uri;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;
    .locals 3

    .line 240
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->isPanoramaSafe()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 243
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    invoke-static {p1}, Lcom/zui/gallery/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_1
    :try_start_2
    const-string v1, "SaveImage"

    const-string v2, "Failed to get XMP data from image: "

    .line 246
    invoke-static {v1, v2, p2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v0, p1

    .line 248
    :goto_2
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 249
    throw p2

    :cond_0
    :goto_3
    return-object v0
.end method

.method public processAndSaveImage(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ZIFZZ)Landroid/net/Uri;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v4, 0x0

    if-eqz p5, :cond_0

    xor-int/lit8 v0, p2, 0x1

    .line 361
    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->resetToOriginalImageIfNeeded(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_1

    return-object v4

    .line 367
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->resetProgress()V

    .line 376
    iget-object v5, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSourceUri:Landroid/net/Uri;

    if-nez p2, :cond_2

    .line 378
    iget-object v6, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-direct {v1, v5, v6}, Lcom/zui/gallery/filtershow/tools/SaveImage;->moveSrcToAuxIfNeeded(Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 381
    :cond_2
    iget-object v6, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    .line 382
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    if-eqz p2, :cond_3

    goto :goto_1

    .line 399
    :cond_3
    invoke-virtual {v1, v5, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPanoramaXMPData(Landroid/net/Uri;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;

    move-result-object v7

    .line 400
    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;

    move-result-object v8

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 402
    invoke-direct {v1, v8, v12, v13}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V

    .line 404
    iget-object v9, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    iget-object v10, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v9, v8, v10, v3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 405
    iget-object v6, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v1, v6, v7}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z

    if-nez p2, :cond_4

    .line 408
    iget-object v6, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-static {v6, v5, v7, v2}, Lcom/zui/gallery/filtershow/tools/XmpPresets;->writeFilterXMP(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 413
    :cond_4
    iget-object v9, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    xor-int/lit8 v14, p2, 0x1

    invoke-static/range {v9 .. v14}, Lcom/zui/gallery/filtershow/tools/SaveImage;->linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;

    move-result-object v6

    .line 417
    :cond_5
    :goto_1
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCallback:Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;

    if-eqz v7, :cond_6

    .line 418
    invoke-interface {v7, v6}, Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;->onPreviewSaved(Landroid/net/Uri;)V

    :cond_6
    const-string/jumbo v7, "wangcantime"

    const-string v8, "SavingImage...processAndSaveImage"

    .line 423
    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v12, v0

    move v15, v10

    const/4 v13, 0x1

    const/4 v14, 0x1

    :goto_2
    if-eqz v13, :cond_12

    .line 427
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateProgress()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    const-string/jumbo v0, "wccc"

    if-eqz p6, :cond_7

    .line 431
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromPrivacy,,,newSourceUri 333 is "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFile(Ljava/lang/String;)[B

    move-result-object v4

    .line 433
    array-length v11, v4

    invoke-static {v4, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 434
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPrivacyImgOrientation(Ljava/lang/String;)I

    move-result v11

    .line 435
    invoke-static {v4, v11}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmap is "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_8

    .line 438
    :cond_7
    :try_start_2
    iget-object v4, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v14}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadOrientedBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 441
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v16, v12

    .line 442
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v17, v13

    :try_start_4
    const-string v13, "SavingImage...pre111 is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v10, v8

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_8

    const/4 v10, 0x0

    return-object v10

    :cond_8
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, p4, v11

    if-eqz v11, :cond_b

    .line 448
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, p4

    float-to-int v11, v11

    .line 449
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, p4

    float-to-int v12, v12

    if-eqz v11, :cond_9

    if-nez v12, :cond_a

    :cond_9
    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 454
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/4 v13, 0x1

    .line 455
    invoke-static {v4, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 457
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SavingImage...pre222 is "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v11, v18

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateProgress()V

    .line 460
    new-instance v10, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v11

    const-string v12, "Saving"

    invoke-direct {v10, v11, v12}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v10, v4, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->renderFinalImage(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateProgress()V

    .line 466
    invoke-virtual {v1, v5, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPanoramaXMPData(Landroid/net/Uri;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;

    move-result-object v10

    .line 467
    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;

    move-result-object v11

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateProgress()V

    .line 471
    invoke-direct {v1, v11, v12, v13}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateProgress()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v18, v7

    .line 475
    :try_start_5
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v1, v7, v11, v4, v3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 476
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v1, v7, v10}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z

    if-nez p2, :cond_c

    .line 479
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-static {v7, v5, v10, v2}, Lcom/zui/gallery/filtershow/tools/XmpPresets;->writeFilterXMP(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 481
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-static {v7, v6, v10, v12, v13}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/net/Uri;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :cond_c
    move-object/from16 v12, v16

    :goto_4
    if-eqz v4, :cond_d

    .line 489
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_d

    .line 490
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz p6, :cond_f

    const/4 v4, 0x1

    .line 495
    sput-boolean v4, Lcom/zui/gallery/banner/FileListDetailsActivity;->deleteOrModifyFileNotification:Z

    goto :goto_5

    :cond_e
    move-object/from16 v12, v16

    :cond_f
    :goto_5
    if-eqz p6, :cond_10

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encrypt after save, getPath is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v19

    sget-object v20, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;

    move-object/from16 v24, v0

    invoke-virtual/range {v19 .. v24}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->encryptForSave(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;ZLcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;)V

    .line 505
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateProgress()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    .line 507
    :try_start_7
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/util/GalleryBitmapPool;->clear()V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v7, v18

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v18, v7

    :goto_6
    move-object/from16 v12, v16

    :goto_7
    move/from16 v13, v17

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v18, v7

    move/from16 v17, v13

    move-object/from16 v12, v16

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v16, v12

    move/from16 v17, v13

    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x5

    if-ge v15, v4, :cond_11

    .line 513
    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int/lit8 v14, v14, 0x2

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->resetProgress()V

    move-object/from16 v7, v18

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 511
    :cond_11
    throw v0

    :cond_12
    move-object/from16 v16, v12

    move/from16 v17, v13

    .line 519
    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    if-eqz v17, :cond_16

    if-eqz p2, :cond_13

    .line 521
    invoke-virtual {v1, v5, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPanoramaXMPData(Landroid/net/Uri;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;

    move-result-object v0

    .line 522
    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;

    move-result-object v2

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 524
    invoke-direct {v1, v2, v4, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V

    .line 525
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    iget-object v8, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v7, v2, v8, v3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 526
    iget-object v2, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z

    .line 527
    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getContentValues(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object v0

    .line 528
    iget-object v2, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_9

    .line 533
    :cond_13
    invoke-virtual {v1, v5, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPanoramaXMPData(Landroid/net/Uri;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;

    move-result-object v0

    .line 534
    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;

    move-result-object v4

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 536
    invoke-direct {v1, v4, v10, v11}, Lcom/zui/gallery/filtershow/tools/SaveImage;->updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V

    .line 538
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    iget-object v8, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v7, v4, v8, v3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 539
    iget-object v3, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v1, v3, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z

    if-nez p2, :cond_14

    .line 542
    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    invoke-static {v0, v5, v3, v2}, Lcom/zui/gallery/filtershow/tools/XmpPresets;->writeFilterXMP(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 547
    :cond_14
    iget-object v7, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mSelectedImageUri:Landroid/net/Uri;

    iget-object v9, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mDestinationFile:Ljava/io/File;

    const/4 v2, 0x1

    xor-int/lit8 v12, p2, 0x1

    invoke-static/range {v7 .. v12}, Lcom/zui/gallery/filtershow/tools/SaveImage;->linkNewFileToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;

    move-result-object v6

    .line 551
    :cond_15
    :goto_9
    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mCallback:Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;

    if-eqz v0, :cond_16

    .line 552
    invoke-interface {v0, v6}, Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;->onPreviewSaved(Landroid/net/Uri;)V

    .line 555
    :cond_16
    iget-object v0, v1, Lcom/zui/gallery/filtershow/tools/SaveImage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zui/gallery/util/GroupUtils;->setSavingTaskState(Landroid/content/Context;Z)V

    return-object v16
.end method

.method public putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z
    .locals 8

    const-string v0, "SaveImage"

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & exif is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & bitmap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & jpegCompressQuality is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wccc"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 290
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 291
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 292
    sget v6, Lcom/zui/gallery/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Lcom/zui/gallery/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 293
    sget v4, Lcom/zui/gallery/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/zui/gallery/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/zui/gallery/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 297
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    invoke-virtual {p3, v6, p4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string/jumbo p3, "wangcantime"

    .line 299
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SavingImage=== compress time is "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v3, p2

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v3, p2

    goto :goto_1

    :catch_1
    move-exception p3

    move-object v3, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    .line 308
    :goto_1
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " e222 is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Could not write exif: "

    .line 309
    invoke-static {v0, p2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    :goto_2
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_3
    move-exception p3

    .line 305
    :goto_3
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " e111 is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "File not found: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_4
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 311
    :goto_6
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 312
    throw p1
.end method

.method public putPanoramaXMPData(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/zui/gallery/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
