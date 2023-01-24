.class public Lcom/zui/gallery/common/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/common/FileCache$DatabaseHelper;,
        Lcom/zui/gallery/common/FileCache$FileEntry;,
        Lcom/zui/gallery/common/FileCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final FILE_POSTFIX:Ljava/lang/String; = ".tmp"

.field private static final FILE_PREFIX:Ljava/lang/String; = "download"

.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final PROJECTION_SIZE_SUM:[Ljava/lang/String;

.field private static final QUERY_WHERE:Ljava/lang/String; = "hash_code=? AND content_url=?"

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FileCache"


# instance fields
.field private mCapacity:J

.field private mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

.field private final mEntryMap:Lcom/zui/gallery/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/common/LruCache<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/common/FileCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mRootDir:Ljava/io/File;

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    sget-object v0, Lcom/zui/gallery/common/FileCache$FileEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    invoke-virtual {v0}, Lcom/zui/gallery/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    const-string/jumbo v5, "sum(%s)"

    .line 46
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/zui/gallery/common/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "filename"

    const-string v5, "content_url"

    .line 47
    filled-new-array {v1, v2, v5, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/common/FileCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "last_access"

    aput-object v1, v0, v3

    const-string v1, "%s ASC"

    .line 51
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/common/FileCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/zui/gallery/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zui/gallery/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/zui/gallery/common/FileCache;->mInitialized:Z

    .line 91
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    .line 92
    iput-wide p4, p0, Lcom/zui/gallery/common/FileCache;->mCapacity:J

    .line 93
    new-instance p2, Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-direct {p2, p0, p1, p3}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;-><init>(Lcom/zui/gallery/common/FileCache;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/common/FileCache;)Ljava/io/File;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    return-object p0
.end method

.method public static deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 77
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v0, p0, p2

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".tmp"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "FileCache"

    const-string p2, "cannot reset database"

    .line 86
    invoke-static {p1, p2, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private freeSomeSpaceIfNeed(I)V
    .locals 11

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/zui/gallery/common/FileCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    sget-object v8, Lcom/zui/gallery/common/FileCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-lez p1, :cond_2

    .line 224
    :try_start_0
    iget-wide v1, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    iget-wide v3, p0, Lcom/zui/gallery/common/FileCache;->mCapacity:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 225
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 226
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 227
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 228
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 229
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 231
    iget-object v9, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    iget-object v10, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v10, v6}, Lcom/zui/gallery/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v9

    goto :goto_0

    .line 234
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, -0x1

    .line 237
    :try_start_2
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    iget-wide v5, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    .line 239
    iget-object v5, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {v5}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v7, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 240
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 239
    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "FileCache"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 234
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    throw p1

    .line 246
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 9

    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/common/FileCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 197
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/zui/gallery/common/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_3
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 212
    iget-wide v0, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/zui/gallery/common/FileCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/zui/gallery/common/FileCache;->freeSomeSpaceIfNeed(I)V

    :cond_4
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/zui/gallery/common/FileCache;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 210
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 211
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queryDatabase(Ljava/lang/String;)Lcom/zui/gallery/common/FileCache$FileEntry;
    .locals 11

    .line 167
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 168
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 169
    iget-object p1, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object p1, Lcom/zui/gallery/common/FileCache$FileEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    .line 170
    invoke-virtual {p1}, Lcom/zui/gallery/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "hash_code=? AND content_url=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 169
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 173
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 174
    :cond_0
    :try_start_1
    new-instance v0, Lcom/zui/gallery/common/FileCache$FileEntry;

    invoke-direct {v0, v1}, Lcom/zui/gallery/common/FileCache$FileEntry;-><init>(Lcom/zui/gallery/common/FileCache$1;)V

    .line 175
    sget-object v1, Lcom/zui/gallery/common/FileCache$FileEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    invoke-virtual {v1, p1, v0}, Lcom/zui/gallery/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/zui/gallery/common/Entry;)Lcom/zui/gallery/common/Entry;

    .line 176
    iget-wide v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->id:J

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/common/FileCache;->updateLastAccess(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 180
    throw v0
.end method

.method private updateLastAccess(J)V
    .locals 4

    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_access"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    iget-object v1, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 187
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "_id=?"

    .line 186
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->close()V

    return-void
.end method

.method public createFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    const-string v1, "download"

    const-string v2, ".tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lcom/zui/gallery/common/FileCache$CacheEntry;
    .locals 9

    .line 131
    iget-boolean v0, p0, Lcom/zui/gallery/common/FileCache;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/common/FileCache;->initialize()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/common/FileCache$CacheEntry;

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_1

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    invoke-static {v1}, Lcom/zui/gallery/common/FileCache$CacheEntry;->access$100(Lcom/zui/gallery/common/FileCache$CacheEntry;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/common/FileCache;->updateLastAccess(J)V

    .line 140
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 144
    :cond_1
    monitor-enter p0

    .line 145
    :try_start_2
    invoke-direct {p0, p1}, Lcom/zui/gallery/common/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/zui/gallery/common/FileCache$FileEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 146
    monitor-exit p0

    return-object v1

    .line 147
    :cond_2
    new-instance v8, Lcom/zui/gallery/common/FileCache$CacheEntry;

    iget-wide v3, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->id:J

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    iget-object v5, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/common/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;Lcom/zui/gallery/common/FileCache$1;)V

    .line 149
    iget-object v2, v8, Lcom/zui/gallery/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v2, :cond_3

    .line 151
    :try_start_3
    iget-object p1, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    invoke-virtual {p1}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    sget-object v2, Lcom/zui/gallery/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->id:J

    .line 152
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 151
    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    iget-wide v2, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    iget-wide v4, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    const-string v2, "FileCache"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :goto_0
    monitor-exit p0

    return-object v1

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 160
    :try_start_5
    iget-object v1, p0, Lcom/zui/gallery/common/FileCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v1, p1, v8}, Lcom/zui/gallery/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v8

    :catchall_2
    move-exception p1

    .line 161
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :catchall_3
    move-exception p1

    .line 163
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 135
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1
.end method

.method public store(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .line 102
    iget-boolean v0, p0, Lcom/zui/gallery/common/FileCache;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/common/FileCache;->initialize()V

    .line 104
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 105
    new-instance v0, Lcom/zui/gallery/common/FileCache$FileEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/common/FileCache$FileEntry;-><init>(Lcom/zui/gallery/common/FileCache$1;)V

    .line 106
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->hashCode:J

    .line 107
    iput-object p1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->contentUrl:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->lastAccess:J

    .line 111
    iget-wide v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    iget-wide v3, p0, Lcom/zui/gallery/common/FileCache;->mCapacity:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/common/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/zui/gallery/common/FileCache$FileEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 119
    iget-object p2, p1, Lcom/zui/gallery/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    iput-object p2, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 120
    iget-wide p1, p1, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    iput-wide p1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    goto :goto_0

    .line 122
    :cond_1
    iget-wide p1, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    iget-wide v1, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    .line 124
    :goto_0
    sget-object p1, Lcom/zui/gallery/common/FileCache$FileEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    iget-object p2, p0, Lcom/zui/gallery/common/FileCache;->mDbHelper:Lcom/zui/gallery/common/FileCache$DatabaseHelper;

    .line 125
    invoke-virtual {p2}, Lcom/zui/gallery/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 124
    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/zui/gallery/common/Entry;)J

    .line 126
    iget-wide p1, p0, Lcom/zui/gallery/common/FileCache;->mTotalBytes:J

    iget-wide v0, p0, Lcom/zui/gallery/common/FileCache;->mCapacity:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/zui/gallery/common/FileCache;->freeSomeSpaceIfNeed(I)V

    .line 127
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 112
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 113
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file too large: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/zui/gallery/common/FileCache$FileEntry;->size:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
