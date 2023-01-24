.class public Lzui/app/FloatDialog$Builder;
.super Ljava/lang/Object;
.source "FloatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/FloatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/zui/internal/app/FloatController$FloatParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 174
    sget v0, Lzui/platform/R$attr;->floatDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_FloatDialog:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lzui/app/BaseDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget v0, Lzui/platform/R$attr;->floatDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_FloatDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/BaseDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result p2

    iput p2, p0, Lzui/app/FloatDialog$Builder;->mTheme:I

    .line 190
    new-instance p2, Lcom/zui/internal/app/FloatController$FloatParams;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lzui/app/FloatDialog$Builder;->mTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, v0}, Lcom/zui/internal/app/FloatController$FloatParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    .line 192
    iput-object p1, p2, Lcom/zui/internal/app/FloatController$FloatParams;->mParentContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lzui/app/FloatDialog;
    .locals 4

    .line 405
    new-instance v0, Lzui/app/FloatDialog;

    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/FloatController$FloatParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lzui/app/FloatDialog$Builder;->mTheme:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzui/app/FloatDialog;-><init>(Landroid/content/Context;IZ)V

    .line 406
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v2, v0, Lzui/app/FloatDialog;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v2, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v1, v2}, Lcom/zui/internal/app/FloatController$FloatParams;->apply(Lcom/zui/internal/app/FloatController;)V

    .line 407
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/FloatController$FloatParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setCancelable(Z)V

    .line 408
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/FloatController$FloatParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0, v3}, Lzui/app/FloatDialog;->setCanceledOnTouchOutside(Z)V

    .line 411
    :cond_0
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/FloatController$FloatParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 412
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/FloatController$FloatParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 413
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/FloatController$FloatParams;->mParentContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setParentContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 269
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 270
    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, p1, Lcom/zui/internal/app/FloatController$FloatParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 212
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 318
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mCursor:Landroid/database/Cursor;

    .line 319
    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p3, p1, Lcom/zui/internal/app/FloatController$FloatParams;->mLabelColumn:Ljava/lang/String;

    .line 320
    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, p1, Lcom/zui/internal/app/FloatController$FloatParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setGaussBlurParams(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 341
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mGaussBlurRadius:I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;
    .locals 2

    .line 241
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mItems:[Ljava/lang/CharSequence;

    .line 242
    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, p1, Lcom/zui/internal/app/FloatController$FloatParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 253
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mItems:[Ljava/lang/CharSequence;

    .line 254
    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, p1, Lcom/zui/internal/app/FloatController$FloatParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 359
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorMaskWinBg:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMaskWindowColor(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 350
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mMaskWinColor:I

    return-object p0
.end method

.method public setMaxHeight(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 390
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxHeight:I

    return-object p0
.end method

.method public setMaxWidth(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 380
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxWidth:I

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 284
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;Landroid/view/View;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 299
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    .line 300
    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, p1, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorView:Landroid/view/View;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 230
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 202
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 332
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;
    .locals 1

    .line 370
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mSystemStyle:Z

    return-object p0
.end method

.method public showAtLocation(Landroid/graphics/Rect;)Lzui/app/FloatDialog;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public showAtLocation(Landroid/graphics/Rect;Landroid/graphics/Point;)Lzui/app/FloatDialog;
    .locals 1

    .line 435
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mGlobalOffset:Landroid/graphics/Point;

    .line 436
    invoke-virtual {p0, p1}, Lzui/app/FloatDialog$Builder;->showAtLocation(Landroid/graphics/Rect;)Lzui/app/FloatDialog;

    move-result-object p1

    return-object p1
.end method

.method public showAtLocation(Landroid/view/View;)Lzui/app/FloatDialog;
    .locals 2

    .line 445
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorView:Landroid/view/View;

    .line 446
    invoke-virtual {p0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    .line 447
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 448
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 449
    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public showAtLocation(Landroid/view/View;Landroid/graphics/Point;)Lzui/app/FloatDialog;
    .locals 1

    .line 460
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mGlobalOffset:Landroid/graphics/Point;

    .line 461
    invoke-virtual {p0, p1}, Lzui/app/FloatDialog$Builder;->showAtLocation(Landroid/view/View;)Lzui/app/FloatDialog;

    move-result-object p1

    return-object p1
.end method

.method public showAtLocation(Landroid/view/View;Z)Lzui/app/FloatDialog;
    .locals 1

    .line 472
    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->P:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-boolean p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mHideArchorView:Z

    .line 473
    invoke-virtual {p0, p1}, Lzui/app/FloatDialog$Builder;->showAtLocation(Landroid/view/View;)Lzui/app/FloatDialog;

    move-result-object p1

    return-object p1
.end method
