.class Lcom/zui/gallery/filtershow/caption/view/InputDialog$2;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/caption/view/InputDialog;->initView()V
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

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$2;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$2;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->setOkButtonEnable(Z)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$2;->this$0:Lcom/zui/gallery/filtershow/caption/view/InputDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->setOkButtonEnable(Z)V

    :goto_0
    return-void
.end method
