.class final Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "download.db"

.field public static final DATABASE_VERSION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/DownloadCache;Landroid/content/Context;)V
    .locals 2

    .line 228
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;->this$0:Lcom/zui/gallery/data/DownloadCache;

    const-string p1, "download.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 229
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 234
    sget-object v0, Lcom/zui/gallery/data/DownloadEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 236
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {p1}, Lcom/zui/gallery/data/DownloadCache;->access$100(Lcom/zui/gallery/data/DownloadCache;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadCache"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 246
    sget-object p2, Lcom/zui/gallery/data/DownloadEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DownloadCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
