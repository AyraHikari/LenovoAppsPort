.class Lcom/zui/gallery/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 719
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler$2;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    .line 724
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$900(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$1100(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/ui/ActionModeHandler$2$1;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler$2$1;-><init>(Lcom/zui/gallery/ui/ActionModeHandler$2;Lcom/zui/gallery/util/ThreadPool$JobContext;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 743
    :cond_0
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 746
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 765
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    if-eqz v0, :cond_3

    .line 766
    invoke-static {v3, p1, v2}, Lcom/zui/gallery/ui/ActionModeHandler;->access$1300(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 767
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 765
    :goto_1
    invoke-static {v3, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$1202(Lcom/zui/gallery/ui/ActionModeHandler;Landroid/content/Intent;)Landroid/content/Intent;

    .line 773
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->access$1100(Lcom/zui/gallery/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/ui/ActionModeHandler$2$2;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/ui/ActionModeHandler$2$2;-><init>(Lcom/zui/gallery/ui/ActionModeHandler$2;Lcom/zui/gallery/util/ThreadPool$JobContext;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method
