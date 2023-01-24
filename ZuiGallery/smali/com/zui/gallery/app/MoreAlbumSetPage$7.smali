.class Lcom/zui/gallery/app/MoreAlbumSetPage$7;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iput p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 1134
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 1136
    :try_start_0
    iget v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2202(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)Z

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2300(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V

    .line 1140
    iget v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->val$resultCode:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2400(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AlbumSetPage"

    const-string v2, "failed to load album set"

    .line 1141
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :cond_1
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 1145
    throw v1
.end method
