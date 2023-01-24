.class Lcom/zui/gallery/ui/PopupList$3;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 115
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$000(Lcom/zui/gallery/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$400(Lcom/zui/gallery/ui/PopupList;)V

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$000(Lcom/zui/gallery/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$100(Lcom/zui/gallery/ui/PopupList;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    .line 122
    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$500(Lcom/zui/gallery/ui/PopupList;)I

    move-result v3

    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$600(Lcom/zui/gallery/ui/PopupList;)I

    move-result v4

    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$700(Lcom/zui/gallery/ui/PopupList;)I

    move-result v5

    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$3;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$800(Lcom/zui/gallery/ui/PopupList;)I

    move-result v6

    .line 121
    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
