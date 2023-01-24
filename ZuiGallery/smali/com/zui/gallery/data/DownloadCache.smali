.class public Lcom/zui/gallery/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/DownloadCache$TaskProxy;,
        Lcom/zui/gallery/data/DownloadCache$DownloadTask;,
        Lcom/zui/gallery/data/DownloadCache$Entry;,
        Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_IDNEX_DATA:I = 0x1

.field private static final FREESPACE_IDNEX_ID:I = 0x0

.field private static final FREESPACE_INDEX_CONTENT_SIZE:I = 0x3

.field private static final FREESPACE_INDEX_CONTENT_URL:I = 0x2

.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id = ?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final QUERY_INDEX_DATA:I = 0x1

.field private static final QUERY_INDEX_ID:I = 0x0

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_INDEX_SUM:I = 0x0

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadCache"

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mCapacity:J

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcom/zui/gallery/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/common/LruCache<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    sget-object v0, Lcom/zui/gallery/data/DownloadEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    invoke-virtual {v0}, Lcom/zui/gallery/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "hash_code"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "content_url"

    aput-object v5, v2, v3

    const-string v6, "%s = ? AND %s = ?"

    .line 50
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const-string v2, "_size"

    .line 55
    filled-new-array {v0, v1, v5, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "last_access"

    aput-object v1, v0, v4

    const-string v1, "%s ASC"

    .line 58
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string/jumbo v2, "sum(%s)"

    .line 67
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/zui/gallery/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Ljava/io/File;J)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/zui/gallery/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zui/gallery/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache;->mInitialized:Z

    .line 83
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcom/zui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    .line 84
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    iput-object p2, p0, Lcom/zui/gallery/data/DownloadCache;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 85
    iput-wide p3, p0, Lcom/zui/gallery/data/DownloadCache;->mCapacity:J

    .line 86
    new-instance p2, Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;-><init>(Lcom/zui/gallery/data/DownloadCache;Landroid/content/Context;)V

    .line 87
    invoke-virtual {p2}, Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/DownloadCache;)Ljava/io/File;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/DownloadCache;)Ljava/util/HashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/data/DownloadCache;)Lcom/zui/gallery/common/LruCache;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/data/DownloadCache;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcom/zui/gallery/data/DownloadCache$Entry;
    .locals 11

    .line 91
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 93
    iget-object v3, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/zui/gallery/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcom/zui/gallery/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 96
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    new-instance v3, Ljava/io/File;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 100
    iget-object v4, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    iget-object v5, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v5, p1}, Lcom/zui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/DownloadCache$Entry;

    if-nez v5, :cond_0

    .line 103
    new-instance v5, Lcom/zui/gallery/data/DownloadCache$Entry;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/zui/gallery/data/DownloadCache$Entry;-><init>(Lcom/zui/gallery/data/DownloadCache;JLjava/io/File;)V

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v0, p1, v5}, Lcom/zui/gallery/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception p1

    .line 106
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 111
    throw p1
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 11

    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide v0, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/zui/gallery/data/DownloadCache;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/zui/gallery/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/zui/gallery/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 164
    :try_start_2
    iget-wide v1, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    iget-wide v3, p0, Lcom/zui/gallery/data/DownloadCache;->mCapacity:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 167
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 168
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 169
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 171
    iget-object v9, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :try_start_3
    iget-object v10, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v10, v4}, Lcom/zui/gallery/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 173
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 176
    :try_start_4
    iget-wide v9, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    sub-long/2addr v9, v5

    iput-wide v9, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    .line 177
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 178
    iget-object v4, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v6, "_id = ?"

    new-array v7, v7, [Ljava/lang/String;

    .line 179
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 178
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 173
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 185
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    throw p1

    .line 185
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 187
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initialize()V
    .locals 9

    monitor-enter p0

    .line 204
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 205
    :try_start_1
    iput-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache;->mInitialized:Z

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/zui/gallery/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 213
    iput-wide v1, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 216
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    iget-wide v0, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/zui/gallery/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/zui/gallery/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 219
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    throw v1

    .line 208
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 5

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 191
    iget-wide v2, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/zui/gallery/data/DownloadCache;->mTotalBytes:J

    .line 193
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 194
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    .line 195
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hash_code"

    .line 196
    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content_url"

    .line 197
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_size"

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "last_updated"

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object p2, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateLastAccess(J)V
    .locals 4

    .line 153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_access"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/zui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 156
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "_id = ?"

    .line 155
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public download(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/zui/gallery/data/DownloadCache$Entry;
    .locals 4

    .line 116
    iget-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/data/DownloadCache;->initialize()V

    .line 118
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache;->mEntryMap:Lcom/zui/gallery/common/LruCache;

    invoke-virtual {v1, p2}, Lcom/zui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/DownloadCache$Entry;

    if-eqz v1, :cond_1

    .line 124
    iget-wide p1, v1, Lcom/zui/gallery/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/DownloadCache;->updateLastAccess(J)V

    .line 125
    monitor-exit v0

    return-object v1

    .line 127
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    new-instance v0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    invoke-direct {v0}, Lcom/zui/gallery/data/DownloadCache$TaskProxy;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 132
    :try_start_1
    invoke-direct {p0, p2}, Lcom/zui/gallery/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/zui/gallery/data/DownloadCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    iget-wide p1, v2, Lcom/zui/gallery/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/DownloadCache;->updateLastAccess(J)V

    .line 135
    monitor-exit v1

    return-object v2

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/DownloadCache$DownloadTask;

    if-nez v2, :cond_3

    .line 142
    new-instance v2, Lcom/zui/gallery/data/DownloadCache$DownloadTask;

    invoke-direct {v2, p0, p2}, Lcom/zui/gallery/data/DownloadCache$DownloadTask;-><init>(Lcom/zui/gallery/data/DownloadCache;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/zui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p2, p0, Lcom/zui/gallery/data/DownloadCache;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->access$002(Lcom/zui/gallery/data/DownloadCache$DownloadTask;Lcom/zui/gallery/util/Future;)Lcom/zui/gallery/util/Future;

    .line 146
    :cond_3
    invoke-virtual {v2, v0}, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->addProxy(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)V

    .line 147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->get(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/data/DownloadCache$Entry;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 147
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 127
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
