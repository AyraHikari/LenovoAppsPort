.class Lcom/zui/gallery/ui/PopupList$2;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/PopupList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/PopupList;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList$2;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/zui/gallery/ui/PopupList$2;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {p1}, Lcom/zui/gallery/ui/PopupList;->access$000(Lcom/zui/gallery/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/PopupList$2;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {p1}, Lcom/zui/gallery/ui/PopupList;->access$000(Lcom/zui/gallery/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 108
    iget-object p1, p0, Lcom/zui/gallery/ui/PopupList$2;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {p1}, Lcom/zui/gallery/ui/PopupList;->access$300(Lcom/zui/gallery/ui/PopupList;)Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/ui/PopupList$2;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {p1}, Lcom/zui/gallery/ui/PopupList;->access$300(Lcom/zui/gallery/ui/PopupList;)Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;

    move-result-object p1

    long-to-int p2, p4

    invoke-interface {p1, p2}, Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;->onPopupItemClick(I)Z

    :cond_1
    return-void
.end method
