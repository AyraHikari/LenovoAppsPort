.class Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;J)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-wide p2, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public call()Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 338
    :cond_0
    new-instance v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;-><init>(Lcom/zui/gallery/app/AlbumDataLoader$1;)V

    .line 339
    iget-wide v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 340
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$700(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 341
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v4

    iput v4, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 342
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$900(Lcom/zui/gallery/app/AlbumDataLoader;)[J

    move-result-object v4

    .line 343
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v5

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v6}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    .line 344
    rem-int/lit16 v7, v5, 0x3e8

    .line 345
    aget-wide v7, v4, v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_1

    .line 346
    iput v5, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    .line 347
    invoke-static {}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1200()I

    move-result v1

    sub-int/2addr v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    return-object v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$700(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
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

    .line 325
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;->call()Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
