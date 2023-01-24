.class public abstract Lcom/zui/gallery/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/MediaSource$PathId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSource"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zui/gallery/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultSetOf(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/zui/gallery/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaSource$PathId;",
            ">;",
            "Lcom/zui/gallery/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSource$PathId;

    .line 82
    sget-object v3, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 83
    :try_start_0
    iget-object v4, v2, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    .line 86
    :try_start_1
    iget-object v5, v2, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {p0, v5}, Lcom/zui/gallery/data/MediaSource;->createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    const-string v6, "MediaSource"

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    .line 93
    iget v2, v2, Lcom/zui/gallery/data/MediaSource$PathId;->id:I

    check-cast v4, Lcom/zui/gallery/data/MediaItem;

    invoke-interface {p2, v2, v4}, Lcom/zui/gallery/data/MediaSet$ItemConsumer;->consume(ILcom/zui/gallery/data/MediaItem;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 91
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
