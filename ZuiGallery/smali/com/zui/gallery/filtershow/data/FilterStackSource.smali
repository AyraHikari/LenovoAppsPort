.class public Lcom/zui/gallery/filtershow/data/FilterStackSource;
.super Ljava/lang/Object;
.source "FilterStackSource.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterStackSource"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    new-instance v0, Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->dbHelper:Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->dbHelper:Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;->close()V

    return-void
.end method

.method public getAllStacks()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "filterstack"

    const-string/jumbo v4, "stack_id"

    const-string/jumbo v5, "stack"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 178
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 180
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v1

    goto :goto_1

    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    .line 181
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v1

    goto :goto_2

    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 182
    :goto_2
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    goto :goto_0

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 189
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    return-object v1

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    throw v0
.end method

.method public getAllUserPresets()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "filterstack"

    const-string v4, "_id"

    const-string/jumbo v5, "stack_id"

    const-string/jumbo v6, "stack"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 143
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 145
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    .line 146
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x2

    .line 147
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v1

    goto :goto_2

    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 148
    :goto_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 150
    new-instance v5, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 151
    invoke-virtual {v5, v6}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->readJsonFromString(Ljava/lang/String;)Z

    .line 152
    new-instance v6, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    invoke-direct {v6, v4, v5, v3}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 154
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    throw v0
.end method

.method public getStack(Ljava/lang/String;)[B
    .locals 12

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "filterstack"

    const-string/jumbo v3, "stack"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stack_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 117
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    :goto_0
    if-eqz p1, :cond_2

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 126
    throw v0
.end method

.method public insertStack(Ljava/lang/String;[B)Z
    .locals 4

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "stack_id"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "stack"

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 62
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 p1, -0x1

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "filterstack"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    throw p1
.end method

.method public open()V
    .locals 3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->dbHelper:Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/data/FilterStackDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FilterStackSource"

    const-string v2, "could not open database"

    .line 48
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public removeAllStacks()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filterstack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    throw v0
.end method

.method public removeStack(I)Z
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filterstack"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    throw p1
.end method

.method public updateStackName(ILjava/lang/String;)V
    .locals 7

    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "stack_id"

    .line 74
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 77
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filterstack"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/data/FilterStackSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    throw p1
.end method
