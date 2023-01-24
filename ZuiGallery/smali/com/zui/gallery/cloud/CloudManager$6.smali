.class Lcom/zui/gallery/cloud/CloudManager$6;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudManager;->createCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudManager;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudManager$6;->this$0:Lcom/zui/gallery/cloud/CloudManager;

    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudManager$6;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudManager$6;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
