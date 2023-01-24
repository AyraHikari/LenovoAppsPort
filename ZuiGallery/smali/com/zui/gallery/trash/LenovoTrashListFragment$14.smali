.class Lcom/zui/gallery/trash/LenovoTrashListFragment$14;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteLocalFile()V
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

    .line 1321
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$14;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1324
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$14;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$200(Lcom/zui/gallery/trash/LenovoTrashListFragment;Z)V

    return-void
.end method
