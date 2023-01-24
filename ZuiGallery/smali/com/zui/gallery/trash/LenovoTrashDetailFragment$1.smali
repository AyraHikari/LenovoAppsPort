.class Lcom/zui/gallery/trash/LenovoTrashDetailFragment$1;
.super Ljava/lang/Object;
.source "LenovoTrashDetailFragment.java"

# interfaces
.implements Lzui/widget/BottomTabBar$OnSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->initBottomBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(Lzui/widget/BottomTabBar;I)V
    .locals 1

    const-string p1, "LenovoTrashDetailFragment"

    const-string v0, "onSelectionChanged"

    .line 129
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f080134

    if-eq p2, p1, :cond_1

    const p1, 0x7f0802c1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$100(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$000(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    :goto_0
    return-void
.end method
