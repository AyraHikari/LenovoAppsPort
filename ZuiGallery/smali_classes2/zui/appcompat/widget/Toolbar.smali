.class public Lzui/appcompat/widget/Toolbar;
.super Lzui/util/ReflectClass;
.source "Toolbar.java"


# static fields
.field private static mInstance:Lzui/appcompat/widget/Toolbar;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuView:Lzui/appcompat/widget/ActionMenuView;

.field private mNavButonView:Landroid/widget/ImageButton;

.field private mSubTitleTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lzui/appcompat/widget/Toolbar;

    invoke-direct {v0}, Lzui/appcompat/widget/Toolbar;-><init>()V

    sput-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.appcompat.widget.Toolbar"

    .line 40
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lzui/appcompat/widget/Toolbar;)Lzui/appcompat/widget/ActionMenuView;
    .locals 0

    .line 29
    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->mMenuView:Lzui/appcompat/widget/ActionMenuView;

    return-object p0
.end method

.method static synthetic access$100(Lzui/appcompat/widget/Toolbar;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->updateActionMenuView()V

    return-void
.end method

.method private getNavButton()Landroid/widget/ImageButton;
    .locals 2

    .line 92
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const-string v1, "mNavButtonView"

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    instance-of v1, v0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSubTitleTextView()Landroid/widget/TextView;
    .locals 2

    .line 139
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const-string v1, "mSubtitleTextView"

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTitleTextView()Landroid/widget/TextView;
    .locals 2

    .line 128
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const-string v1, "mTitleTextView"

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setPaddingRight()V
    .locals 4

    .line 171
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->tool_bar_padding_end_zui:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    sget-object v1, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mPaddingRight"

    invoke-virtual {v1, v3, v2}, Lzui/appcompat/widget/Toolbar;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    sget-object v1, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mUserPaddingRight"

    invoke-virtual {v1, v3, v2}, Lzui/appcompat/widget/Toolbar;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    sget-object v1, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "mUserPaddingEnd"

    invoke-virtual {v1, v2, v0}, Lzui/appcompat/widget/Toolbar;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateActionMenuView()V
    .locals 2

    .line 159
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const-string v1, "mMenuView"

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/Toolbar;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Lzui/appcompat/widget/ActionMenuView;

    invoke-direct {v1}, Lzui/appcompat/widget/ActionMenuView;-><init>()V

    iput-object v1, p0, Lzui/appcompat/widget/Toolbar;->mMenuView:Lzui/appcompat/widget/ActionMenuView;

    .line 163
    invoke-virtual {v1, v0}, Lzui/appcompat/widget/ActionMenuView;->setRealObject(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mMenuView:Lzui/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/ActionMenuView;->setParentContext(Landroid/content/Context;)V

    .line 165
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mMenuView:Lzui/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Lzui/appcompat/widget/ActionMenuView;->updateZuiStyle()V

    :cond_0
    return-void
.end method

.method private updateContentInsetStartWithNavigation()V
    .locals 3

    .line 117
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mContentInsetStartWithNavigation"

    invoke-virtual {v0, v2, v1}, Lzui/appcompat/widget/Toolbar;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_title_margin_start_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mTitleMarginStart"

    .line 119
    invoke-virtual {v0, v2, v1}, Lzui/appcompat/widget/Toolbar;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_title_margin_start_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mTitleMarginEnd"

    .line 121
    invoke-virtual {v0, v2, v1}, Lzui/appcompat/widget/Toolbar;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateNavButton()V
    .locals 3

    .line 75
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mNavButonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->getNavButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/Toolbar;->mNavButonView:Landroid/widget/ImageButton;

    .line 78
    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mNavButonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_icon_width_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_icon_height_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mNavButonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mNavButonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private updateTitleTextAppearance()V
    .locals 3

    .line 149
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 150
    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Title:I

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTitleTextAppearance"

    .line 150
    invoke-virtual {v0, v2, v1}, Lzui/appcompat/widget/Toolbar;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Subtitle:I

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mSubtitleTextAppearance"

    .line 152
    invoke-virtual {v0, v2, v1}, Lzui/appcompat/widget/Toolbar;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateTitleView()V
    .locals 2

    .line 102
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 105
    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mSubTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/Toolbar;->mSubTitleTextView:Landroid/widget/TextView;

    .line 108
    :cond_1
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 109
    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 111
    :cond_2
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->mSubTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 112
    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lzui/appcompat/widget/Toolbar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 69
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    iput-object p1, v0, Lzui/appcompat/widget/Toolbar;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateZuiStyle()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->updateNavButton()V

    .line 49
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->updateContentInsetStartWithNavigation()V

    .line 50
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->updateTitleTextAppearance()V

    .line 51
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->updateTitleView()V

    .line 52
    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->setPaddingRight()V

    .line 53
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    iget-object v0, v0, Lzui/appcompat/widget/Toolbar;->mRealObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    iget-object v0, v0, Lzui/appcompat/widget/Toolbar;->mRealObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lzui/appcompat/widget/Toolbar;->mInstance:Lzui/appcompat/widget/Toolbar;

    iget-object v0, v0, Lzui/appcompat/widget/Toolbar;->mRealObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 55
    new-instance v1, Lzui/appcompat/widget/Toolbar$1;

    invoke-direct {v1, p0}, Lzui/appcompat/widget/Toolbar$1;-><init>(Lzui/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
