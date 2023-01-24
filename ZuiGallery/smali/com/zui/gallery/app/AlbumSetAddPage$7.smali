.class Lcom/zui/gallery/app/AlbumSetAddPage$7;
.super Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;
.source "AlbumSetAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1800(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onPickAdd()V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2000(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    return-void
.end method

.method public onPickMore()V
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 822
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media-path"

    .line 820
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetAddMorePage;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1900(Lcom/zui/gallery/app/AlbumSetAddPage;Z)V

    return-void
.end method
