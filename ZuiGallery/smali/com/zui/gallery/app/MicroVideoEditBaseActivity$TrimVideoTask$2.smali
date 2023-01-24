.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    const v2, 0x7f10022d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 724
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 725
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$100(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$100(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/app/ProgressDialogX;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 731
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    .line 732
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setRequestedOrientation(I)V

    .line 733
    throw v1

    .line 731
    :catch_0
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    .line 732
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setRequestedOrientation(I)V

    return-void
.end method
