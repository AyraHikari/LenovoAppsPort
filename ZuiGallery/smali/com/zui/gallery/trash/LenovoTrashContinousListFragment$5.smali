.class Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$5;
.super Ljava/lang/Object;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->trueDeletion()V
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

    .line 200
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$5;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
