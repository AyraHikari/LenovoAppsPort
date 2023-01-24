.class Lcom/zui/internal/app/MessageController$2;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/MessageController;->setupCustomContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/MessageController;

.field final synthetic val$buttonPanel:Landroid/view/View;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/MessageController;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iput-object p2, p0, Lcom/zui/internal/app/MessageController$2;->val$buttonPanel:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/internal/app/MessageController$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 551
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p2, p1, Lcom/zui/internal/app/MessageController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->access$102(Lcom/zui/internal/app/MessageController;I)I

    .line 554
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->val$buttonPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 555
    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/zui/internal/app/MessageController;->access$202(Lcom/zui/internal/app/MessageController;I)I

    .line 558
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$300(Lcom/zui/internal/app/MessageController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 559
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$400(Lcom/zui/internal/app/MessageController;)I

    move-result p1

    goto :goto_0

    .line 561
    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->access$500(Lcom/zui/internal/app/MessageController;)I

    move-result p1

    .line 563
    :goto_0
    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->access$700(Lcom/zui/internal/app/MessageController;)I

    move-result p3

    sub-int p3, p1, p3

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p4, p4, Lcom/zui/internal/app/MessageController;->mTitleView:Landroid/widget/TextView;

    const/4 p5, 0x0

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    .line 564
    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$100(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    goto :goto_1

    :cond_3
    move p4, p5

    :goto_1
    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget p4, p4, Lcom/zui/internal/app/MessageController;->mBtnCount:I

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    .line 565
    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->access$800(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->access$200(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    add-int/2addr p5, p4

    :cond_4
    sub-int/2addr p3, p5

    .line 563
    invoke-static {p2, p3}, Lcom/zui/internal/app/MessageController;->access$602(Lcom/zui/internal/app/MessageController;I)I

    .line 566
    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p2, p2, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-le p2, p1, :cond_5

    .line 567
    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 568
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    .line 569
    :cond_5
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->access$600(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 570
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 571
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$2;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    :goto_2
    return-void
.end method
