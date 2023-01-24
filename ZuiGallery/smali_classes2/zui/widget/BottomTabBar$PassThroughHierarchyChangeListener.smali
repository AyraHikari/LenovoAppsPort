.class Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "BottomTabBar.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lzui/widget/BottomTabBar;


# direct methods
.method private constructor <init>(Lzui/widget/BottomTabBar;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$1;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;-><init>(Lzui/widget/BottomTabBar;)V

    return-void
.end method

.method static synthetic access$002(Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .line 615
    iput-object p1, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 623
    iget-object v0, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 627
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 628
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 630
    :cond_0
    move-object v1, p2

    check-cast v1, Lzui/widget/BottomBarItem;

    iget-object v2, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    .line 631
    invoke-static {v2}, Lzui/widget/BottomTabBar;->access$300(Lzui/widget/BottomTabBar;)Lzui/widget/BottomBarItem$OnSelectedListener;

    move-result-object v2

    .line 630
    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setOnSelectedListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V

    .line 632
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    invoke-static {v1, v0}, Lzui/widget/BottomTabBar;->access$400(Lzui/widget/BottomTabBar;I)V

    .line 637
    :cond_1
    iget-object v0, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 638
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 640
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 641
    iget-object p2, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    iget-object p2, p2, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 648
    iget-object v0, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_0

    .line 649
    move-object v0, p2

    check-cast v0, Lzui/widget/BottomBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/widget/BottomBarItem;->setOnSelectedListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 653
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 655
    :cond_1
    iget-object p1, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    iget-object p1, p1, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 656
    iget-object p1, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    iget-object p1, p1, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    iget-object p2, p0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Lzui/widget/BottomTabBar;

    iget-object p2, p2, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method
