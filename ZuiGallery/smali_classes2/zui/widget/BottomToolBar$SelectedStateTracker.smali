.class Lzui/widget/BottomToolBar$SelectedStateTracker;
.super Ljava/lang/Object;
.source "BottomToolBar.java"

# interfaces
.implements Lzui/widget/BottomBarItem$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/BottomToolBar;


# direct methods
.method private constructor <init>(Lzui/widget/BottomToolBar;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/BottomToolBar;Lzui/widget/BottomToolBar$1;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lzui/widget/BottomToolBar$SelectedStateTracker;-><init>(Lzui/widget/BottomToolBar;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lzui/widget/BottomBarItem;Z)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 486
    invoke-virtual {p1, p2}, Lzui/widget/BottomBarItem;->setFocused(Z)V

    .line 487
    iget-object p2, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    invoke-static {p2}, Lzui/widget/BottomToolBar;->access$300(Lzui/widget/BottomToolBar;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lzui/widget/BottomBarItem;->getId()I

    move-result p2

    iget-object v0, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    invoke-static {v0}, Lzui/widget/BottomToolBar;->access$300(Lzui/widget/BottomToolBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 488
    iget-object p1, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    invoke-static {p1}, Lzui/widget/BottomToolBar;->access$400(Lzui/widget/BottomToolBar;)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object p2, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    iget-object p2, p2, Lzui/widget/BottomToolBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz p2, :cond_1

    .line 492
    iget-object p2, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    iget-object p2, p2, Lzui/widget/BottomToolBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    iget-object v0, p0, Lzui/widget/BottomToolBar$SelectedStateTracker;->this$0:Lzui/widget/BottomToolBar;

    invoke-virtual {p1}, Lzui/widget/BottomBarItem;->getId()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lzui/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Lzui/widget/BottomTabBar;I)V

    :cond_1
    :goto_0
    return-void
.end method
