.class Lcom/zui/gallery/trash/LenovoTrashListFragment$11;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "LenovoTrashListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->startRecoveryCloudTrashItem(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result as  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zlq"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    .line 1255
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickTrash errorCode: ResultCode.RESULT_ERROR_NO_SPACE, errMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LenovoTrashListFragment"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zui/gallery/cloud/CloudUtils;->startRecycleSpaceErrorActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1259
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$700(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    :cond_0
    const-string v1, "USERSPACE_NO_ENOUGH"

    .line 1261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100186

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$402(Lcom/zui/gallery/trash/LenovoTrashListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1263
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$700(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100208

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$402(Lcom/zui/gallery/trash/LenovoTrashListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1266
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$700(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1268
    :cond_2
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1269
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$700(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1270
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$800(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 1273
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$11;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$402(Lcom/zui/gallery/trash/LenovoTrashListFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    return-void
.end method
