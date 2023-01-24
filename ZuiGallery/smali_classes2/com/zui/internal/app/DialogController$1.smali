.class Lcom/zui/internal/app/DialogController$1;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/DialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/DialogController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->access$000(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->access$100(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->access$100(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->access$200(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->access$300(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->access$300(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->access$400(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->access$500(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->access$500(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zui/internal/app/DialogController$1;->this$0:Lcom/zui/internal/app/DialogController;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
