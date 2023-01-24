.class Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;->this$1:Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;->this$1:Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$200(Lcom/zui/gallery/app/VideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;->this$1:Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$200(Lcom/zui/gallery/app/VideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/app/ProgressDialogX;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;->this$1:Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "VideoEditActivity"

    const-string v3, "dismiss save dialog exception "

    .line 961
    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 963
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;->this$1:Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;

    iget-object v2, v2, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->setRequestedOrientation(I)V

    .line 964
    throw v1
.end method
