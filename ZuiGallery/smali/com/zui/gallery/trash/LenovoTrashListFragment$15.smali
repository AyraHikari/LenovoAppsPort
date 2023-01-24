.class Lcom/zui/gallery/trash/LenovoTrashListFragment$15;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->refresh()V
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

    .line 1330
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$900(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$800(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1341
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$1000(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1342
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$1100(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1343
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "zlq"

    if-eqz v0, :cond_3

    .line 1348
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$1000(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1349
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$1100(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V

    .line 1350
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    const-string v0, "refresh...loader..."

    .line 1352
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errMsg  as  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$15;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
