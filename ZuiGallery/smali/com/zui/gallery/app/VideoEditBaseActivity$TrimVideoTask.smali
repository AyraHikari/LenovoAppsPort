.class Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private deleteOrginFile:Z

.field private successful:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

.field private trimResultPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;ZLjava/lang/String;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->deleteOrginFile:Z

    .line 941
    iput-object p3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    .line 942
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 13

    const-string v0, "VideoEditActivity"

    .line 947
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 949
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isTrimValid()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isFilterValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-object v4, v3, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-wide v6, v3, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-wide v10, v3, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    div-long v8, v10, v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v12, p1

    invoke-static/range {v4 .. v12}, Lcom/zui/gallery/common/BitmapUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;JJZZLcom/zui/gallery/util/ThreadPool$JobContext;)V

    .line 953
    :cond_1
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 954
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    new-instance v1, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$1;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;)V

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 967
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 969
    :cond_2
    iget-boolean p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->deleteOrginFile:Z

    if-eqz p1, :cond_3

    .line 970
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    .line 972
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iget-boolean v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->deleteOrginFile:Z

    iget-object v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    invoke-virtual {p1, v3, v1, v4}, Lcom/zui/gallery/app/VideoEditBaseActivity;->doSave(ZLjava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$300(Lcom/zui/gallery/app/VideoEditBaseActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    .line 976
    invoke-static {v4}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$400(Lcom/zui/gallery/app/VideoEditBaseActivity;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-result-object v4

    .line 974
    invoke-static {p1, v1, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string/jumbo p1, "trim finished "

    .line 977
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v1, "trim video exception "

    .line 979
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 982
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 983
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    new-instance v0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask$2;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1001
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 934
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
