.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iput p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 1144
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 1145
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iget v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->val$resultCode:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4602(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)I

    .line 1147
    :try_start_0
    iget v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4702(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)Z

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V

    .line 1151
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 1154
    throw v1
.end method
