.class Lcom/zui/gallery/app/AlbumPage$4;
.super Lcom/zui/gallery/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->initializeViews()V
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

    .line 833
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$4;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$4;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumPage;->access$900(Lcom/zui/gallery/app/AlbumPage;I)V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;I)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$4;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/app/AlbumPage;->onLongTap(ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$4;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/app/AlbumPage;->access$1100(Lcom/zui/gallery/app/AlbumPage;II)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$4;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumPage;->access$1000(Lcom/zui/gallery/app/AlbumPage;Z)V

    return-void
.end method
