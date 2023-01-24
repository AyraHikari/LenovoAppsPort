.class Lcom/zui/gallery/app/AlbumAddPage$4;
.super Lcom/zui/gallery/ui/SlotView$SimpleListener;
.source "AlbumAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$700(Lcom/zui/gallery/app/AlbumAddPage;I)V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;I)V
    .locals 0

    .line 462
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 463
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p2, p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$900(Lcom/zui/gallery/app/AlbumAddPage;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0

    .line 457
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p2, p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$900(Lcom/zui/gallery/app/AlbumAddPage;I)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$800(Lcom/zui/gallery/app/AlbumAddPage;Z)V

    return-void
.end method
