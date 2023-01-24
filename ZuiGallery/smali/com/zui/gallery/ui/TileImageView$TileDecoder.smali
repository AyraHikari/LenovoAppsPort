.class Lcom/zui/gallery/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifier:Lcom/zui/gallery/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/zui/gallery/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/TileImageView;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    new-instance p1, Lcom/zui/gallery/ui/TileImageView$TileDecoder$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/TileImageView$TileDecoder$1;-><init>(Lcom/zui/gallery/ui/TileImageView$TileDecoder;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->mNotifier:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/TileImageView;Lcom/zui/gallery/ui/TileImageView$1;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/zui/gallery/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 798
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    .line 811
    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    .line 812
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->mNotifier:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 813
    :goto_0
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/zui/gallery/ui/TileImageView;

    monitor-enter v0

    move-object v2, v1

    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-static {v2}, Lcom/zui/gallery/ui/TileImageView;->access$800(Lcom/zui/gallery/ui/TileImageView;)Lcom/zui/gallery/ui/TileImageView$TileQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object v2

    .line 818
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    if-nez v2, :cond_0

    .line 820
    iget-object v3, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    goto :goto_1

    .line 823
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/TileImageView;->decodeTile(Lcom/zui/gallery/ui/TileImageView$Tile;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 823
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-object v1
.end method
