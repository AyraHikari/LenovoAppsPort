.class public abstract Lcom/zui/gallery/database/GallerySQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "GallerySQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field private static final MAX_OPERATIONS_PER_YIELD_POINT:I = 0x1f4

.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "GallerySQLiteContentProvider"


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 206
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    const/4 v0, 0x0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    new-array v3, v1, [Landroid/content/ContentProviderResult;

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_3

    add-int/2addr v5, v2

    const/16 v7, 0x1f4

    if-ge v5, v7, :cond_2

    .line 218
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentProviderOperation;

    if-lez v4, :cond_1

    .line 219
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    iget-object v5, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    move v5, v0

    .line 225
    :cond_1
    invoke-virtual {v7, p0, v3, v4}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    :cond_2
    new-instance p1, Landroid/content/OperationApplicationException;

    const-string v1, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {p1, v1, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object p1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 232
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onEndTransaction()V

    return-object v3

    :catchall_0
    move-exception p1

    .line 230
    iget-object v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 232
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onEndTransaction()V

    .line 233
    throw p1
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    .line 120
    array-length v0, p2

    .line 121
    iget-object v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 125
    :try_start_0
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 127
    iput-boolean v2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object p1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onEndTransaction()V

    return v0

    :catchall_0
    move-exception p1

    .line 133
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 134
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->applyingBatch()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 176
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 178
    iput-boolean v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    :cond_0
    if-lez p1, :cond_1

    .line 182
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    :cond_1
    const-string p2, "GallerySQLiteContentProvider"

    const-string p3, "************* delete nothing !"

    .line 184
    invoke-static {p2, p3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onEndTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 187
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    throw p1

    .line 192
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 194
    iput-boolean v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    :cond_3
    :goto_1
    return p1
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->applyingBatch()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GallerySQLiteContentProvider"

    if-nez v0, :cond_1

    const-string v0, "!applyingBatch"

    .line 94
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 98
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iput-boolean v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onEndTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 104
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    throw p1

    :cond_1
    const-string v0, "applyingBatch"

    .line 109
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 112
    iput-boolean v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onBeginTransaction()V

    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    return-void
.end method

.method public onCommit()V
    .locals 0

    .line 241
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->beforeTransactionCommit()V

    return-void
.end method

.method public onCreate()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v0, 0x1

    return v0
.end method

.method protected onEndTransaction()V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    .line 257
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->notifyChange()V

    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 0

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->applyingBatch()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 148
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    invoke-virtual {p0}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->onEndTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 154
    iget-object p2, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    throw p1

    .line 159
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 161
    iput-boolean v1, p0, Lcom/zui/gallery/database/GallerySQLiteContentProvider;->mNotifyChange:Z

    :cond_2
    :goto_0
    return p1
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
