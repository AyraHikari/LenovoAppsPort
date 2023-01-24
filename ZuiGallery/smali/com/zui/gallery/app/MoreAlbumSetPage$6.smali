.class Lcom/zui/gallery/app/MoreAlbumSetPage$6;
.super Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;
.source "MoreAlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$1900(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->onLongTap(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public onPickMore()V
    .locals 6

    const/4 v0, 0x0

    .line 1011
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1012
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "setWallpaper"

    if-eqz v2, :cond_0

    .line 1014
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1017
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1020
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0xc

    .line 1021
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1024
    iget-object v4, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v5, v4, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/SelectionManager;->getSourceType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2102(Lcom/zui/gallery/app/MoreAlbumSetPage;I)I

    .line 1027
    iget-object v4, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v4}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2100(Lcom/zui/gallery/app/MoreAlbumSetPage;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1028
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0xe

    .line 1029
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1030
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v4}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2100(Lcom/zui/gallery/app/MoreAlbumSetPage;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1031
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0x10

    .line 1032
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    const-string v4, "media-path"

    .line 1034
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-boolean v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetContent:Z

    const-string v4, "get-content"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1036
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-boolean v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetAlbum:Z

    const-string v4, "get-album"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1037
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetMorePage;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$6;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2000(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)V

    return-void
.end method
