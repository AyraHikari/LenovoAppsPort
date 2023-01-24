.class Lcom/zui/internal/app/ActionController$1;
.super Ljava/lang/Object;
.source "ActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/ActionController;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/ActionController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/ActionController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/zui/internal/app/ActionController$1;->this$0:Lcom/zui/internal/app/ActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/zui/internal/app/ActionController$1;->this$0:Lcom/zui/internal/app/ActionController;

    iget-object v0, v0, Lcom/zui/internal/app/ActionController;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast v0, Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method
