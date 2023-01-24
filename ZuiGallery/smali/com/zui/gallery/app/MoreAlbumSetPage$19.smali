.class Lcom/zui/gallery/app/MoreAlbumSetPage$19;
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


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$19;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1660
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$19;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$3100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800a7

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$19;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2900(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1657
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$19;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$3100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800ac

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$19;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2900(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_0
    return-void
.end method
