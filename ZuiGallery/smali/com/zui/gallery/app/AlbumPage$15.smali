.class Lcom/zui/gallery/app/AlbumPage$15;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->showFloatDialog()V
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

    .line 2087
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$15;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2092
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$15;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$15;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v1, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v2, "DeleteProgress"

    invoke-direct {p2, v0, v1, v2}, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;-><init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 2094
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$15;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800a7

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$15;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_0
    return-void
.end method
