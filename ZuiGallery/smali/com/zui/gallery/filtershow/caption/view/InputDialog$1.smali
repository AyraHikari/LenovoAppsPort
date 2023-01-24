.class Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/caption/view/InputDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->access$000(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->access$000(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->access$000(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
