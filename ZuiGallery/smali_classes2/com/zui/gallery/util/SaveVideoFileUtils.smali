.class public Lcom/zui/gallery/util/SaveVideoFileUtils;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/util/SaveVideoFileInfo;
    .locals 2

    .line 39
    new-instance v0, Lcom/zui/gallery/util/SaveVideoFileInfo;

    invoke-direct {v0}, Lcom/zui/gallery/util/SaveVideoFileInfo;-><init>()V

    .line 42
    invoke-static {p1, p2}, Lcom/zui/gallery/util/SaveVideoFileUtils;->getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 43
    iget-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    const-string v1, "Download"

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 46
    iput-object p3, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    .line 50
    :goto_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/sql/Date;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p0, p2, p3}, Ljava/sql/Date;-><init>(J)V

    .line 50
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    .line 53
    new-instance p0, Ljava/io/File;

    iget-object p1, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".mp4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method private static getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "_data"

    .line 76
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/util/SaveVideoFileUtils$1;

    invoke-direct {v2, v0}, Lcom/zui/gallery/util/SaveVideoFileUtils$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/zui/gallery/util/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    const/4 p0, 0x0

    .line 84
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static insertContent(Lcom/zui/gallery/util/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 94
    div-long v2, v0, v2

    .line 95
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 96
    iget-object v5, p0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "video/mp4"

    .line 98
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "date_modified"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_data"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_size"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/gallery/util/SaveVideoFileUtils;->retriveVideoDurationMs(Ljava/lang/String;)I

    move-result p0

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "duration"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "latitude"

    const-string v0, "longitude"

    const-string v2, "resolution"

    .line 107
    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v0, Lcom/zui/gallery/util/SaveVideoFileUtils$2;

    invoke-direct {v0, v4}, Lcom/zui/gallery/util/SaveVideoFileUtils$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p1, p2, p0, v0}, Lcom/zui/gallery/util/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    .line 137
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 61
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 63
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

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1
    throw p0

    :catch_0
    if-eqz v6, :cond_2

    .line 69
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public static retriveVideoDurationMs(Ljava/lang/String;)I
    .locals 1

    .line 143
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 144
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 145
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 150
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return p0
.end method
