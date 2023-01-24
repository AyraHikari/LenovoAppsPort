.class public Lcom/zui/gallery/filtershow/caption/view/InputDialog;
.super Landroid/app/Dialog;
.source "InputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_cancel:Landroid/widget/Button;

.field private m_content:Ljava/lang/String;

.field private m_listener:Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;

.field private m_ok:Landroid/widget/Button;

.field private m_userInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_listener:Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f080398

    .line 78
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    const v0, 0x7f080275

    .line 79
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_ok:Landroid/widget/Button;

    const v0, 0x7f0800c3

    .line 80
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_cancel:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->setOkButtonEnable(Z)V

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    new-instance v1, Lcom/zui/gallery/filtershow/caption/view/InputDialog$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog$2;-><init>(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public getUserInputText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800c3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f080275

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_listener:Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 121
    invoke-interface {p1, p0, v0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;->onClick(Landroid/app/Dialog;Z)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_listener:Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;

    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1, p0, v1}, Lcom/zui/gallery/filtershow/caption/view/InputDialog$OnCloseListener;->onClick(Landroid/app/Dialog;Z)V

    .line 126
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 128
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0078

    .line 58
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->initView()V

    .line 61
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_content:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    new-instance v0, Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/caption/view/InputDialog$1;-><init>(Lcom/zui/gallery/filtershow/caption/view/InputDialog;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOkButtonEnable(Z)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_ok:Landroid/widget/Button;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_ok:Landroid/widget/Button;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setUserInputText(Ljava/lang/String;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_content:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/InputDialog;->m_userInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
