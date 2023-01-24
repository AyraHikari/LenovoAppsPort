.class public Lzui/widget/BottomToolBar;
.super Lzui/widget/BottomTabBar;
.source "BottomToolBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/BottomToolBar$SelectedStateTracker;,
        Lzui/widget/BottomToolBar$MoreItemAdapter;,
        Lzui/widget/BottomToolBar$ViewHolder;
    }
.end annotation


# static fields
.field private static final INDEX:Ljava/lang/String; = "itemIndex"

.field private static final ITEM_ID:Ljava/lang/String; = "itemId"

.field private static final TAG:Ljava/lang/String; = "BottomToolBar"

.field private static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field private mBarHPadding:I

.field private mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

.field private mIsHorizontal:Z

.field private mItemMaxCount:I

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mItemTextDisabledColor:I

.field private final mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMenuLayoutId:I

.field private final mMoreItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoreItemListView:Landroid/widget/ListView;

.field private mMoreView:Landroid/view/View;

.field private mPopDialog:Lzui/app/ActionDialog;

.field private mScreenWidth:I

.field private mShowMore:Z

.field private mVisibleItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lzui/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 93
    sget v0, Lzui/platform/R$attr;->bottomToolBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    .line 77
    iput-boolean v0, p0, Lzui/widget/BottomToolBar;->mShowMore:Z

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzui/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lzui/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    .line 81
    iput-object v1, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lzui/widget/BottomToolBar;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    sget-object v1, Lzui/platform/R$styleable;->BottomToolBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 104
    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_colorBackground:I

    .line 105
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$color;->bottom_toolbar_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 104
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lzui/widget/BottomToolBar;->setBackgroundColor(I)V

    .line 106
    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_columnCount:I

    .line 107
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$integer;->bottom_bar_tool_bar_item_max_count:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 106
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzui/widget/BottomToolBar;->mItemMaxCount:I

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemMaxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzui/widget/BottomToolBar;->mItemMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BottomToolBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_textColor:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->bottom_toolbar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 113
    :cond_0
    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_layout:I

    sget v2, Lzui/platform/R$layout;->bottom_toolbar_menu_popup:I

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lzui/widget/BottomToolBar;->mMenuLayoutId:I

    .line 115
    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_layout_margin:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    .line 116
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 118
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/BottomToolBar;->mIsHorizontal:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$color;->bottom_toolbar_item_text_disabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomToolBar;->mItemTextDisabledColor:I

    .line 121
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->init()V

    return-void
.end method

.method static synthetic access$200(Lzui/widget/BottomToolBar;I)I
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lzui/widget/BottomToolBar;->getChildIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lzui/widget/BottomToolBar;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lzui/widget/BottomToolBar;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->showMoreMenu()V

    return-void
.end method

.method private addList(Landroid/view/View;)V
    .locals 2

    .line 305
    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lzui/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 308
    iget-object p1, p0, Lzui/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 309
    iget-object p1, p0, Lzui/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    new-instance v0, Lzui/widget/BottomToolBar$MoreItemAdapter;

    iget-object v1, p0, Lzui/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomToolBar$MoreItemAdapter;-><init>(Lzui/widget/BottomToolBar;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object p1, p0, Lzui/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    new-instance v0, Lzui/widget/BottomToolBar$1;

    invoke-direct {v0, p0}, Lzui/widget/BottomToolBar$1;-><init>(Lzui/widget/BottomToolBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private createMoreDialog()V
    .locals 4

    .line 338
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lzui/widget/BottomToolBar;->mMenuLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 340
    new-instance v1, Lzui/app/ActionDialog$Builder;

    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    new-instance v2, Lzui/widget/BottomToolBar$2;

    invoke-direct {v2, p0}, Lzui/widget/BottomToolBar$2;-><init>(Lzui/widget/BottomToolBar;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    .line 349
    invoke-virtual {v1, v0}, Lzui/app/ActionDialog$Builder;->setView(Landroid/view/View;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    .line 350
    invoke-direct {p0, v0}, Lzui/widget/BottomToolBar;->addList(Landroid/view/View;)V

    return-void
.end method

.method private getChildIndex(I)I
    .locals 1

    .line 420
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "itemIndex"

    .line 421
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getChildText(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 295
    instance-of v0, p1, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_0

    .line 296
    check-cast p1, Lzui/widget/BottomBarItem;

    invoke-virtual {p1}, Lzui/widget/BottomBarItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getMoreItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lzui/widget/BottomToolBar;->mVisibleItemCount:I

    const/4 v1, -0x1

    .line 407
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 408
    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 410
    iget v2, p0, Lzui/widget/BottomToolBar;->mVisibleItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lzui/widget/BottomToolBar;->mVisibleItemCount:I

    .line 411
    iget v3, p0, Lzui/widget/BottomToolBar;->mItemMaxCount:I

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private init()V
    .locals 2

    const-string v0, "BottomToolBar"

    const-string v1, "enter init()"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Lzui/widget/BottomToolBar$SelectedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomToolBar$SelectedStateTracker;-><init>(Lzui/widget/BottomToolBar;Lzui/widget/BottomToolBar$1;)V

    iput-object v0, p0, Lzui/widget/BottomToolBar;->mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    .line 255
    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->setChildOnSelectedChangeListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V

    .line 256
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->initBarHPadding()V

    return-void
.end method

.method private initBarHPadding()V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lzui/widget/BottomToolBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->bottom_bar_tab_bar_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->bottom_bar_tool_bar_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    .line 265
    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 266
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 268
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 269
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lzui/widget/BottomToolBar;->mScreenWidth:I

    return-void
.end method

.method private removeMoreView()V
    .locals 3

    .line 354
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 355
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 356
    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 358
    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->removeViewAt(I)V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private showMoreMenu()V
    .locals 1

    .line 331
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->createMoreDialog()V

    .line 334
    :cond_0
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method private updateItemsTextColor()V
    .locals 3

    const/4 v0, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 286
    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    .line 287
    check-cast v1, Lzui/widget/BottomBarItem;

    iget-object v2, p0, Lzui/widget/BottomToolBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 288
    iget v2, p0, Lzui/widget/BottomToolBar;->mItemTextDisabledColor:I

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextDisabledColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateMoreItemList()V
    .locals 5

    .line 372
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->removeMoreView()V

    .line 373
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->getMoreItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    const/4 v2, 0x1

    .line 375
    iput-boolean v2, p0, Lzui/widget/BottomToolBar;->mShowMore:Z

    .line 376
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lzui/platform/R$layout;->bottom_bar_menu_item:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    .line 378
    check-cast v1, Lzui/widget/BottomBarItem;

    iget-object v3, p0, Lzui/widget/BottomToolBar;->mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    invoke-virtual {v1, v3}, Lzui/widget/BottomBarItem;->setOnSelectedListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V

    .line 379
    iget-object v1, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    iget-object v3, p0, Lzui/widget/BottomToolBar;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v0, v3}, Lzui/widget/BottomToolBar;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 380
    iget-object v1, p0, Lzui/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/2addr v0, v2

    .line 381
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 382
    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 384
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 385
    invoke-direct {p0, v1}, Lzui/widget/BottomToolBar;->getChildText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "itemId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lzui/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lzui/widget/BottomToolBar$MoreItemAdapter;

    invoke-virtual {v0}, Lzui/widget/BottomToolBar$MoreItemAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 395
    :cond_2
    iput-boolean v1, p0, Lzui/widget/BottomToolBar;->mShowMore:Z

    .line 396
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    :cond_3
    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public closePopMenu()V
    .locals 1

    .line 147
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    :cond_0
    return-void
.end method

.method protected isMovingOutTouchArea(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 237
    :cond_1
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lzui/widget/BottomToolBar;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 240
    iget-object v1, p0, Lzui/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzui/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_3

    iget-object p1, p0, Lzui/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    sub-int/2addr p1, v1

    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    return v2
.end method

.method public isPopMenuShowing()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mPopDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Lzui/widget/BottomTabBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_bar_tab_bar_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_bar_tool_bar_horizontal_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    .line 280
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->closePopMenu()V

    .line 227
    invoke-super {p0}, Lzui/widget/BottomTabBar;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 219
    invoke-super {p0}, Lzui/widget/BottomTabBar;->onFinishInflate()V

    .line 220
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->updateMoreItemList()V

    .line 221
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->updateItemsTextColor()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getChildCount()I

    move-result v1

    .line 159
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getPaddingLeft()I

    move-result v2

    sub-int v3, p4, p2

    .line 160
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 163
    iget v5, v0, Lzui/widget/BottomToolBar;->mLeftWidth:I

    add-int/2addr v2, v5

    iget v5, v0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    add-int/2addr v2, v5

    .line 164
    iget v5, v0, Lzui/widget/BottomToolBar;->mRightWidth:I

    sub-int/2addr v4, v5

    iget v5, v0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    sub-int/2addr v4, v5

    .line 167
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lzui/widget/BottomToolBar;->mDividerHeight:I

    add-int/2addr v5, v6

    sub-int v6, p5, p3

    .line 168
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getPaddingBottom()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, v0, Lzui/widget/BottomToolBar;->mDividerHeight:I

    add-int/2addr v7, v8

    .line 170
    invoke-direct/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getMoreItemPosition()I

    .line 171
    iget-boolean v8, v0, Lzui/widget/BottomToolBar;->mShowMore:Z

    if-eqz v8, :cond_0

    iget v8, v0, Lzui/widget/BottomToolBar;->mItemMaxCount:I

    goto :goto_0

    :cond_0
    iget v8, v0, Lzui/widget/BottomToolBar;->mVisibleItemCount:I

    :goto_0
    const/4 v9, 0x0

    if-lez v8, :cond_1

    sub-int/2addr v4, v2

    .line 172
    div-int/2addr v4, v8

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    if-lez v8, :cond_2

    .line 173
    iget v10, v0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v3, v10

    div-int/2addr v3, v8

    goto :goto_2

    :cond_2
    move v3, v9

    :goto_2
    move v10, v9

    move v11, v10

    :goto_3
    if-ge v10, v1, :cond_5

    .line 179
    invoke-virtual {v0, v10}, Lzui/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 180
    iget-object v13, v0, Lzui/widget/BottomToolBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 181
    invoke-virtual {v13, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_4

    .line 183
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 186
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-lt v11, v8, :cond_3

    .line 189
    iget v4, v0, Lzui/widget/BottomToolBar;->mScreenWidth:I

    :cond_3
    move/from16 v16, v1

    .line 193
    iget-object v1, v0, Lzui/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    mul-int v17, v4, v11

    add-int v17, v2, v17

    move/from16 p3, v8

    iget v8, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v8, v17, v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 194
    iget-object v1, v0, Lzui/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    add-int/lit8 v8, v11, 0x1

    mul-int v17, v4, v8

    add-int v17, v2, v17

    move/from16 p4, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v17, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 196
    iget-object v1, v0, Lzui/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 197
    iget-object v1, v0, Lzui/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v7, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 199
    iget v1, v0, Lzui/widget/BottomToolBar;->mBarHPadding:I

    add-int v2, p2, v1

    mul-int/2addr v11, v3

    add-int/2addr v2, v11

    add-int v1, p2, v1

    mul-int v11, v3, v8

    add-int/2addr v1, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0x11

    .line 204
    iget-object v2, v0, Lzui/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v11, v0, Lzui/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {v1, v15, v9, v2, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 207
    iget-object v1, v0, Lzui/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lzui/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lzui/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lzui/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v1, v2, v9, v11}, Landroid/view/View;->layout(IIII)V

    move v11, v8

    goto :goto_4

    :cond_4
    move/from16 v16, v1

    move/from16 p4, v2

    move/from16 p3, v8

    move v14, v9

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p3

    move/from16 v2, p4

    move v9, v14

    move/from16 v1, v16

    goto/16 :goto_3

    :cond_5
    return-void
.end method

.method public removeItemById(I)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lzui/widget/BottomTabBar;->removeItemById(I)V

    .line 133
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->updateMoreItemList()V

    return-void
.end method

.method public resetBar()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->updateMoreItemList()V

    .line 138
    invoke-direct {p0}, Lzui/widget/BottomToolBar;->updateItemsTextColor()V

    .line 139
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->invalidate()V

    return-void
.end method

.method public setMoreImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lzui/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 368
    check-cast v0, Lzui/widget/BottomBarItem;

    invoke-virtual {v0, p1}, Lzui/widget/BottomBarItem;->setImageResource(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->closePopMenu()V

    .line 127
    invoke-super {p0, p1}, Lzui/widget/BottomTabBar;->setVisibility(I)V

    return-void
.end method
