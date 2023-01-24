.class Lcom/zui/gallery/app/AlbumDataLoader$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumDataLoader;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$100(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    .line 116
    invoke-static {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$100(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/zui/gallery/app/LoadingListener;->onLoadingFinished(Z)V

    :cond_3
    return-void

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$100(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$100(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/LoadingListener;->onLoadingStarted()V

    :cond_5
    return-void
.end method
