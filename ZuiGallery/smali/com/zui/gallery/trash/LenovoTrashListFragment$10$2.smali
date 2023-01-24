.class Lcom/zui/gallery/trash/LenovoTrashListFragment$10$2;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment$10;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$2;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$2;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->clearCloudItem()V

    return-void
.end method
