.class Lcom/zui/gallery/app/AlbumSetPage$6;
.super Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismiss()V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$2300(Lcom/zui/gallery/app/AlbumSetPage;)V

    return-void
.end method

.method public onDown(I)V
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$1900(Lcom/zui/gallery/app/AlbumSetPage;I)V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumSetPage;->onLongTap(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public onPickMore()V
    .locals 6

    const/4 v0, 0x0

    .line 1130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1131
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "setWallpaper"

    if-eqz v2, :cond_0

    .line 1133
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1136
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1139
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0xc

    .line 1140
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1143
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v5, v4, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/SelectionManager;->getSourceType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/zui/gallery/app/AlbumSetPage;->access$2102(Lcom/zui/gallery/app/AlbumSetPage;I)I

    .line 1146
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetPage;->access$2100(Lcom/zui/gallery/app/AlbumSetPage;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1147
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0xe

    .line 1148
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetPage;->access$2100(Lcom/zui/gallery/app/AlbumSetPage;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1150
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0x10

    .line 1151
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    const-string v4, "media-path"

    .line 1153
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-boolean v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    const-string v4, "get-content"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-boolean v2, v2, Lcom/zui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    const-string v4, "get-album"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1156
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1159
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetMorePage;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll()V
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$2200(Lcom/zui/gallery/app/AlbumSetPage;)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$2000(Lcom/zui/gallery/app/AlbumSetPage;Z)V

    return-void
.end method
