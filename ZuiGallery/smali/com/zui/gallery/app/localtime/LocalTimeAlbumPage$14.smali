.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->showFloatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 1951
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1954
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6502(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/data/MediaItem;

    .line 1955
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1956
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method
