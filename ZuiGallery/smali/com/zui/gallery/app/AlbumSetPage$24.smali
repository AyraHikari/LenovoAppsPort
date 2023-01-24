.class Lcom/zui/gallery/app/AlbumSetPage$24;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 1889
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$24;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1892
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$24;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$3202(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/data/MediaSet;)Lcom/zui/gallery/data/MediaSet;

    .line 1893
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$24;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1894
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$24;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method
