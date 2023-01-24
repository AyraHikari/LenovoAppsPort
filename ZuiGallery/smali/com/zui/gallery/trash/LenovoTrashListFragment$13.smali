.class Lcom/zui/gallery/trash/LenovoTrashListFragment$13;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "LenovoTrashListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->startDeleteCloudTrashItem(Ljava/util/List;)V
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

    .line 1301
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$13;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result as  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zlq"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$13;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$700(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    return-void
.end method
