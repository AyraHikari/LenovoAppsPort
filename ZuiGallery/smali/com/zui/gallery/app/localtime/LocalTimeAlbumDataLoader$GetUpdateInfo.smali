.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-wide p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public call()Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 398
    :cond_1
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V

    .line 399
    iget-wide v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 400
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    .line 401
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->size:I

    .line 402
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J

    move-result-object v4

    .line 403
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v5

    iget-object v6, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v6}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_3

    .line 404
    rem-int/lit16 v7, v5, 0x3e8

    .line 405
    aget-wide v7, v4, v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_2

    .line 406
    iput v5, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadStart:I

    const/16 v1, 0xc0

    sub-int/2addr v6, v5

    .line 407
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadCount:I

    return-object v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;->call()Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
