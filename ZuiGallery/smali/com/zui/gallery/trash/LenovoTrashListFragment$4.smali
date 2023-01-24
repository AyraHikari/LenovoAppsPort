.class Lcom/zui/gallery/trash/LenovoTrashListFragment$4;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->trueDeletion()V
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

    .line 209
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 212
    iget-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object p2, p2, Lcom/zui/gallery/trash/LenovoTrashListFragment;->deleteButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
