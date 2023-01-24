.class Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
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
.field mUpdateInfo:Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

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

    .line 1223
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

    .line 1233
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget-wide v2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1902(Lcom/zui/gallery/app/PhotoDataAdapter;J)J

    .line 1235
    iget v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget v2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2002(Lcom/zui/gallery/app/PhotoDataAdapter;I)I

    .line 1237
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1402(Lcom/zui/gallery/app/PhotoDataAdapter;I)I

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2100(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2102(Lcom/zui/gallery/app/PhotoDataAdapter;I)I

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget v2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1602(Lcom/zui/gallery/app/PhotoDataAdapter;I)I

    .line 1248
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2200(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    .line 1250
    iget-object v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    const/16 v2, 0x20

    if-eqz v1, :cond_4

    .line 1251
    iget v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1300(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1252
    iget v3, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v4, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v4}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1253
    rem-int/lit8 v4, v1, 0x20

    :goto_0
    if-ge v1, v3, :cond_4

    .line 1255
    iget-object v5, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v6, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaItem;

    .line 1266
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1500(Lcom/zui/gallery/app/PhotoDataAdapter;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aput-object v5, v6, v4

    .line 1267
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2300(Lcom/zui/gallery/app/PhotoDataAdapter;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1268
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-virtual {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->isContinuousShotMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1269
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2302(Lcom/zui/gallery/app/PhotoDataAdapter;Z)Z

    .line 1270
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1500(Lcom/zui/gallery/app/PhotoDataAdapter;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v5

    iget-object v7, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v7}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v7

    rem-int/2addr v7, v2

    aget-object v5, v5, v7

    iput-boolean v6, v5, Lcom/zui/gallery/data/MediaItem;->isBestChoice:Z

    .line 1272
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2402(Lcom/zui/gallery/app/PhotoDataAdapter;I)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_3

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1283
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1500(Lcom/zui/gallery/app/PhotoDataAdapter;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1284
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    const/4 v2, 0x0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1702(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;

    .line 1286
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2500(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    .line 1287
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2600(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    .line 1288
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$200(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    .line 1290
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1291
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/zui/gallery/data/Path;)V

    .line 1294
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2700(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    return-object v2
.end method
