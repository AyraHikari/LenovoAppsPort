.class Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;
.super Landroid/os/AsyncTask;
.source "ActionModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/ActionModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputerDeleteMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private task:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

.field final synthetic this$0:Lcom/zui/gallery/ui/ActionModeHandler;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/ui/ActionModeHandler$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;-><init>(Lcom/zui/gallery/ui/ActionModeHandler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;)Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->task:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->hiddeProgress()V

    return-void
.end method

.method private hiddeProgress()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showProgress()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$002(Lcom/zui/gallery/ui/ActionModeHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 287
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f10009e

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 289
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$000(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask$1;-><init>(Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 282
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    const-string p1, "ActionModeHandler"

    const-string v0, "caculate delete info "

    .line 311
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$400(Lcom/zui/gallery/ui/ActionModeHandler;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cancel caculate delte info"

    .line 314
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 328
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->hiddeProgress()V

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    .line 331
    invoke-static {v1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$500(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 330
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    new-instance v1, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;

    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    const-string v3, "Gallery Delete Progress Listener"

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$602(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$700(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor;

    move-result-object v0

    const v1, 0x7f0800a7

    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->access$600(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 321
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 322
    iput-object p0, p0, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->task:Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;

    .line 323
    invoke-direct {p0}, Lcom/zui/gallery/ui/ActionModeHandler$ComputerDeleteMessageTask;->showProgress()V

    return-void
.end method
