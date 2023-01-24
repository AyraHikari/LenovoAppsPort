.class public Lcom/zui/internal/app/DialogController$DialogParams;
.super Ljava/lang/Object;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/DialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogParams"
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mCustomizedLF:Z

.field public mHideBtnPanelDivider:Z

.field public mIconAttrId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mIsVerticalBtn:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mParentContext:Landroid/content/Context;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleIcon:Landroid/graphics/drawable/Drawable;

.field public mTitleIconId:I

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 858
    iput v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 v0, 0x0

    .line 865
    iput v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    .line 867
    iput v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIconAttrId:I

    .line 875
    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 876
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lcom/zui/internal/app/DialogController;)V
    .locals 11

    .line 938
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/zui/internal/app/DialogController;->mListLayout:I

    const/4 v2, 0x0

    .line 939
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 946
    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 948
    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$1;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget v6, p1, Lcom/zui/internal/app/DialogController;->mMultiChoiceItemLayout:I

    const v7, 0x1020014

    iget-object v8, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    move-object v3, v1

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/zui/internal/app/DialogController$DialogParams$1;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    goto :goto_1

    .line 963
    :cond_0
    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$2;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/zui/internal/app/DialogController$DialogParams$2;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V

    goto :goto_1

    .line 992
    :cond_1
    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    .line 993
    iget v1, p1, Lcom/zui/internal/app/DialogController;->mSingleChoiceItemLayout:I

    goto :goto_0

    .line 995
    :cond_2
    iget v1, p1, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    .line 996
    iput-boolean v10, p1, Lcom/zui/internal/app/DialogController;->mIsCommonList:Z

    :goto_0
    move v5, v1

    .line 999
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v1, :cond_3

    .line 1000
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v10, [Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v8, v10, [I

    aput v3, v8, v9

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_1

    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1006
    :cond_4
    new-instance v1, Lcom/zui/internal/app/DialogController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/zui/internal/app/DialogController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 1013
    :goto_1
    iput-object v1, p1, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1014
    iget v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/zui/internal/app/DialogController;->access$1102(Lcom/zui/internal/app/DialogController;I)I

    .line 1016
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_5

    .line 1017
    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$3;

    invoke-direct {v1, p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams$3;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Lcom/zui/internal/app/DialogController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1026
    :cond_5
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_6

    .line 1027
    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/internal/app/DialogController$DialogParams$4;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1040
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_7

    .line 1041
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1044
    :cond_7
    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_8

    .line 1045
    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_3

    .line 1046
    :cond_8
    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    .line 1047
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1049
    :cond_9
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    iput-object v0, p1, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/internal/app/DialogController;)V
    .locals 4

    .line 880
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 887
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    .line 889
    :cond_2
    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    if-eqz v0, :cond_3

    .line 890
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitleIcon(I)V

    .line 892
    :cond_3
    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 893
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitleIcon(I)V

    .line 896
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    .line 897
    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 900
    :cond_5
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 901
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p1, Lcom/zui/internal/app/DialogController;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    .line 902
    iget-object v2, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 905
    :cond_6
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v2, -0x3

    .line 906
    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 909
    :cond_7
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsVerticalBtn:Z

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setVerticalAlignedButtons(Z)V

    .line 910
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mHideBtnPanelDivider:Z

    invoke-static {p1, v0}, Lcom/zui/internal/app/DialogController;->access$1002(Lcom/zui/internal/app/DialogController;Z)Z

    .line 912
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 913
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 922
    :cond_8
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 923
    :cond_9
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;->createListView(Lcom/zui/internal/app/DialogController;)V

    .line 924
    iget-object v0, p1, Lcom/zui/internal/app/DialogController;->mListViewSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 925
    iget-object v0, p1, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    iget-object v1, p1, Lcom/zui/internal/app/DialogController;->mListViewSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 929
    :cond_a
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 930
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 931
    :cond_b
    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mViewLayoutResId:I

    if-eqz v0, :cond_c

    .line 932
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setView(I)V

    .line 934
    :cond_c
    :goto_1
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomizedLF:Z

    iput-boolean v0, p1, Lcom/zui/internal/app/DialogController;->mCustomizedLF:Z

    return-void
.end method
