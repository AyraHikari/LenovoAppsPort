.class Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetDataLoader;
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
.field private final mUpdateInfo:Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;

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

    .line 373
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .line 384
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;

    .line 387
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget-wide v3, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->version:J

    invoke-static {v2, v3, v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1202(Lcom/zui/gallery/app/AlbumSetDataLoader;J)J

    .line 389
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v2

    iget v3, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->albumEntryList:Ljava/util/List;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v2

    if-nez v2, :cond_5

    .line 399
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 400
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;->onSizeChanged(ILjava/util/List;)V

    goto :goto_1

    .line 390
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget v3, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->size:I

    invoke-static {v2, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1002(Lcom/zui/gallery/app/AlbumSetDataLoader;I)I

    .line 391
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget-object v3, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->albumEntryList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1302(Lcom/zui/gallery/app/AlbumSetDataLoader;Ljava/util/List;)Ljava/util/List;

    .line 392
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;->onSizeChanged(ILjava/util/List;)V

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$600(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    if-le v2, v3, :cond_4

    .line 395
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$602(Lcom/zui/gallery/app/AlbumSetDataLoader;I)I

    .line 396
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1400(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 397
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1402(Lcom/zui/gallery/app/AlbumSetDataLoader;I)I

    .line 403
    :cond_5
    :goto_1
    iget v2, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$500(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    if-lt v2, v3, :cond_7

    iget v2, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$600(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 404
    iget v2, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1500(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 405
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$400(Lcom/zui/gallery/app/AlbumSetDataLoader;)[J

    move-result-object v3

    iget-wide v4, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->version:J

    aput-wide v4, v3, v2

    .line 406
    iget-object v3, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v3

    .line 407
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1600(Lcom/zui/gallery/app/AlbumSetDataLoader;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    cmp-long v5, v5, v3

    if-nez v5, :cond_6

    return-object v1

    .line 409
    :cond_6
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1600(Lcom/zui/gallery/app/AlbumSetDataLoader;)[J

    move-result-object v5

    aput-wide v3, v5, v2

    .line 410
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1700(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    aput-object v4, v3, v2

    .line 411
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1500(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/zui/gallery/data/MediaItem;

    aput-object v4, v3, v2

    .line 412
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1800(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->cover2:Lcom/zui/gallery/data/MediaItem;

    aput-object v4, v3, v2

    .line 413
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->cover3:Lcom/zui/gallery/data/MediaItem;

    aput-object v4, v3, v2

    .line 414
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$2000(Lcom/zui/gallery/app/AlbumSetDataLoader;)[I

    move-result-object v3

    iget v4, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    aput v4, v3, v2

    .line 415
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    .line 416
    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$2100(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    if-lt v2, v3, :cond_7

    iget v2, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1400(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 417
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    iget v0, v0, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-interface {v2, v0}, Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;->onContentChanged(I)V

    :cond_7
    return-object v1
.end method
