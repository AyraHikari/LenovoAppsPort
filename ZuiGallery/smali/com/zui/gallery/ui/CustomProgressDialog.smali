.class public Lcom/zui/gallery/ui/CustomProgressDialog;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dialogView:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/AlertDialog;

.field private mProgressDialogX:Lzui/app/ProgressDialogX;

.field private final max:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private stepTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->context:Landroid/content/Context;

    .line 34
    iput p3, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->max:I

    .line 46
    new-instance p3, Lzui/app/ProgressDialogX;

    invoke-direct {p3, p1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mProgressDialogX:Lzui/app/ProgressDialogX;

    .line 48
    invoke-virtual {p3, p2}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzui/app/ProgressDialogX;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->hide()V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setProgress(I)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomProgressDialog;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    :cond_1
    return-void
.end method
