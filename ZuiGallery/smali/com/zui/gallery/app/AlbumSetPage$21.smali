.class Lcom/zui/gallery/app/AlbumSetPage$21;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage;->showFloatDialog()V
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

    .line 1837
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$21;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1840
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$21;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$3200(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 1848
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$21;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$3300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800a7

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$21;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$3200(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1845
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$21;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$3300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800ac

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$21;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$3200(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_0
    return-void
.end method
