.class public Lcom/zui/gallery/jobscheduler/SyncTrashService;
.super Landroid/app/job/JobService;
.source "SyncTrashService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;
    }
.end annotation


# instance fields
.field private mJobParameters:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const-string/jumbo v0, "wangcan"

    const-string/jumbo v1, "startSync...."

    .line 22
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/jobscheduler/SyncTrashService;)Landroid/app/job/JobParameters;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zui/gallery/jobscheduler/SyncTrashService;->mJobParameters:Landroid/app/job/JobParameters;

    return-object p0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string/jumbo v0, "wangcan"

    const-string v1, "onStartJob...."

    .line 29
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object p1, p0, Lcom/zui/gallery/jobscheduler/SyncTrashService;->mJobParameters:Landroid/app/job/JobParameters;

    .line 31
    new-instance p1, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;

    invoke-direct {p1, p0}, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;-><init>(Lcom/zui/gallery/jobscheduler/SyncTrashService;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    .line 32
    invoke-virtual {p1, v1}, Lcom/zui/gallery/jobscheduler/SyncTrashService$SyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string/jumbo p1, "wangcan"

    const-string v0, "onStopJob...."

    .line 40
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
