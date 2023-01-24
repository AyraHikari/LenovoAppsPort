.class Lzui/widget/BottomTabBar$SelectedStateTracker;
.super Ljava/lang/Object;
.source "BottomTabBar.java"

# interfaces
.implements Lzui/widget/BottomBarItem$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/BottomTabBar;


# direct methods
.method private constructor <init>(Lzui/widget/BottomTabBar;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$1;)V
    .locals 0

    .line 661
    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar$SelectedStateTracker;-><init>(Lzui/widget/BottomTabBar;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lzui/widget/BottomBarItem;Z)V
    .locals 3

    .line 670
    iget-object v0, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    invoke-static {v0}, Lzui/widget/BottomTabBar;->access$500(Lzui/widget/BottomTabBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzui/widget/BottomTabBar;->access$502(Lzui/widget/BottomTabBar;Z)Z

    .line 676
    iget-object v0, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    invoke-static {v0}, Lzui/widget/BottomTabBar;->access$600(Lzui/widget/BottomTabBar;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 677
    iget-object v0, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    invoke-static {v0}, Lzui/widget/BottomTabBar;->access$600(Lzui/widget/BottomTabBar;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lzui/widget/BottomTabBar;->access$700(Lzui/widget/BottomTabBar;IZ)V

    .line 679
    :cond_1
    iget-object v0, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    invoke-static {v0, v2}, Lzui/widget/BottomTabBar;->access$502(Lzui/widget/BottomTabBar;Z)Z

    .line 681
    invoke-virtual {p1}, Lzui/widget/BottomBarItem;->getId()I

    move-result p1

    if-eqz p2, :cond_2

    .line 683
    iget-object p2, p0, Lzui/widget/BottomTabBar$SelectedStateTracker;->this$0:Lzui/widget/BottomTabBar;

    invoke-static {p2, p1}, Lzui/widget/BottomTabBar;->access$400(Lzui/widget/BottomTabBar;I)V

    :cond_2
    return-void
.end method
