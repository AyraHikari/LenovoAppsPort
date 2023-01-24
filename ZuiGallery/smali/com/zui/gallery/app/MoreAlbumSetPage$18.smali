.class Lcom/zui/gallery/app/MoreAlbumSetPage$18;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->showFloatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

.field final synthetic val$isGroupAlbum:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)V
    .locals 0

    .line 1626
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->val$isGroupAlbum:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const p1, 0x7f0800a7

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1638
    :cond_0
    iget-boolean p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->val$isGroupAlbum:Z

    if-eqz p2, :cond_3

    .line 1639
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$3100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2900(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1631
    :cond_1
    iget-boolean p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->val$isGroupAlbum:Z

    if-eqz p2, :cond_2

    .line 1632
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2900(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$3000(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/data/MediaSet;)V

    goto :goto_0

    .line 1634
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$3100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$18;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2900(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :cond_3
    :goto_0
    return-void
.end method
