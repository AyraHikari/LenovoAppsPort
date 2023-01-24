.class Lcom/zui/gallery/filtershow/category/MainPanel$9;
.super Ljava/lang/Object;
.source "MainPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/MainPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/MainPanel;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 402
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->enterFiltershowCaption(Landroid/content/Context;Z)V

    .line 403
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 405
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    .line 406
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 407
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    return-void
.end method
