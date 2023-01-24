.class Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;
.super Ljava/lang/Object;
.source "ExportDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/ui/ExportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/ui/ExportDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;->this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;->mEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;->this$0:Lcom/zui/gallery/filtershow/ui/ExportDialog;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;->mEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->access$000(Lcom/zui/gallery/filtershow/ui/ExportDialog;Landroid/widget/EditText;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
