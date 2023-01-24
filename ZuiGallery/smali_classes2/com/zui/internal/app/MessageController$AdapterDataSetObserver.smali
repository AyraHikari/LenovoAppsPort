.class Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/MessageController;


# direct methods
.method private constructor <init>(Lcom/zui/internal/app/MessageController;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/internal/app/MessageController;Lcom/zui/internal/app/MessageController$1;)V
    .locals 0

    .line 1052
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;-><init>(Lcom/zui/internal/app/MessageController;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {v0}, Lcom/zui/internal/app/MessageController;->access$1400(Lcom/zui/internal/app/MessageController;)Lzui/widget/PairedItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {v1}, Lcom/zui/internal/app/MessageController;->access$1500(Lcom/zui/internal/app/MessageController;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1001

    .line 1060
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1064
    :cond_0
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {v1, v0}, Lcom/zui/internal/app/MessageController;->access$1600(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1065
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {v1}, Lcom/zui/internal/app/MessageController;->access$1500(Lcom/zui/internal/app/MessageController;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1068
    sget v1, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1069
    sget v1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1073
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-static {v1, v0}, Lcom/zui/internal/app/MessageController;->access$1700(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
