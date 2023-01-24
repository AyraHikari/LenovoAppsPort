.class Lcom/zui/gallery/trash/LenovoTrashListFragment$12;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1290
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$12;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1293
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$12;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$12;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002c5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
