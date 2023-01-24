.class Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/AlbumSlotRenderer;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/AlbumSlotRenderer;Lcom/zui/gallery/ui/AlbumSlotRenderer$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/zui/gallery/ui/AlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSlotRenderer;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 382
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$110(Lcom/zui/gallery/ui/AlbumSlotRenderer;)I

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSlotRenderer;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$120(Lcom/zui/gallery/ui/AlbumSlotRenderer;I)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSlotRenderer;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->removeGLAnimation()V

    :cond_1
    return-void

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$200(Lcom/zui/gallery/ui/AlbumSlotRenderer;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$200(Lcom/zui/gallery/ui/AlbumSlotRenderer;)Lcom/zui/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->setSlotCount(I)Z

    .line 401
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->access$200(Lcom/zui/gallery/ui/AlbumSlotRenderer;)Lcom/zui/gallery/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method
