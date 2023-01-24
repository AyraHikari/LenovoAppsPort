.class Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;J)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-wide p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 6

    .line 325
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$400(Lcom/zui/gallery/app/AlbumSetDataLoader;)[J

    move-result-object v0

    .line 326
    array-length v1, v0

    .line 327
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$500(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$600(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 328
    rem-int v4, v2, v1

    .line 329
    aget-wide v4, v0, v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public call()Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-wide v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 338
    new-instance v1, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader$1;)V

    .line 339
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocalAlbumSet;

    .line 341
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$900(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v4

    .line 342
    invoke-virtual {v4}, Lcom/zui/gallery/app/OptimizationAlbum;->getSlotCount()I

    move-result v5

    .line 343
    invoke-virtual {v4}, Lcom/zui/gallery/app/OptimizationAlbum;->getAlbumEntryList()Ljava/util/List;

    move-result-object v6

    .line 344
    iget v7, v4, Lcom/zui/gallery/app/OptimizationAlbum;->INIT:I

    if-le v5, v7, :cond_0

    iget-object v7, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v7}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v7

    if-eq v5, v7, :cond_0

    .line 345
    iget v7, v4, Lcom/zui/gallery/app/OptimizationAlbum;->INIT:I

    invoke-virtual {v4, v7}, Lcom/zui/gallery/app/OptimizationAlbum;->setSlotCount(I)V

    .line 346
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 347
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    move-result-object v4

    invoke-interface {v4, v5, v6}, Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;->onSizeChanged(ILjava/util/List;)V

    .line 350
    :cond_0
    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalAlbumSet;->getAlbumEntryList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    .line 353
    :cond_1
    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalAlbumSet;->getAlbumEntryList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->albumEntryList:Ljava/util/List;

    goto :goto_0

    .line 355
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/gallery/data/LocalAlbumSetMore;

    if-eqz v3, :cond_4

    .line 356
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocalAlbumSetMore;

    .line 357
    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getAlbumEntryList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v2

    .line 360
    :cond_3
    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getAlbumEntryList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->albumEntryList:Ljava/util/List;

    :cond_4
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 363
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1200(Lcom/zui/gallery/app/AlbumSetDataLoader;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    return-object v2

    .line 366
    :cond_5
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1200(Lcom/zui/gallery/app/AlbumSetDataLoader;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 367
    iput v0, v1, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I

    move-result v0

    iput v0, v1, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->size:I

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;->call()Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
