.class Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
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
.field final synthetic this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/SlideshowDataAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/SlideshowDataAdapter;Lcom/zui/gallery/app/SlideshowDataAdapter$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/zui/gallery/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    monitor-enter v0

    .line 99
    :catch_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$100(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$200(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    .line 100
    invoke-static {v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 102
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    .line 108
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$100(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$402(Lcom/zui/gallery/app/SlideshowDataAdapter;Z)Z

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$500(Lcom/zui/gallery/app/SlideshowDataAdapter;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$400(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    monitor-enter v2

    .line 116
    :try_start_3
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$700(Lcom/zui/gallery/app/SlideshowDataAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$602(Lcom/zui/gallery/app/SlideshowDataAdapter;I)I

    .line 118
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    if-nez v0, :cond_5

    .line 123
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    monitor-enter v2

    .line 124
    :try_start_4
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$800(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0, v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$202(Lcom/zui/gallery/app/SlideshowDataAdapter;Z)Z

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_5
    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v2

    .line 132
    invoke-interface {v2, p1}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 135
    iget-object v3, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 136
    :try_start_5
    iget-object v4, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v4}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    new-instance v5, Lcom/zui/gallery/app/SlideshowPage$Slide;

    iget-object v6, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    .line 137
    invoke-static {v6}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$600(Lcom/zui/gallery/app/SlideshowDataAdapter;)I

    move-result v6

    invoke-direct {v5, v0, v6, v2}, Lcom/zui/gallery/app/SlideshowPage$Slide;-><init>(Lcom/zui/gallery/data/MediaItem;ILandroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 141
    :cond_6
    monitor-exit v3

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 143
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$604(Lcom/zui/gallery/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    :catchall_3
    move-exception p1

    .line 108
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method
