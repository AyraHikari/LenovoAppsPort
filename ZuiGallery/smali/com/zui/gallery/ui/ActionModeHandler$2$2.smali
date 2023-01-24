.class Lcom/zui/gallery/ui/ActionModeHandler$2$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler$2;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/ui/ActionModeHandler$2;

.field final synthetic val$jc:Lcom/zui/gallery/util/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler$2;Lcom/zui/gallery/util/ThreadPool$JobContext;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$2$2;->this$1:Lcom/zui/gallery/ui/ActionModeHandler$2;

    iput-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$2$2;->val$jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$2$2;->this$1:Lcom/zui/gallery/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/zui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->access$1002(Lcom/zui/gallery/ui/ActionModeHandler;Lcom/zui/gallery/util/Future;)Lcom/zui/gallery/util/Future;

    .line 780
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$2$2;->val$jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
