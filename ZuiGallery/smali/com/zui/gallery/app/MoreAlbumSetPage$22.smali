.class Lcom/zui/gallery/app/MoreAlbumSetPage$22;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 1699
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$22;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1702
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$22;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2902(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/data/MediaSet;)Lcom/zui/gallery/data/MediaSet;

    .line 1703
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$22;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$300(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1704
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$22;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$300(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method
