.class Lcom/zui/gallery/cloud/CloudManager$8;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudManager;->copyCloudImages(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudManager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudManager;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudManager$8;->this$0:Lcom/zui/gallery/cloud/CloudManager;

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

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyCloudImages result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudManager"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "11"

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyCloudImages errorCode: ResultCode.RESULT_ERROR_NO_SPACE, errMsg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager$8;->this$0:Lcom/zui/gallery/cloud/CloudManager;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudManager;->access$200(Lcom/zui/gallery/cloud/CloudManager;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/gallery/cloud/CloudUtils;->startBackupSpaceErrorActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
