.class Lcom/zui/gallery/app/AlbumAddPage$1;
.super Ljava/lang/Object;
.source "AlbumAddPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumAddPage;
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

    .line 144
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlotView;->getVisibleEnd()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 159
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$100(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 160
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

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 149
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SlotView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage$1;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    .line 150
    invoke-static {v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SlotView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method
