.class Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$2;
.super Ljava/lang/Object;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Lzui/widget/BottomTabBar$OnSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->deleteOperating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(Lzui/widget/BottomTabBar;I)V
    .locals 0

    const p1, 0x7f080134

    if-eq p2, p1, :cond_1

    const p1, 0x7f0802c1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->access$200(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->access$100(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    :goto_0
    return-void
.end method
