.class public Lzui/widget/SimpleToolbar;
.super Landroid/view/ViewGroup;
.source "SimpleToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/SimpleToolbar$MenuPresenter;,
        Lzui/widget/SimpleToolbar$VisibleMenuItem;,
        Lzui/widget/SimpleToolbar$LayoutParams;
    }
.end annotation


# instance fields
.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mContentInsetEnd:I

.field private mContentInsetStart:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultNavigationIconRtl:Landroid/graphics/drawable/Drawable;

.field private mExtendsMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGravity:I

.field private mMaxButtonHeight:I

.field private mMaxWidth:I

.field private mMenu:Lcom/zui/internal/menu/MenuBuilder;

.field private mMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mMenuPresenter:Lzui/widget/SimpleToolbar$MenuPresenter;

.field private mMenuTextAppearance:I

.field private mMenuView:Landroid/widget/LinearLayout;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mToolbarHeight:I

.field private mUseDefaultNavIcon:Z

.field private mVisibleMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzui/widget/SimpleToolbar$VisibleMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lzui/widget/SimpleToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    sget v0, Lzui/platform/R$attr;->simpleToolbar:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/SimpleToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 80
    sget v0, Lzui/platform/R$style;->Widget_Zui_SimpleToolbar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/SimpleToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x800013

    .line 31
    iput v0, p0, Lzui/widget/SimpleToolbar;->mGravity:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lzui/widget/SimpleToolbar;->mToolbarHeight:I

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lzui/widget/SimpleToolbar;->mMaxWidth:I

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lzui/widget/SimpleToolbar;->mUseDefaultNavIcon:Z

    .line 85
    sget-object v2, Lzui/platform/R$styleable;->SimpleToolbar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_height:I

    iget p4, p0, Lzui/widget/SimpleToolbar;->mToolbarHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mToolbarHeight:I

    .line 88
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_gravity:I

    iget p4, p0, Lzui/widget/SimpleToolbar;->mGravity:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mGravity:I

    .line 89
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_buttonGravity:I

    const/16 p4, 0x30

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mButtonGravity:I

    .line 90
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_navigationButtonStyle:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mNavButtonStyle:I

    .line 91
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_homeAsUpIndicator:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/SimpleToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_homeAsUpIndicatorRtl:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/SimpleToolbar;->mDefaultNavigationIconRtl:Landroid/graphics/drawable/Drawable;

    .line 93
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_maxButtonHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mMaxButtonHeight:I

    .line 94
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleTextAppearance:I

    .line 95
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_subtitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mSubtitleTextAppearance:I

    .line 96
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMargin:I

    .line 97
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginBottom:I

    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginTop:I

    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginStart:I

    .line 98
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginStart:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_0

    .line 100
    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginStart:I

    .line 102
    :cond_0
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginEnd:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 104
    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    .line 106
    :cond_1
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_2

    .line 108
    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginTop:I

    .line 110
    :cond_2
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginBottom:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_3

    .line 112
    iput p3, p0, Lzui/widget/SimpleToolbar;->mTitleMarginBottom:I

    .line 114
    :cond_3
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_title:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 115
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 116
    invoke-virtual {p0, p3}, Lzui/widget/SimpleToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    :cond_4
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_subtitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 119
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 120
    invoke-virtual {p0, p3}, Lzui/widget/SimpleToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 123
    :cond_5
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_collapseIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/SimpleToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 124
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_actionMenuTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mMenuTextAppearance:I

    .line 125
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_contentInsetStart:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mContentInsetStart:I

    .line 126
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_contentInsetEnd:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->mContentInsetEnd:I

    .line 127
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    new-instance p2, Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p2, p1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mVisibleMenus:Ljava/util/List;

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lzui/widget/SimpleToolbar;)Lzui/widget/SimpleToolbar$MenuPresenter;
    .locals 0

    .line 29
    iget-object p0, p0, Lzui/widget/SimpleToolbar;->mMenuPresenter:Lzui/widget/SimpleToolbar$MenuPresenter;

    return-object p0
.end method

.method static synthetic access$002(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$MenuPresenter;)Lzui/widget/SimpleToolbar$MenuPresenter;
    .locals 0

    .line 29
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mMenuPresenter:Lzui/widget/SimpleToolbar$MenuPresenter;

    return-object p1
.end method

.method static synthetic access$200(Lzui/widget/SimpleToolbar;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lzui/widget/SimpleToolbar;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lzui/widget/SimpleToolbar;->addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$400(Lzui/widget/SimpleToolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lzui/widget/SimpleToolbar;->mMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 4

    .line 925
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 926
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 925
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 928
    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 929
    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 930
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 931
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 932
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 2

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 642
    :cond_1
    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    .line 644
    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    .line 645
    invoke-virtual {p0, p1, v0}, Lzui/widget/SimpleToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addToVisibleMenuView(Landroid/view/MenuItem;ILandroid/view/View;)V
    .locals 3

    .line 817
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$VisibleMenuItem;

    .line 818
    iget-object v1, v1, Lzui/widget/SimpleToolbar$VisibleMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 822
    invoke-virtual {p3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 823
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 826
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 827
    iget v1, p0, Lzui/widget/SimpleToolbar;->mContentInsetStart:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 828
    iget v1, p0, Lzui/widget/SimpleToolbar;->mContentInsetEnd:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 829
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    new-instance v0, Lzui/widget/SimpleToolbar$VisibleMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lzui/widget/SimpleToolbar$VisibleMenuItem;-><init>(Lzui/widget/SimpleToolbar;Landroid/view/MenuItem;ILandroid/view/View;)V

    .line 831
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mVisibleMenus:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustMenuMargins()V
    .locals 6

    .line 870
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 871
    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 872
    :goto_1
    iget-object v3, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 873
    iget-object v3, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 875
    iget v4, p0, Lzui/widget/SimpleToolbar;->mContentInsetEnd:I

    iget v5, p0, Lzui/widget/SimpleToolbar;->mContentInsetStart:I

    invoke-direct {p0, v3, v4, v5}, Lzui/widget/SimpleToolbar;->setViewMargin(Landroid/view/View;II)V

    goto :goto_2

    .line 877
    :cond_1
    iget v4, p0, Lzui/widget/SimpleToolbar;->mContentInsetStart:I

    iget v5, p0, Lzui/widget/SimpleToolbar;->mContentInsetEnd:I

    invoke-direct {p0, v3, v4, v5}, Lzui/widget/SimpleToolbar;->setViewMargin(Landroid/view/View;II)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 881
    :cond_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 883
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget v1, p0, Lzui/widget/SimpleToolbar;->mContentInsetStart:I

    invoke-direct {p0, v0, v2, v1}, Lzui/widget/SimpleToolbar;->setViewMargin(Landroid/view/View;II)V

    .line 884
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    .line 886
    :cond_3
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget v1, p0, Lzui/widget/SimpleToolbar;->mContentInsetStart:I

    invoke-direct {p0, v0, v1, v2}, Lzui/widget/SimpleToolbar;->setViewMargin(Landroid/view/View;II)V

    .line 887
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    .line 778
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lzui/widget/SimpleToolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 780
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 782
    iget v2, p0, Lzui/widget/SimpleToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    .line 783
    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    .line 784
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lzui/widget/SimpleToolbar$1;

    invoke-direct {v1, p0}, Lzui/widget/SimpleToolbar$1;-><init>(Lzui/widget/SimpleToolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 768
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    .line 770
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 771
    iget v2, p0, Lzui/widget/SimpleToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->gravity:I

    .line 772
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    .line 759
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lzui/widget/SimpleToolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 761
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 762
    iget v2, p0, Lzui/widget/SimpleToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->gravity:I

    .line 763
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private generateMenuView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 2

    .line 799
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 801
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 802
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 804
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 806
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v1, 0x4

    .line 807
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 808
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 809
    iget v1, p0, Lzui/widget/SimpleToolbar;->mMenuTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 810
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 6

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 719
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 720
    :goto_0
    iget v2, v0, Lzui/widget/SimpleToolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lzui/widget/SimpleToolbar;->getChildVerticalGravity(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    .line 729
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingTop()I

    move-result p2

    .line 730
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingBottom()I

    move-result v2

    .line 731
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    .line 733
    div-int/lit8 v4, v4, 0x2

    .line 734
    iget v5, v0, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    if-ge v4, v5, :cond_1

    .line 735
    iget v4, v0, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 738
    iget p1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_2

    .line 739
    iget p1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    :goto_1
    add-int/2addr p2, v4

    return p2

    .line 725
    :cond_3
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 722
    :cond_4
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method private getChildVerticalGravity(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 754
    iget p1, p0, Lzui/widget/SimpleToolbar;->mGravity:I

    and-int/lit8 p1, p1, 0x70

    :cond_0
    return p1
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 1

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 658
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getShowAsActionFlag(Ljava/lang/Object;)I
    .locals 2

    :try_start_0
    const-string v0, "com.zui.internal.menu.MenuItemImpl"

    .line 910
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowAsAction"

    .line 911
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 913
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 919
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 917
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 915
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x2

    :goto_1
    return p1
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 1

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 663
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 0

    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layoutChildLeft(Landroid/view/View;II)I
    .locals 4

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 696
    iget v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    .line 697
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr p2, v1

    .line 698
    invoke-direct {p0, p1, p3}, Lzui/widget/SimpleToolbar;->getChildTop(Landroid/view/View;I)I

    move-result p3

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v2, p2, v1

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 701
    iget p1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    add-int/2addr p2, v1

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;II)I
    .locals 4

    .line 706
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 707
    iget v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x0

    .line 708
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p2, v1

    .line 709
    invoke-direct {p0, p1, p3}, Lzui/widget/SimpleToolbar;->getChildTop(Landroid/view/View;I)I

    move-result p3

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v2, p2, v1

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v2, p3, p2, v3}, Landroid/view/View;->layout(IIII)V

    .line 712
    iget p1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    sub-int/2addr p2, v1

    return p2
.end method

.method private measureChild(Landroid/view/View;IIII)I
    .locals 3

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 669
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 670
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p3, v2}, Lzui/widget/SimpleToolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 672
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v2

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Lzui/widget/SimpleToolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 674
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 3

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 681
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingLeft()I

    move-result v1

    .line 682
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 681
    invoke-static {p2, v1, p3}, Lzui/widget/SimpleToolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 683
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingTop()I

    move-result p3

    .line 684
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 683
    invoke-static {p4, p3, p5}, Lzui/widget/SimpleToolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 685
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    .line 688
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 689
    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 691
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private relayoutVisibleMenu(III)V
    .locals 11

    .line 836
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lzui/widget/SimpleToolbar;->mMaxWidth:I

    if-lez v0, :cond_4

    if-ge p3, v0, :cond_4

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 840
    invoke-direct {p0, v2}, Lzui/widget/SimpleToolbar;->getShowAsActionFlag(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 842
    invoke-direct {p0, v2}, Lzui/widget/SimpleToolbar;->generateMenuView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 844
    iget-object v5, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move v9, p2

    .line 845
    invoke-direct/range {v5 .. v10}, Lzui/widget/SimpleToolbar;->measureChild(Landroid/view/View;IIII)I

    .line 846
    iget-object v5, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 847
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p3

    .line 848
    iget v6, p0, Lzui/widget/SimpleToolbar;->mMaxWidth:I

    if-ge v5, v6, :cond_0

    .line 849
    invoke-direct {p0, v2, v3, v4}, Lzui/widget/SimpleToolbar;->addToVisibleMenuView(Landroid/view/MenuItem;ILandroid/view/View;)V

    .line 850
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v5

    goto :goto_0

    .line 856
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    .line 857
    iget-object p3, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 858
    iget-object p3, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 861
    :cond_3
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 862
    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 863
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private setViewMargin(Landroid/view/View;II)V
    .locals 2

    .line 893
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 894
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 895
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 896
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 897
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 898
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 899
    :cond_0
    instance-of v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz v1, :cond_1

    .line 900
    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 901
    iput p2, v0, Lzui/widget/SimpleToolbar$LayoutParams;->leftMargin:I

    .line 902
    iput p3, v0, Lzui/widget/SimpleToolbar$LayoutParams;->rightMargin:I

    .line 903
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 441
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;
    .locals 2

    .line 436
    new-instance v0, Lzui/widget/SimpleToolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 409
    new-instance v0, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lzui/widget/SimpleToolbar$LayoutParams;
    .locals 1

    .line 425
    instance-of v0, p1, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lzui/widget/SimpleToolbar$LayoutParams;

    check-cast p1, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-direct {v0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Lzui/widget/SimpleToolbar$LayoutParams;)V

    return-object v0

    .line 427
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Lzui/widget/SimpleToolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 430
    :cond_1
    new-instance v0, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-direct {v0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 560
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 577
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 1

    .line 556
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 483
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 449
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 414
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mVisibleMenus:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$VisibleMenuItem;

    .line 416
    iget-object v2, v1, Lzui/widget/SimpleToolbar$VisibleMenuItem;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lzui/widget/SimpleToolbar;->mMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    if-eqz v2, :cond_0

    .line 417
    iget-object v1, v1, Lzui/widget/SimpleToolbar$VisibleMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 221
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getWidth()I

    move-result v4

    .line 222
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getHeight()I

    move-result v5

    .line 223
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingLeft()I

    move-result v6

    .line 224
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingRight()I

    move-result v7

    .line 225
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingTop()I

    move-result v8

    .line 226
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v4, v7

    .line 230
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getMinimumHeight()I

    move-result v7

    iget v10, v0, Lzui/widget/SimpleToolbar;->mToolbarHeight:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ltz v7, :cond_1

    sub-int v10, p5, p3

    .line 231
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v3

    .line 233
    :goto_1
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v1, :cond_3

    .line 235
    iget-boolean v10, v0, Lzui/widget/SimpleToolbar;->mUseDefaultNavIcon:Z

    if-eqz v10, :cond_2

    .line 236
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mDefaultNavigationIconRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_2
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v10, v4, v7}, Lzui/widget/SimpleToolbar;->layoutChildRight(Landroid/view/View;II)I

    move-result v4

    goto :goto_2

    .line 240
    :cond_3
    iget-boolean v10, v0, Lzui/widget/SimpleToolbar;->mUseDefaultNavIcon:Z

    if-eqz v10, :cond_4

    .line 241
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_4
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v10, v6, v7}, Lzui/widget/SimpleToolbar;->layoutChildLeft(Landroid/view/View;II)I

    move-result v6

    .line 247
    :cond_5
    :goto_2
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v1, :cond_6

    .line 249
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v10, v6, v7}, Lzui/widget/SimpleToolbar;->layoutChildLeft(Landroid/view/View;II)I

    move-result v6

    goto :goto_3

    .line 251
    :cond_6
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v10, v4, v7}, Lzui/widget/SimpleToolbar;->layoutChildRight(Landroid/view/View;II)I

    move-result v4

    .line 255
    :cond_7
    :goto_3
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v1, :cond_8

    .line 257
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v10, v6, v7}, Lzui/widget/SimpleToolbar;->layoutChildLeft(Landroid/view/View;II)I

    move-result v6

    goto :goto_4

    .line 259
    :cond_8
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v10, v4, v7}, Lzui/widget/SimpleToolbar;->layoutChildRight(Landroid/view/View;II)I

    move-result v4

    .line 263
    :cond_9
    :goto_4
    iget-object v7, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    .line 264
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v7, :cond_a

    .line 268
    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 269
    iget v12, v11, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    iget-object v13, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    iget v11, v11, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v11

    add-int/2addr v12, v3

    goto :goto_5

    :cond_a
    move v12, v3

    :goto_5
    if-eqz v10, :cond_b

    .line 272
    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 273
    iget v13, v11, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    iget-object v14, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    iget v11, v11, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    .line 274
    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    .line 275
    iget-object v13, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_b

    .line 276
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lzui/platform/R$dimen;->simple_toolbar_horizontal_subtitle_height:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_b
    if-nez v7, :cond_c

    if-eqz v10, :cond_1d

    :cond_c
    if-eqz v7, :cond_d

    .line 283
    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    goto :goto_6

    :cond_d
    iget-object v11, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    :goto_6
    if-eqz v10, :cond_e

    .line 284
    iget-object v13, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    goto :goto_7

    :cond_e
    iget-object v13, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    .line 285
    :goto_7
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 286
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz v7, :cond_f

    .line 287
    iget-object v14, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    if-gtz v14, :cond_11

    :cond_f
    if-eqz v10, :cond_10

    iget-object v14, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    .line 288
    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    if-lez v14, :cond_10

    goto :goto_8

    :cond_10
    move v2, v3

    .line 293
    :cond_11
    :goto_8
    iget v14, v0, Lzui/widget/SimpleToolbar;->mGravity:I

    and-int/lit8 v14, v14, 0x70

    const/16 v15, 0x30

    if-eq v14, v15, :cond_15

    const/16 v15, 0x50

    if-eq v14, v15, :cond_14

    sub-int v14, v5, v8

    sub-int/2addr v14, v9

    sub-int/2addr v14, v12

    .line 304
    div-int/lit8 v14, v14, 0x2

    .line 305
    iget v15, v11, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    iget v3, v0, Lzui/widget/SimpleToolbar;->mTitleMarginTop:I

    add-int/2addr v15, v3

    if-ge v14, v15, :cond_12

    .line 306
    iget v3, v11, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    iget v5, v0, Lzui/widget/SimpleToolbar;->mTitleMarginTop:I

    add-int v14, v3, v5

    goto :goto_9

    :cond_12
    sub-int/2addr v5, v9

    sub-int/2addr v5, v12

    sub-int/2addr v5, v14

    sub-int/2addr v5, v8

    .line 310
    iget v3, v11, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    iget v9, v0, Lzui/widget/SimpleToolbar;->mTitleMarginBottom:I

    add-int/2addr v3, v9

    if-ge v5, v3, :cond_13

    .line 311
    iget v3, v13, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    iget v9, v0, Lzui/widget/SimpleToolbar;->mTitleMarginBottom:I

    add-int/2addr v3, v9

    sub-int/2addr v3, v5

    sub-int/2addr v14, v3

    const/4 v3, 0x0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_13
    :goto_9
    add-int/2addr v8, v14

    goto :goto_a

    :cond_14
    sub-int/2addr v5, v9

    .line 332
    iget v3, v13, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v3

    iget v3, v0, Lzui/widget/SimpleToolbar;->mTitleMarginBottom:I

    sub-int/2addr v5, v3

    sub-int v8, v5, v12

    goto :goto_a

    .line 295
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingTop()I

    move-result v3

    iget v5, v11, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Lzui/widget/SimpleToolbar;->mTitleMarginTop:I

    add-int v8, v3, v5

    :goto_a
    if-eqz v1, :cond_19

    if-eqz v2, :cond_16

    .line 338
    iget v1, v0, Lzui/widget/SimpleToolbar;->mTitleMarginStart:I

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v4, v1

    if-eqz v7, :cond_17

    .line 342
    iget-object v1, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 343
    iget-object v3, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v4, v3

    .line 344
    iget-object v5, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 345
    iget-object v6, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 346
    iget v6, v0, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    sub-int/2addr v3, v6

    .line 347
    iget v1, v1, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_c

    :cond_17
    move v3, v4

    :goto_c
    if-eqz v10, :cond_18

    .line 358
    iget-object v1, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 359
    iget v5, v1, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v5

    .line 360
    iget-object v5, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    .line 361
    iget-object v6, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    .line 362
    iget-object v7, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v8, v4, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 363
    iget v5, v0, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    sub-int/2addr v4, v5

    .line 364
    iget v1, v1, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    :cond_18
    if-eqz v2, :cond_1d

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    goto :goto_f

    :cond_19
    if-eqz v2, :cond_1a

    .line 371
    iget v3, v0, Lzui/widget/SimpleToolbar;->mTitleMarginStart:I

    const/4 v1, 0x0

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v6, v1

    if-eqz v7, :cond_1b

    .line 375
    iget-object v1, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 376
    iget-object v3, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v6

    .line 377
    iget-object v4, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 378
    iget-object v5, v0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 379
    iget v5, v0, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    add-int/2addr v3, v5

    .line 380
    iget v1, v1, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    add-int v8, v4, v1

    goto :goto_e

    :cond_1b
    move v3, v6

    :goto_e
    if-eqz v10, :cond_1c

    .line 391
    iget-object v1, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 392
    iget v4, v1, Lzui/widget/SimpleToolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v4

    .line 393
    iget-object v4, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v6

    .line 394
    iget-object v5, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 395
    iget-object v7, v0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 396
    iget v5, v0, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    add-int v6, v4, v5

    .line 397
    iget v1, v1, Lzui/widget/SimpleToolbar$LayoutParams;->bottomMargin:I

    :cond_1c
    if-eqz v2, :cond_1d

    .line 401
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    :cond_1d
    :goto_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 141
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lzui/widget/SimpleToolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lzui/widget/SimpleToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 144
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lzui/widget/SimpleToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    iget-object v2, v7, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    invoke-static {v10, v2}, Lzui/widget/SimpleToolbar;->combineMeasuredStates(II)I

    move-result v2

    move v11, v1

    move v12, v2

    goto :goto_0

    :cond_0
    move v0, v10

    move v11, v0

    move v12, v11

    .line 148
    :goto_0
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lzui/widget/SimpleToolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lzui/widget/SimpleToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 151
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 153
    invoke-direct {v7, v2}, Lzui/widget/SimpleToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 154
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Lzui/widget/SimpleToolbar;->combineMeasuredStates(II)I

    move-result v12

    :cond_1
    add-int v13, v10, v0

    .line 159
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 161
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iget v6, v7, Lzui/widget/SimpleToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lzui/widget/SimpleToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 163
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v7, v2}, Lzui/widget/SimpleToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 165
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Lzui/widget/SimpleToolbar;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    add-int/2addr v13, v0

    .line 169
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getChildCount()I

    move-result v6

    move v14, v10

    :goto_2
    if-ge v14, v6, :cond_5

    .line 171
    invoke-virtual {v7, v14}, Lzui/widget/SimpleToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 172
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    .line 173
    iget v0, v0, Lzui/widget/SimpleToolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_4

    invoke-direct {v7, v15}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    .line 176
    invoke-direct/range {v0 .. v5}, Lzui/widget/SimpleToolbar;->measureChild(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v13, v0

    .line 177
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v7, v15}, Lzui/widget/SimpleToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Lzui/widget/SimpleToolbar;->combineMeasuredStates(II)I

    move-result v1

    move v11, v0

    move v12, v1

    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 183
    :cond_5
    iget v0, v7, Lzui/widget/SimpleToolbar;->mTitleMarginTop:I

    iget v1, v7, Lzui/widget/SimpleToolbar;->mTitleMarginBottom:I

    add-int v6, v0, v1

    .line 184
    iget v0, v7, Lzui/widget/SimpleToolbar;->mTitleMarginStart:I

    iget v1, v7, Lzui/widget/SimpleToolbar;->mTitleMarginEnd:I

    add-int v14, v0, v1

    .line 185
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    add-int v3, v13, v14

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lzui/widget/SimpleToolbar;->measureChild(Landroid/view/View;IIII)I

    .line 188
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    .line 189
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Lzui/widget/SimpleToolbar;->combineMeasuredStates(II)I

    move-result v12

    move v15, v12

    move v12, v0

    goto :goto_4

    :cond_6
    move v15, v12

    move v12, v10

    .line 192
    :goto_4
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    add-int v3, v13, v14

    add-int v5, v12, v6

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lzui/widget/SimpleToolbar;->measureChild(Landroid/view/View;IIII)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 196
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 197
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Lzui/widget/SimpleToolbar;->combineMeasuredStates(II)I

    move-result v15

    :cond_7
    add-int/2addr v13, v10

    .line 200
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    iget v1, v7, Lzui/widget/SimpleToolbar;->mToolbarHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 204
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 207
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 208
    invoke-direct {v7, v8, v9, v13}, Lzui/widget/SimpleToolbar;->relayoutVisibleMenu(III)V

    .line 209
    invoke-direct/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->adjustMenuMargins()V

    .line 211
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v15

    invoke-static {v1, v8, v2}, Lzui/widget/SimpleToolbar;->resolveSizeAndState(III)I

    move-result v1

    .line 213
    invoke-virtual/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v15, 0x10

    invoke-static {v0, v9, v2}, Lzui/widget/SimpleToolbar;->resolveSizeAndState(III)I

    move-result v0

    .line 215
    invoke-virtual {v7, v1, v0}, Lzui/widget/SimpleToolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    .line 564
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 569
    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->ensureCollapseButtonView()V

    .line 570
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 572
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 445
    iput p1, p0, Lzui/widget/SimpleToolbar;->mMaxWidth:I

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 517
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 522
    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->ensureNavButtonView()V

    .line 523
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->addSystemView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lzui/widget/SimpleToolbar;->mUseDefaultNavIcon:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lzui/widget/SimpleToolbar;->mUseDefaultNavIcon:Z

    .line 529
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->removeView(Landroid/view/View;)V

    .line 533
    :cond_2
    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_3
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mNavigationIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 551
    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->ensureNavButtonView()V

    .line 552
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 494
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    .line 495
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 496
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 497
    iget v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleTextAppearance:I

    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 500
    :cond_0
    iget v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_1

    .line 501
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    :cond_1
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 505
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->addSystemView(Landroid/view/View;)V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->removeView(Landroid/view/View;)V

    .line 510
    :cond_3
    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 511
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :cond_4
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 453
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 460
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    .line 461
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 462
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 463
    iget v0, p0, Lzui/widget/SimpleToolbar;->mTitleTextAppearance:I

    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 466
    :cond_0
    iget v0, p0, Lzui/widget/SimpleToolbar;->mTitleTextColor:I

    if-eqz v0, :cond_1

    .line 467
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    :cond_1
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 471
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->addSystemView(Landroid/view/View;)V

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->removeView(Landroid/view/View;)V

    .line 476
    :cond_3
    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 477
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_4
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setupMenu()V
    .locals 4

    .line 590
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 591
    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->ensureMenuView()V

    .line 592
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 593
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mVisibleMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 594
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 595
    :goto_0
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 596
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 597
    invoke-direct {p0, v1}, Lzui/widget/SimpleToolbar;->getShowAsActionFlag(Ljava/lang/Object;)I

    move-result v2

    .line 598
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 600
    invoke-direct {p0, v1}, Lzui/widget/SimpleToolbar;->generateMenuView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 602
    invoke-direct {p0, v1, v2, v3}, Lzui/widget/SimpleToolbar;->addToVisibleMenuView(Landroid/view/MenuItem;ILandroid/view/View;)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 606
    :cond_1
    iget-object v2, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_3
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 611
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 612
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->addSystemView(Landroid/view/View;)V

    goto :goto_2

    .line 614
    :cond_4
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->removeView(Landroid/view/View;)V

    .line 617
    :cond_5
    :goto_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mExtendsMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 618
    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->ensureCollapseButtonView()V

    .line 619
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 620
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->addSystemView(Landroid/view/View;)V

    goto :goto_3

    .line 622
    :cond_6
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public updateMenu(Landroid/view/Menu;)V
    .locals 3

    .line 581
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->clear()V

    if-eqz p1, :cond_0

    .line 582
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 583
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 584
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/widget/SimpleToolbar;->addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public useDefaultNavigationIcon(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lzui/widget/SimpleToolbar;->mUseDefaultNavIcon:Z

    if-eqz p1, :cond_1

    .line 542
    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->ensureNavButtonView()V

    .line 543
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 544
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar;->addSystemView(Landroid/view/View;)V

    .line 546
    :cond_0
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
