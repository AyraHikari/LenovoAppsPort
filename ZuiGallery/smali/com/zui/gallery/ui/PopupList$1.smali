.class Lcom/zui/gallery/ui/PopupList$1;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList$1;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$1;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$000(Lcom/zui/gallery/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$1;->this$0:Lcom/zui/gallery/ui/PopupList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PopupList;->access$002(Lcom/zui/gallery/ui/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$1;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$100(Lcom/zui/gallery/ui/PopupList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList$1;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v1}, Lcom/zui/gallery/ui/PopupList;->access$200(Lcom/zui/gallery/ui/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
