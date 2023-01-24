.class public Lzui/app/MessageDialog$Builder;
.super Ljava/lang/Object;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/zui/internal/app/MessageController$MessageParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 481
    sget v0, Lzui/platform/R$attr;->messageDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lzui/app/BaseDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    sget v0, Lzui/platform/R$attr;->messageDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/BaseDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result p2

    iput p2, p0, Lzui/app/MessageDialog$Builder;->mTheme:I

    .line 497
    new-instance p2, Lcom/zui/internal/app/MessageController$MessageParams;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lzui/app/MessageDialog$Builder;->mTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, v0}, Lcom/zui/internal/app/MessageController$MessageParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    .line 499
    iput-object p1, p2, Lcom/zui/internal/app/MessageController$MessageParams;->mParentContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addGroup(II)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1457
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lzui/app/MessageDialog$Builder;->addGroup(Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addGroup(Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 1444
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/app/MessageController$MessageParams;->addGroup(Ljava/lang/CharSequence;I)V

    :cond_0
    return-object p0
.end method

.method public addPairedItem2Group(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 1473
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/internal/app/MessageController$MessageParams;->addItemToGroup(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public create()Lzui/app/MessageDialog;
    .locals 4

    .line 1520
    new-instance v0, Lzui/app/MessageDialog;

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lzui/app/MessageDialog$Builder;->mTheme:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzui/app/MessageDialog;-><init>(Landroid/content/Context;IZ)V

    .line 1521
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v2, v0, Lzui/app/MessageDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v2, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v1, v2}, Lcom/zui/internal/app/MessageController$MessageParams;->apply(Lcom/zui/internal/app/MessageController;)V

    .line 1522
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setCancelable(Z)V

    .line 1523
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1524
    invoke-virtual {v0, v3}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 1526
    :cond_0
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1527
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1528
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1529
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1531
    :cond_1
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsDialogCenter:Z

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setDialogCenter(Z)V

    .line 1532
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mParentContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setParentContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public enableCustomizedLineFeed(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1409
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCustomizedLF:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 511
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hideButtonPanelDivider(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1431
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mHideBtnPanelDivider:Z

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 822
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 823
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setButtonsVerticalAligned(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 701
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIsVerticalBtn:Z

    return-object p0
.end method

.method public setCancelable(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 731
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCancelable:Z

    return-object p0
.end method

.method public setCheckMessage(IZ)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1285
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckMessage:Ljava/lang/CharSequence;

    .line 1286
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsChecked:Z

    return-object p0
.end method

.method public setCheckMessage(Ljava/lang/CharSequence;Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1300
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckMessage:Ljava/lang/CharSequence;

    .line 1301
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsChecked:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 841
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCursor:Landroid/database/Cursor;

    .line 842
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mLabelColumn:Ljava/lang/String;

    .line 843
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 612
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1486
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    .line 1487
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    .line 1488
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object v0, p1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Lzui/app/MessageDialog$OnDescriptionClickableTextListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1503
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    .line 1504
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    .line 1505
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p1, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    return-object p0
.end method

.method public setDialogCenter(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1420
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIsDialogCenter:Z

    return-object p0
.end method

.method public setEditorErrorMessage(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1224
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorError:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorErrorMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1236
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorError:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorHint(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1188
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1176
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorPromptMessage(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1212
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorPrompt:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorPromptMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1200
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorPrompt:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorText(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1164
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorText(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1152
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorTextWatcher(Landroid/text/TextWatcher;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1248
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public setIcon(I)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1325
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzui/app/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    return-object p0
.end method

.method public setIcon(II)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1350
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1351
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(III)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1379
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1380
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    .line 1381
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p0, p1, v0}, Lzui/app/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1364
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1365
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1395
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1396
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    .line 1397
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 794
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItems:[Ljava/lang/CharSequence;

    .line 795
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 806
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItems:[Ljava/lang/CharSequence;

    .line 807
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 1260
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1272
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageDialogType(I)Lzui/app/MessageDialog$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 527
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mType:I

    :cond_0
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 867
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItems:[Ljava/lang/CharSequence;

    .line 868
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 869
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckedItems:[Z

    .line 870
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 921
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCursor:Landroid/database/Cursor;

    .line 922
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p4, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 923
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 924
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mLabelColumn:Ljava/lang/String;

    .line 925
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 893
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItems:[Ljava/lang/CharSequence;

    .line 894
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 895
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckedItems:[Z

    .line 896
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 650
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 651
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 663
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 664
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 676
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 677
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 689
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 690
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 749
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1313
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 711
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1031
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 721
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPairedItems(II)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1116
    invoke-virtual {p0, p1, p2, v0}, Lzui/app/MessageDialog$Builder;->setPairedItems(III)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPairedItems(III)Lzui/app/MessageDialog$Builder;
    .locals 2

    if-lez p1, :cond_0

    .line 1054
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsTitle:[Ljava/lang/CharSequence;

    :cond_0
    if-lez p2, :cond_1

    .line 1057
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsMessage:[Ljava/lang/CharSequence;

    .line 1059
    :cond_1
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    return-object p0
.end method

.method public setPairedItems(Lzui/widget/PairedItemListAdapter;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1141
    invoke-virtual {p0, p1, v0}, Lzui/app/MessageDialog$Builder;->setPairedItems(Lzui/widget/PairedItemListAdapter;I)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPairedItems(Lzui/widget/PairedItemListAdapter;I)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1101
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    .line 1102
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    return-object p0
.end method

.method public setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1129
    invoke-virtual {p0, p1, p2, v0}, Lzui/app/MessageDialog$Builder;->setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1081
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsTitle:[Ljava/lang/CharSequence;

    .line 1082
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsMessage:[Ljava/lang/CharSequence;

    .line 1083
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 624
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 625
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 637
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 638
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 946
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItems:[Ljava/lang/CharSequence;

    .line 947
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 948
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckedItem:I

    .line 949
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 971
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCursor:Landroid/database/Cursor;

    .line 972
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p4, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 973
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckedItem:I

    .line 974
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mLabelColumn:Ljava/lang/String;

    .line 975
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 1016
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1017
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1018
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckedItem:I

    .line 1019
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 994
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItems:[Ljava/lang/CharSequence;

    .line 995
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 996
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckedItem:I

    .line 997
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 538
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 548
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleIcon(I)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 560
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mTitleIconId:I

    return-object p0
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 575
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setTitleIconAttribute(I)Lzui/app/MessageDialog$Builder;
    .locals 3

    .line 589
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 590
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 591
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mTitleIconId:I

    return-object p0
.end method

.method public setView(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    .line 762
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mView:Landroid/view/View;

    .line 763
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lzui/app/MessageDialog$Builder;
    .locals 1

    .line 782
    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mView:Landroid/view/View;

    .line 783
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->P:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lzui/app/MessageDialog;
    .locals 1

    .line 1547
    invoke-virtual {p0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object v0

    .line 1548
    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-object v0
.end method
