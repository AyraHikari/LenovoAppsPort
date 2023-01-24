.class public Lzui/app/ProgressDialogX;
.super Lzui/app/BaseDialog;
.source "ProgressDialogX.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageColor:I

.field private mMessageResId:I

.field private mMessageView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarStyle:I

.field private mProgressBarVal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    .line 73
    sget v3, Lzui/platform/R$attr;->progressDialogXTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_ProgressDialogX:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lzui/app/BaseDialog;-><init>(Landroid/content/Context;IIIZ)V

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lzui/app/ProgressDialogX;->mProgressBarStyle:I

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lzui/app/ProgressDialogX;->mMessageResId:I

    .line 75
    iput-object p1, p0, Lzui/app/ProgressDialogX;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic getButton(I)Landroid/widget/Button;
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 1

    .line 29
    invoke-super {p0}, Lzui/app/BaseDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 172
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 175
    :cond_0
    iget v0, p0, Lzui/app/ProgressDialogX;->mMax:I

    return v0
.end method

.method public bridge synthetic getParentContext()Landroid/content/Context;
    .locals 1

    .line 29
    invoke-super {p0}, Lzui/app/BaseDialog;->getParentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 165
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 168
    :cond_0
    iget v0, p0, Lzui/app/ProgressDialogX;->mProgressBarVal:I

    return v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 29
    invoke-super {p0}, Lzui/app/BaseDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget v0, p0, Lzui/app/ProgressDialogX;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lzui/app/ProgressDialogX;->mIncrementBy:I

    :goto_0
    return-void
.end method

.method public bridge synthetic isInLandscape(I)Z
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->isInLandscape(I)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object p1, p0, Lzui/app/ProgressDialogX;->mContext:Landroid/content/Context;

    sget-object v0, Lzui/platform/R$styleable;->progressDialogX:[I

    sget v1, Lzui/platform/R$attr;->progressDialogXStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    iget v0, p0, Lzui/app/ProgressDialogX;->mProgressBarStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    sget v0, Lzui/platform/R$styleable;->progressDialogX_horizontalProgressLayoutX:I

    sget v1, Lzui/platform/R$layout;->progress_dialog_x_horizontal:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Lzui/platform/R$styleable;->progressDialogX_progressLayoutX:I

    sget v1, Lzui/platform/R$layout;->progress_dialog_x:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 92
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate:mProgressBarStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzui/app/ProgressDialogX;->mProgressBarStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " layoutId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressDialogX"

    .line 92
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0, v0}, Lzui/app/ProgressDialogX;->setContentView(I)V

    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    sget p1, Lzui/platform/R$id;->message:I

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzui/app/ProgressDialogX;->mMessageView:Landroid/widget/TextView;

    .line 98
    iget p1, p0, Lzui/app/ProgressDialogX;->mMessageResId:I

    if-lez p1, :cond_1

    .line 99
    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    goto :goto_1

    .line 101
    :cond_1
    iget-object p1, p0, Lzui/app/ProgressDialogX;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    :goto_1
    sget p1, Lzui/platform/R$id;->progress:I

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lzui/app/ProgressDialogX;->mProgressBar:Landroid/widget/ProgressBar;

    .line 104
    iget p1, p0, Lzui/app/ProgressDialogX;->mMax:I

    if-lez p1, :cond_2

    .line 105
    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setMax(I)V

    .line 107
    :cond_2
    iget p1, p0, Lzui/app/ProgressDialogX;->mProgressBarVal:I

    if-lez p1, :cond_3

    .line 108
    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setProgress(I)V

    .line 110
    :cond_3
    iget p1, p0, Lzui/app/ProgressDialogX;->mIncrementBy:I

    if-lez p1, :cond_4

    .line 111
    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->incrementProgressBy(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lzui/app/BaseDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 117
    invoke-super {p0}, Lzui/app/BaseDialog;->onStart()V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lzui/app/ProgressDialogX;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 123
    invoke-super {p0}, Lzui/app/BaseDialog;->onStop()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lzui/app/ProgressDialogX;->mHasStarted:Z

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lzui/app/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setButtonsVerticalAligned(Z)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setButtonsVerticalAligned(Z)V

    return-void
.end method

.method public bridge synthetic setCancelableOnOrientation(Z)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setCancelableOnOrientation(Z)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    .line 182
    :cond_0
    iput p1, p0, Lzui/app/ProgressDialogX;->mMax:I

    :goto_0
    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 139
    iput p1, p0, Lzui/app/ProgressDialogX;->mMessageResId:I

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lzui/app/ProgressDialogX;->mMessage:Ljava/lang/CharSequence;

    .line 141
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lzui/app/ProgressDialogX;->mMessageResId:I

    .line 130
    iput-object p1, p0, Lzui/app/ProgressDialogX;->mMessage:Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMessageColor(I)V
    .locals 1

    .line 147
    iput p1, p0, Lzui/app/ProgressDialogX;->mMessageColor:I

    .line 148
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setParentContext(Landroid/content/Context;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lzui/app/ProgressDialogX;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lzui/app/ProgressDialogX;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 161
    :cond_0
    iput p1, p0, Lzui/app/ProgressDialogX;->mProgressBarVal:I

    :goto_0
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 154
    iput p1, p0, Lzui/app/ProgressDialogX;->mProgressBarStyle:I

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setView(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lzui/app/BaseDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic show()V
    .locals 0

    .line 29
    invoke-super {p0}, Lzui/app/BaseDialog;->show()V

    return-void
.end method
