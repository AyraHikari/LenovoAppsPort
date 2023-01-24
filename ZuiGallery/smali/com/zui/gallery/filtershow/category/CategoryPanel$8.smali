.class Lcom/zui/gallery/filtershow/category/CategoryPanel$8;
.super Ljava/lang/Object;
.source "CategoryPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/CategoryPanel;->initLooksPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

.field final synthetic val$activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field final synthetic val$main:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/widget/LinearLayout;Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->val$main:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->val$activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 535
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setCurrentLooksType(I)V

    .line 536
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$000(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)V

    .line 537
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$102(Lcom/zui/gallery/filtershow/category/CategoryPanel;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 538
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$600(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 542
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$602(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)Z

    .line 543
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$200(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryTrack;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 545
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$200(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->val$main:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$300(Lcom/zui/gallery/filtershow/category/CategoryPanel;Lcom/zui/gallery/filtershow/category/CategoryTrack;Landroid/view/View;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 546
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;->val$activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    return-void
.end method
