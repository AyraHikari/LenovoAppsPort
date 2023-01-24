.class Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumDataLoader;
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
.field private mUpdateInfo:Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

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

    .line 355
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

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

    .line 365
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

    .line 366
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    iget-wide v2, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/app/AlbumDataLoader;->access$702(Lcom/zui/gallery/app/AlbumDataLoader;J)J

    .line 367
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v1

    iget v2, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->size:I

    if-eq v1, v2, :cond_2

    .line 368
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    iget v2, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->size:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$802(Lcom/zui/gallery/app/AlbumDataLoader;I)I

    .line 369
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/zui/gallery/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1102(Lcom/zui/gallery/app/AlbumDataLoader;I)I

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1400(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1402(Lcom/zui/gallery/app/AlbumDataLoader;I)I

    .line 374
    :cond_2
    iget-object v1, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 376
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$202(Lcom/zui/gallery/app/AlbumDataLoader;J)J

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 377
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 384
    :cond_3
    iget v3, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 385
    iget v4, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_6

    .line 388
    rem-int/lit16 v5, v3, 0x3e8

    .line 389
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v6}, Lcom/zui/gallery/app/AlbumDataLoader;->access$900(Lcom/zui/gallery/app/AlbumDataLoader;)[J

    move-result-object v6

    iget-wide v7, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    aput-wide v7, v6, v5

    .line 390
    iget v6, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/MediaItem;

    if-nez v6, :cond_4

    return-object v2

    .line 392
    :cond_4
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    .line 393
    iget-object v9, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1500(Lcom/zui/gallery/app/AlbumDataLoader;)[J

    move-result-object v9

    aget-wide v9, v9, v5

    cmp-long v9, v9, v7

    if-eqz v9, :cond_5

    .line 394
    iget-object v9, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1500(Lcom/zui/gallery/app/AlbumDataLoader;)[J

    move-result-object v9

    aput-wide v7, v9, v5

    .line 395
    iget-object v7, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v7}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1600(Lcom/zui/gallery/app/AlbumDataLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    aput-object v6, v7, v5

    .line 396
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1700(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v5

    if-lt v3, v5, :cond_5

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1400(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 397
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/zui/gallery/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v2

    .line 378
    :cond_7
    :goto_1
    iget v1, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v1, :cond_8

    .line 379
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    iget-wide v3, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v1, v3, v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$202(Lcom/zui/gallery/app/AlbumDataLoader;J)J

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumDataAdapter"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v2
.end method
