.class Lcom/zui/internal/app/ActionController$ActionParams$1;
.super Ljava/lang/Object;
.source "ActionController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/ActionController$ActionParams;->apply(Lcom/zui/internal/app/ActionController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/ActionController$ActionParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/ActionController$ActionParams;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/zui/internal/app/ActionController$ActionParams$1;->this$0:Lcom/zui/internal/app/ActionController$ActionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 235
    iget-object p1, p0, Lcom/zui/internal/app/ActionController$ActionParams$1;->this$0:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object p1, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/zui/internal/app/ActionController$ActionParams$1;->this$0:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object p2, p2, Lcom/zui/internal/app/ActionController$ActionParams;->mDialog:Lcom/zui/internal/app/ActionController;

    iget-object p2, p2, Lcom/zui/internal/app/ActionController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 236
    iget-object p1, p0, Lcom/zui/internal/app/ActionController$ActionParams$1;->this$0:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object p1, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mDialog:Lcom/zui/internal/app/ActionController;

    iget-object p1, p1, Lcom/zui/internal/app/ActionController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
