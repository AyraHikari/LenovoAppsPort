.class Lcom/zui/gallery/app/AlbumPage$12;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->updateTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1830
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1833
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2500(Lcom/zui/gallery/app/AlbumPage;)V

    .line 1834
    new-instance p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1836
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2600(Lcom/zui/gallery/app/AlbumPage;)Z

    move-result v0

    const-string v1, "get-content"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1840
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2600(Lcom/zui/gallery/app/AlbumPage;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    if-ne v0, v5, :cond_0

    goto :goto_1

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    if-ne v0, v4, :cond_5

    :cond_1
    :goto_0
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v5

    goto :goto_2

    .line 1844
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    const/16 v4, 0x9

    const/16 v5, 0x8

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    if-ne v0, v5, :cond_4

    goto :goto_1

    .line 1845
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2700(Lcom/zui/gallery/app/AlbumPage;)I

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    const-string/jumbo v0, "type-bits"

    .line 1847
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1848
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1849
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-path"

    .line 1848
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$12;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const-class v2, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/gallery/app/StateManager;->switchStateBetweenAllPhotoAndAlbumSet(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
