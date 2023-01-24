.class Lcom/zui/gallery/app/AlbumSetDataLoader$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zui/gallery/app/LoadingListener;->onLoadingFinished(Z)V

    :cond_2
    return-void

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 114
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$1;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/LoadingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/LoadingListener;->onLoadingStarted()V

    :cond_4
    return-void
.end method
