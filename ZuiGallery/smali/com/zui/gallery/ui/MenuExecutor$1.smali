.class Lcom/zui/gallery/ui/MenuExecutor$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/MenuExecutor;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 150
    invoke-interface {p1}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onProgressStart()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$200(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/ui/CustomProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$300(Lcom/zui/gallery/ui/MenuExecutor;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$200(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/ui/CustomProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/CustomProgressDialog;->setProgress(I)V

    .line 169
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 171
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$000(Lcom/zui/gallery/ui/MenuExecutor;)V

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 159
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$1;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {p1}, Lcom/zui/gallery/ui/MenuExecutor;->access$100(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    :cond_6
    :goto_0
    return-void
.end method
