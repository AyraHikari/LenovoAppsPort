.class Lcom/zui/gallery/app/AlbumPage$9$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage$9;->onEncryptSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/AlbumPage$9;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage$9;)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$9$1;->this$1:Lcom/zui/gallery/app/AlbumPage$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1546
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$9$1;->this$1:Lcom/zui/gallery/app/AlbumPage$9;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumPage;->dismissLoadingDialog()V

    .line 1547
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$9$1;->this$1:Lcom/zui/gallery/app/AlbumPage$9;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 1548
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$9$1;->this$1:Lcom/zui/gallery/app/AlbumPage$9;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$9$1;->this$1:Lcom/zui/gallery/app/AlbumPage$9;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
