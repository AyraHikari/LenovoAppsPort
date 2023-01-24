.class Lcom/zui/gallery/app/AlbumPage$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumPage;
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

    .line 215
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlotView;->getVisibleEnd()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 230
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 220
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SlotView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$1;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 221
    invoke-static {v2}, Lcom/zui/gallery/app/AlbumPage;->access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SlotView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    .line 220
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method
