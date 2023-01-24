.class Lcom/zui/internal/app/MessageController$3;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/MessageController;->setupWarningView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/MessageController;

.field final synthetic val$btnPanel:Landroid/view/ViewGroup;

.field final synthetic val$p:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    iput-object p2, p0, Lcom/zui/internal/app/MessageController$3;->val$btnPanel:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/zui/internal/app/MessageController$3;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 755
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController;->mTitleView:Landroid/widget/TextView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 756
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p3, p1, Lcom/zui/internal/app/MessageController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    invoke-static {p1, p3}, Lcom/zui/internal/app/MessageController;->access$102(Lcom/zui/internal/app/MessageController;I)I

    goto :goto_0

    .line 758
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->access$102(Lcom/zui/internal/app/MessageController;I)I

    .line 760
    :goto_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->val$btnPanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 761
    iget-object p3, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$800(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    add-int/2addr p1, p4

    invoke-static {p3, p1}, Lcom/zui/internal/app/MessageController;->access$202(Lcom/zui/internal/app/MessageController;I)I

    goto :goto_1

    .line 763
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->access$202(Lcom/zui/internal/app/MessageController;I)I

    .line 765
    :goto_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$900(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 766
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$900(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result p3

    invoke-static {p1, p3}, Lcom/zui/internal/app/MessageController;->access$1002(Lcom/zui/internal/app/MessageController;I)I

    .line 767
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$1000(Lcom/zui/internal/app/MessageController;)I

    move-result p1

    iget-object p3, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p3}, Lcom/zui/internal/app/MessageController;->access$1100(Lcom/zui/internal/app/MessageController;)I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 768
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$1100(Lcom/zui/internal/app/MessageController;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/zui/internal/app/MessageController;->access$1002(Lcom/zui/internal/app/MessageController;I)I

    .line 770
    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    .line 771
    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$900(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 772
    iget-object p3, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p3}, Lcom/zui/internal/app/MessageController;->access$1000(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p1

    add-int/2addr p4, p5

    invoke-static {p3, p4}, Lcom/zui/internal/app/MessageController;->access$1002(Lcom/zui/internal/app/MessageController;I)I

    .line 774
    :cond_3
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 775
    iget-object p3, p0, Lcom/zui/internal/app/MessageController$3;->val$p:Landroid/view/ViewGroup$LayoutParams;

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$3;->val$p:Landroid/view/ViewGroup$LayoutParams;

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    .line 778
    iget-object p4, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$300(Lcom/zui/internal/app/MessageController;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 779
    iget-object p4, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$400(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    goto :goto_2

    .line 781
    :cond_4
    iget-object p4, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$500(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    :goto_2
    if-le p1, p4, :cond_5

    .line 784
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$1000(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p4, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->access$100(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p4, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    .line 785
    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->access$200(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p3

    .line 784
    invoke-static {p1, p4}, Lcom/zui/internal/app/MessageController;->access$1202(Lcom/zui/internal/app/MessageController;I)I

    goto :goto_3

    .line 787
    :cond_5
    iget-object p4, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$1000(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p1, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    .line 788
    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->access$100(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p1, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->access$200(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p1, p5

    sub-int/2addr p1, p3

    .line 787
    invoke-static {p4, p1}, Lcom/zui/internal/app/MessageController;->access$1202(Lcom/zui/internal/app/MessageController;I)I

    .line 790
    :goto_3
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$1200(Lcom/zui/internal/app/MessageController;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->val$p:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p3}, Lcom/zui/internal/app/MessageController;->access$1200(Lcom/zui/internal/app/MessageController;)I

    move-result p3

    if-eq p1, p3, :cond_6

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    .line 791
    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$1300(Lcom/zui/internal/app/MessageController;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->access$1200(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    if-le p1, p2, :cond_6

    .line 792
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->val$p:Landroid/view/ViewGroup$LayoutParams;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->access$1200(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 793
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$3;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$1300(Lcom/zui/internal/app/MessageController;)Landroid/widget/ScrollView;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$3;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method
