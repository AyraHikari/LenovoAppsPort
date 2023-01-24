.class public Lzui/widget/ListViewXEditBar;
.super Ljava/lang/Object;
.source "ListViewXEditBar.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SELECT_ALL:Ljava/lang/String;

.field private final UNSELECT_ALL:Ljava/lang/String;

.field private mAllSelectd:Z

.field private mCancel:Landroid/widget/ImageView;

.field private mContainerView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/view/View;

.field private mIsHorizon:Z

.field private mListView:Lzui/widget/ListViewX;

.field private mOffset:[I

.field private mPopWin:Landroid/widget/PopupWindow;

.field private mSelectAll:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitlebarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lzui/widget/ListViewXEditBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/widget/ListViewXEditBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;I)V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lzui/widget/ListViewXEditBar;->mAllSelectd:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 51
    fill-array-data v1, :array_0

    iput-object v1, p0, Lzui/widget/ListViewXEditBar;->mOffset:[I

    .line 56
    check-cast p1, Lzui/widget/ListViewX;

    iput-object p1, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    .line 57
    invoke-virtual {p1}, Lzui/widget/ListViewX;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    .line 60
    sget p2, Lzui/platform/R$id;->listviewx_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->mCancel:Landroid/widget/ImageView;

    .line 61
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->getCustomizedLeftTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/widget/ListViewXEditBar;->setLeftTextColor(Landroid/content/res/ColorStateList;)V

    .line 62
    sget p2, Lzui/platform/R$id;->listviewx_select_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    .line 63
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->getCustomizedRightTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/widget/ListViewXEditBar;->setRightTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    sget p2, Lzui/platform/R$id;->listviewx_edit_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->mTitle:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0, v2}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    .line 66
    sget p2, Lzui/platform/R$id;->listviewx_edit_bar_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->mDivider:Landroid/view/View;

    .line 67
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->getExtraTitlePaddingStartInEditMode()I

    move-result p2

    .line 68
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {v1}, Lzui/widget/ListViewX;->getExtraTitlePaddingEndInEditMode()I

    move-result v1

    if-gtz p2, :cond_0

    if-lez v1, :cond_3

    .line 70
    :cond_0
    iget-object v2, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    :goto_0
    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    :goto_1
    iget-object v4, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 70
    invoke-virtual {v2, p2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 76
    :cond_3
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lzui/platform/R$string;->listview_x_title_select_all:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->SELECT_ALL:Ljava/lang/String;

    .line 78
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lzui/platform/R$string;->listview_x_title_unselect_all:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->UNSELECT_ALL:Ljava/lang/String;

    .line 80
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mCancel:Landroid/widget/ImageView;

    new-instance v1, Lzui/widget/ListViewXEditBar$1;

    invoke-direct {v1, p0}, Lzui/widget/ListViewXEditBar$1;-><init>(Lzui/widget/ListViewXEditBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    new-instance v1, Lzui/widget/ListViewXEditBar$2;

    invoke-direct {v1, p0}, Lzui/widget/ListViewXEditBar$2;-><init>(Lzui/widget/ListViewXEditBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->isHorizonTheme()Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/ListViewXEditBar;->mIsHorizon:Z

    .line 99
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 100
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lzui/widget/ListViewXEditBar;->mTitlebarHeight:I

    .line 103
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    .line 106
    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->screenLayout()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lzui/widget/ListViewXEditBar;)Lzui/widget/ListViewX;
    .locals 0

    .line 36
    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    return-object p0
.end method

.method static synthetic access$100(Lzui/widget/ListViewXEditBar;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->onSelectAll()V

    return-void
.end method

.method private onSelectAll()V
    .locals 2

    .line 228
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    iget-boolean v1, p0, Lzui/widget/ListViewXEditBar;->mAllSelectd:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lzui/widget/ListViewX;->selectAllListItem(Z)V

    return-void
.end method

.method private screenLayout()V
    .locals 4

    .line 215
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 216
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 218
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 219
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 220
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget v1, p0, Lzui/widget/ListViewXEditBar;->mTitlebarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 221
    iget-boolean v0, p0, Lzui/widget/ListViewXEditBar;->mIsHorizon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$dimen;->text_size_title_zui_toolbar_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private updateSelectAllText()V
    .locals 2

    .line 232
    iget-boolean v0, p0, Lzui/widget/ListViewXEditBar;->mAllSelectd:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->UNSELECT_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->SELECT_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 157
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 161
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public refresh()V
    .locals 3

    .line 123
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 126
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lzui/widget/ListViewXEditBar;->mTitlebarHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->update(II)V

    return-void
.end method

.method public setEditBarBackground(I)V
    .locals 3

    .line 195
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->primary_colorab_text_default_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->listview_x_color_edit_title_option_text_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mCancel:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 205
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$drawable;->ic_color_clear_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_2
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public setLeftButtonEnabled(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mCancel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLeftTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lzui/widget/ListViewXEditBar;->mCancel:Landroid/widget/ImageView;

    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setRightTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .line 110
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mOffset:[I

    invoke-virtual {v0, v1}, Lzui/widget/ListViewX;->getLocationInWindow([I)V

    .line 112
    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->screenLayout()V

    .line 113
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    iget-object v2, p0, Lzui/widget/ListViewXEditBar;->mOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lzui/widget/ListViewXEditBar;->mTitlebarHeight:I

    sub-int/2addr v2, v3

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 118
    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->screenLayout()V

    .line 119
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showDivider(Z)V
    .locals 1

    .line 189
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 190
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateTitle(I)V
    .locals 6

    .line 131
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {v0, p1}, Lzui/widget/ListViewX;->getEditModeCustomizedTitle(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-le p1, v2, :cond_0

    .line 134
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lzui/platform/R$string;->listview_x_title_items_selected:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 134
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 138
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lzui/platform/R$string;->listview_x_title_one_item_selected:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lzui/platform/R$string;->listview_x_title_no_item_selected:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_2
    :goto_0
    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {v0}, Lzui/widget/ListViewX;->getCount()I

    move-result v0

    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    .line 147
    invoke-virtual {v3}, Lzui/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->mListView:Lzui/widget/ListViewX;

    invoke-virtual {v3}, Lzui/widget/ListViewX;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_3

    .line 148
    iput-boolean v2, p0, Lzui/widget/ListViewXEditBar;->mAllSelectd:Z

    goto :goto_1

    .line 150
    :cond_3
    iput-boolean v1, p0, Lzui/widget/ListViewXEditBar;->mAllSelectd:Z

    .line 152
    :goto_1
    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->updateSelectAllText()V

    return-void
.end method
