.class Lcom/zui/gallery/trash/LenovoTrashDetailFragment$2;
.super Ljava/lang/Object;
.source "LenovoTrashDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->trueDeletion()V
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

    .line 153
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 156
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    iget-object p2, p2, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->deleteButton:Lzui/widget/BottomBarItem;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lzui/widget/BottomBarItem;->setEnabled(Z)V

    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
