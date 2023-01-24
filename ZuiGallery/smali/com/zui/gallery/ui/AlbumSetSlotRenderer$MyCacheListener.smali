.class Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotRenderer.java"

# interfaces
.implements Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$1;)V
    .locals 0

    .line 738
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 743
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$202(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$302(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 745
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$402(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 746
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$502(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz p2, :cond_4

    .line 747
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 748
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 749
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v2, v3, :cond_1

    .line 750
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$600(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$202(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->CUSTOM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v2, v3, :cond_2

    .line 753
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$700(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$302(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    goto :goto_0

    .line 755
    :cond_2
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v2, v3, :cond_3

    .line 756
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$800(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$402(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    goto :goto_0

    .line 758
    :cond_3
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v2, v3, :cond_0

    .line 759
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$100(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$900(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$502(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    goto :goto_0

    .line 765
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotCount(ILjava/util/List;)Z

    .line 767
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method
