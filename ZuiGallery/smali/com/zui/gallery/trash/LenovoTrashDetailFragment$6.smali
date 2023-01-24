.class Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "LenovoTrashDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->startRecoveryCloudTrashItem(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resule is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " && code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " && errMsg is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zlq"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$402(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 437
    sput-boolean v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->isRestore:Z

    .line 439
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$500(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    .line 443
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickTrash errorCode: ResultCode.RESULT_ERROR_NO_SPACE, errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoTrashDetailFragment"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/gallery/cloud/CloudUtils;->startRecycleSpaceErrorActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$6;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$500(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    :cond_2
    return-void
.end method
