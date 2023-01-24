.class public Lcom/zui/internal/app/ActionController$ActionParams;
.super Lcom/zui/internal/app/DialogController$DialogParams;
.source "ActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/ActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionParams"
.end annotation


# instance fields
.field public mAttachedView:Landroid/view/View;

.field public mDialog:Lcom/zui/internal/app/ActionController;

.field public mIsDialogCenter:Z

.field public mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

.field public mMessageTitle:Z

.field public mOptionItems:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/internal/app/ActionController;)V
    .locals 6

    .line 213
    iget-boolean v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController;->mMessageTitle:Z

    .line 214
    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

    invoke-static {p1, v0}, Lcom/zui/internal/app/ActionController;->access$002(Lcom/zui/internal/app/ActionController;Lzui/app/ActionDialog$MenuAdapter;)Lzui/app/ActionDialog$MenuAdapter;

    .line 215
    iget-boolean v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mIsDialogCenter:Z

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/ActionController;->setDialogCenter(Z)V

    .line 216
    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v1, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/zui/internal/app/ActionController;->access$102(Lcom/zui/internal/app/ActionController;Lcom/zui/internal/menu/MenuBuilder;)Lcom/zui/internal/menu/MenuBuilder;

    .line 219
    invoke-static {p1}, Lcom/zui/internal/app/ActionController;->access$000(Lcom/zui/internal/app/ActionController;)Lzui/app/ActionDialog$MenuAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/internal/app/ActionController;->access$100(Lcom/zui/internal/app/ActionController;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mAttachedView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lzui/app/ActionDialog$MenuAdapter;->onCreateActionDialog(Landroid/view/Menu;Landroid/view/View;)V

    .line 220
    invoke-static {p1}, Lcom/zui/internal/app/ActionController;->access$200(Lcom/zui/internal/app/ActionController;)Lzui/widget/ZuiMenuListAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/internal/app/ActionController;->access$100(Lcom/zui/internal/app/ActionController;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/widget/ZuiMenuListAdapter;->initMenu(Lcom/zui/internal/menu/MenuBuilder;)V

    .line 221
    invoke-static {p1}, Lcom/zui/internal/app/ActionController;->access$200(Lcom/zui/internal/app/ActionController;)Lzui/widget/ZuiMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 222
    iput-object p1, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mOptionItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/zui/internal/app/ActionController;->mOptionListLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 227
    iput-object v0, p1, Lcom/zui/internal/app/ActionController;->mListView:Landroid/widget/ListView;

    .line 228
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/zui/internal/app/ActionController;->mOptionListitemLayout:I

    const v4, 0x1020014

    iget-object v5, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mOptionItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/zui/internal/app/ActionController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    .line 229
    iput-boolean v1, p1, Lcom/zui/internal/app/ActionController;->mShowTitleDivider:Z

    .line 230
    iput-object p1, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mDialog:Lcom/zui/internal/app/ActionController;

    .line 231
    iget-object v1, p0, Lcom/zui/internal/app/ActionController$ActionParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1

    .line 232
    new-instance v1, Lcom/zui/internal/app/ActionController$ActionParams$1;

    invoke-direct {v1, p0}, Lcom/zui/internal/app/ActionController$ActionParams$1;-><init>(Lcom/zui/internal/app/ActionController$ActionParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    :cond_1
    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;->apply(Lcom/zui/internal/app/DialogController;)V

    return-void
.end method
