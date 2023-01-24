.class Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/SlideshowDataAdapter;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/SlideshowDataAdapter;Lcom/zui/gallery/app/SlideshowDataAdapter$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/zui/gallery/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$800(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {v1, v2}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$202(Lcom/zui/gallery/app/SlideshowDataAdapter;Z)Z

    .line 154
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
