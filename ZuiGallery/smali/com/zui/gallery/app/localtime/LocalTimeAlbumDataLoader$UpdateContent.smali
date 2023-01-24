.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "LocalTimeAlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUpdateInfo:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

    .line 429
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget-wide v2, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$902(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)J

    .line 430
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v1

    iget v2, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->size:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->size:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->timeEntries:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->timeEntries:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    .line 431
    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->timeEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget v2, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->size:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1002(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I

    .line 437
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget-object v2, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->timeEntries:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1502(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Ljava/util/List;)Ljava/util/List;

    .line 438
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1402(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Z)Z

    .line 439
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;->onSizeChanged(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v2

    if-le v1, v2, :cond_3

    .line 442
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1302(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 444
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1702(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I

    .line 447
    :cond_4
    iget-object v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 449
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$202(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)J

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 458
    :cond_5
    iget v3, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 459
    iget v4, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_8

    .line 462
    rem-int/lit16 v5, v3, 0x3e8

    .line 463
    iget-object v6, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v6}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J

    move-result-object v6

    iget-wide v7, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    aput-wide v7, v6, v5

    .line 464
    iget v6, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/MediaItem;

    if-nez v6, :cond_6

    goto :goto_1

    .line 468
    :cond_6
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    .line 469
    iget-object v9, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v9}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J

    move-result-object v9

    aget-wide v9, v9, v5

    cmp-long v9, v9, v7

    if-eqz v9, :cond_7

    .line 470
    iget-object v9, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v9}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J

    move-result-object v9

    aput-wide v7, v9, v5

    .line 471
    iget-object v7, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v7}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    aput-object v6, v7, v5

    .line 490
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$2000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v5

    if-lt v3, v5, :cond_7

    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 491
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;->onContentChanged(I)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v2

    .line 451
    :cond_9
    :goto_2
    iget v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v1, :cond_a

    .line 452
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget-wide v3, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v1, v3, v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$202(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)J

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTimeAlbumDataLoader"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_a
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- failed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GallerySpeedStart"

    invoke-virtual {v0, v3, v1}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
