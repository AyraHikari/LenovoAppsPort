.class Lcom/zui/gallery/filtershow/category/CategoryPanel$6;
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

    .line 496
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->val$main:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->val$activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 499
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setCurrentLooksType(I)V

    .line 500
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$000(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)V

    .line 501
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$102(Lcom/zui/gallery/filtershow/category/CategoryPanel;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 502
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$400(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$402(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)Z

    .line 507
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$200(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryTrack;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$200(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->val$main:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$300(Lcom/zui/gallery/filtershow/category/CategoryPanel;Lcom/zui/gallery/filtershow/category/CategoryTrack;Landroid/view/View;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 510
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;->val$activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    return-void
.end method
