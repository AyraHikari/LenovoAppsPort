.class Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
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
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

.field private final mOperation:I

.field final synthetic this$0:Lcom/zui/gallery/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;",
            "Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;",
            ")V"
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput p2, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 555
    iput-object p3, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 556
    iput-object p4, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 547
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8

    .line 562
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    .line 565
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    iget-object v4, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-static {v3, v4}, Lcom/zui/gallery/ui/MenuExecutor;->access$600(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 566
    iget v3, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    const v4, 0x7f0800a7

    if-ne v3, v4, :cond_0

    .line 568
    iget-object v3, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    iget-object v4, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-static {v3, p1, v4, v0, v5}, Lcom/zui/gallery/ui/MenuExecutor;->access$700(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/util/ArrayList;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I

    move-result v1

    .line 569
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {p1}, Lcom/zui/gallery/ui/MenuExecutor;->access$800(Lcom/zui/gallery/ui/MenuExecutor;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 570
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {p1}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$900(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_1

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/Path;

    .line 575
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 579
    :cond_1
    iget-object v6, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    iget v7, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-static {v6, v0, p1, v7, v5}, Lcom/zui/gallery/ui/MenuExecutor;->access$1000(Lcom/zui/gallery/ui/MenuExecutor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/util/ThreadPool$JobContext;ILcom/zui/gallery/data/Path;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x2

    .line 582
    :cond_2
    iget-object v5, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-static {v5, v4, v7}, Lcom/zui/gallery/ui/MenuExecutor;->access$1100(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v1, v2, :cond_4

    .line 590
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-static {p1, v1, v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$1200(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "MenuExecutor"

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to execute operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v1, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    if-eq v1, v2, :cond_5

    .line 590
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    iget-object v2, p0, Lcom/zui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/MenuExecutor;->access$1200(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 591
    :cond_5
    throw p1
.end method
