.class Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;
.super Landroid/os/AsyncTask;
.source "SyncTrashService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/jobscheduler/SyncTrashService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/jobscheduler/SyncTrashService;


# direct methods
.method constructor <init>(Lcom/zui/gallery/jobscheduler/SyncTrashService;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string/jumbo p1, "wangcan"

    const-string v0, "doInBackground...."

    .line 48
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p1, Lcom/zui/gallery/jobscheduler/SyncTrashTask;

    iget-object v0, p0, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashService;

    invoke-virtual {v0}, Lcom/zui/gallery/jobscheduler/SyncTrashService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p1, v0}, Lcom/zui/gallery/jobscheduler/SyncTrashTask;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    .line 50
    invoke-virtual {p1}, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->startSync()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string/jumbo v0, "wangcan"

    const-string v1, "onPostExecute...."

    .line 56
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashService;

    invoke-static {v0}, Lcom/zui/gallery/jobscheduler/SyncTrashService;->access$000(Lcom/zui/gallery/jobscheduler/SyncTrashService;)Landroid/app/job/JobParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/jobscheduler/SyncTrashService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 58
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
