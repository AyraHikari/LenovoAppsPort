.class Lcom/zui/gallery/filtershow/category/MainPanel$13;
.super Ljava/lang/Object;
.source "MainPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/MainPanel;->setToggleVersionsPanelButton(Landroid/widget/ImageButton;)V
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

    .line 796
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$13;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 799
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$13;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->access$200(Lcom/zui/gallery/filtershow/category/MainPanel;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 800
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$13;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->access$300(Lcom/zui/gallery/filtershow/category/MainPanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    goto :goto_0

    .line 802
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$13;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->access$200(Lcom/zui/gallery/filtershow/category/MainPanel;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->access$302(Lcom/zui/gallery/filtershow/category/MainPanel;I)I

    .line 803
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$13;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->showPanel(I)V

    :goto_0
    return-void
.end method
