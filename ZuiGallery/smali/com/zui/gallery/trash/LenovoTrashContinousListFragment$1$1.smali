.class Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1$1;
.super Ljava/lang/Object;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->access$000(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    return-void
.end method
