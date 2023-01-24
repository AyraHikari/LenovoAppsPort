.class Lcom/zui/gallery/app/AlbumPage$19;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 2221
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$19;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2224
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$19;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AlbumPage;->access$2902(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/data/MediaItem;

    .line 2225
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$19;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 2226
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$19;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method
