.class public Lcom/zui/internal/app/FloatController$FloatParams;
.super Lcom/zui/internal/app/DialogController$DialogParams;
.source "FloatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/FloatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatParams"
.end annotation


# instance fields
.field public mArchorMaskWinBg:Landroid/graphics/drawable/Drawable;

.field public mArchorView:Landroid/view/View;

.field public mDialogMaxHeight:I

.field public mDialogMaxWidth:I

.field public mGaussBlurRadius:I

.field public mGlobalOffset:Landroid/graphics/Point;

.field public mHideArchorView:Z

.field public mMaskWinColor:I

.field public mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

.field public mSystemStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 583
    iput p1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mGaussBlurRadius:I

    .line 584
    iput p1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMaskWinColor:I

    const/4 p1, 0x1

    .line 596
    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/internal/app/FloatController;)V
    .locals 3

    .line 600
    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mGaussBlurRadius:I

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$102(Lcom/zui/internal/app/FloatController;I)I

    .line 601
    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMaskWinColor:I

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$202(Lcom/zui/internal/app/FloatController;I)I

    .line 602
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorMaskWinBg:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$302(Lcom/zui/internal/app/FloatController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 603
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$402(Lcom/zui/internal/app/FloatController;Landroid/view/View;)Landroid/view/View;

    .line 604
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$502(Lcom/zui/internal/app/FloatController;Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$MenuAdapter;

    .line 605
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mGlobalOffset:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$602(Lcom/zui/internal/app/FloatController;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 606
    iget-boolean v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mHideArchorView:Z

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$702(Lcom/zui/internal/app/FloatController;Z)Z

    .line 607
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$802(Lcom/zui/internal/app/FloatController;Lcom/zui/internal/menu/MenuBuilder;)Lcom/zui/internal/menu/MenuBuilder;

    .line 610
    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->access$500(Lcom/zui/internal/app/FloatController;)Lzui/app/FloatDialog$MenuAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->access$800(Lcom/zui/internal/app/FloatController;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->access$400(Lcom/zui/internal/app/FloatController;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzui/app/FloatDialog$MenuAdapter;->onCreateFloatDialog(Landroid/view/Menu;Landroid/view/View;)V

    .line 611
    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->access$900(Lcom/zui/internal/app/FloatController;)Lzui/widget/ZuiMenuListAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->access$800(Lcom/zui/internal/app/FloatController;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/widget/ZuiMenuListAdapter;->initMenu(Lcom/zui/internal/menu/MenuBuilder;)V

    .line 612
    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->access$900(Lcom/zui/internal/app/FloatController;)Lzui/widget/ZuiMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 613
    iput-object p1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 616
    :cond_0
    iget-boolean v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mSystemStyle:Z

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$1002(Lcom/zui/internal/app/FloatController;Z)Z

    .line 617
    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxHeight:I

    if-lez v0, :cond_1

    .line 618
    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$1102(Lcom/zui/internal/app/FloatController;I)I

    .line 620
    :cond_1
    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxWidth:I

    if-lez v0, :cond_2

    .line 621
    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->access$1202(Lcom/zui/internal/app/FloatController;I)I

    .line 623
    :cond_2
    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;->apply(Lcom/zui/internal/app/DialogController;)V

    return-void
.end method
