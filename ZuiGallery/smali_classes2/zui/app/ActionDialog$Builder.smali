.class public Lzui/app/ActionDialog$Builder;
.super Ljava/lang/Object;
.source "ActionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/ActionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/zui/internal/app/ActionController$ActionParams;

.field private mTheme:I

.field private mTopButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 318
    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lzui/app/BaseDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/BaseDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result p2

    iput p2, p0, Lzui/app/ActionDialog$Builder;->mTheme:I

    .line 334
    new-instance p2, Lcom/zui/internal/app/ActionController$ActionParams;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lzui/app/ActionDialog$Builder;->mTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, v0}, Lcom/zui/internal/app/ActionController$ActionParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    .line 336
    iput-object p1, p2, Lcom/zui/internal/app/ActionController$ActionParams;->mParentContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lzui/app/ActionDialog;
    .locals 5

    .line 1000
    new-instance v0, Lzui/app/ActionDialog;

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lzui/app/ActionDialog$Builder;->mTheme:I

    iget-boolean v3, p0, Lzui/app/ActionDialog$Builder;->mTopButton:Z

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 1001
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v2, v0, Lzui/app/ActionDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v2, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v1, v2}, Lcom/zui/internal/app/ActionController$ActionParams;->apply(Lcom/zui/internal/app/ActionController;)V

    .line 1002
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lzui/app/ActionDialog;->setCancelable(Z)V

    .line 1003
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1004
    invoke-virtual {v0, v4}, Lzui/app/ActionDialog;->setCanceledOnTouchOutside(Z)V

    .line 1006
    :cond_0
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lzui/app/ActionDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1007
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lzui/app/ActionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1008
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mParentContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzui/app/ActionDialog;->setParentContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public enableCustomizedLineFeed(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 940
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mCustomizedLF:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 350
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v0, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hideButtonPanelDivider(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 986
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mHideBtnPanelDivider:Z

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 680
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 681
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setButtonTop(Z)V
    .locals 0

    .line 929
    iput-boolean p1, p0, Lzui/app/ActionDialog$Builder;->mTopButton:Z

    return-void
.end method

.method public setButtonsVerticalAligned(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 975
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mIsVerticalBtn:Z

    return-object p0
.end method

.method public setCancelable(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 589
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 729
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mCursor:Landroid/database/Cursor;

    .line 730
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mLabelColumn:Ljava/lang/String;

    .line 731
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 481
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 429
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mTitleIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 444
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lzui/app/ActionDialog$Builder;
    .locals 3

    .line 458
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 459
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 460
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mTitleIconId:I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 652
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    .line 653
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 664
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    .line 665
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/ActionDialog$MenuAdapter;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 695
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/ActionDialog$MenuAdapter;Landroid/view/View;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 710
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

    .line 711
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mAttachedView:Landroid/view/View;

    return-object p0
.end method

.method public setMessage(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 394
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 406
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageTitle(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 381
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mTitle:Ljava/lang/CharSequence;

    .line 382
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setMessageTitle(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 416
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mTitle:Ljava/lang/CharSequence;

    .line 417
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 755
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    .line 756
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 757
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mCheckedItems:[Z

    .line 758
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 809
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mCursor:Landroid/database/Cursor;

    .line 810
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p4, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 811
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 812
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mLabelColumn:Ljava/lang/String;

    .line 813
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 781
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    .line 782
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 783
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mCheckedItems:[Z

    .line 784
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 519
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 520
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 532
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 533
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 545
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 546
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 558
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 559
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 607
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 569
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 919
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 579
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOptionItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 951
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOptionItems:[Ljava/lang/CharSequence;

    .line 952
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 963
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOptionItems:[Ljava/lang/CharSequence;

    .line 964
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 493
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 494
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 506
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 507
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 834
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    .line 835
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 836
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mCheckedItem:I

    .line 837
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 859
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mCursor:Landroid/database/Cursor;

    .line 860
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p4, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 861
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mCheckedItem:I

    .line 862
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mLabelColumn:Ljava/lang/String;

    .line 863
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 904
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 905
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 906
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mCheckedItem:I

    .line 907
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 882
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    .line 883
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 884
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mCheckedItem:I

    .line 885
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 359
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mTitle:Ljava/lang/CharSequence;

    .line 360
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 370
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mTitle:Ljava/lang/CharSequence;

    .line 371
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setView(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    .line 620
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mView:Landroid/view/View;

    .line 621
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lzui/app/ActionDialog$Builder;
    .locals 1

    .line 640
    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mView:Landroid/view/View;

    .line 641
    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->P:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lzui/app/ActionDialog;
    .locals 1

    .line 1023
    invoke-virtual {p0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-object v0
.end method
