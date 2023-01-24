.class Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSlotRenderer.java"

# interfaces
.implements Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$1;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 529
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$110(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)I

    .line 530
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$120(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;I)I

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 535
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->removeGLAnimation()V

    :cond_1
    return-void

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            ")V"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$302(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 546
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSlotCount(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z

    .line 548
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method
