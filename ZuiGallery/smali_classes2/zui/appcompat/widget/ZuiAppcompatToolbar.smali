.class public Lzui/appcompat/widget/ZuiAppcompatToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "ZuiAppcompatToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;,
        Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;
    }
.end annotation


# static fields
.field private static OVERFLOW_BUTTON_DESCRIPTION:Ljava/lang/String;

.field private static POPUP_MENU_HORIZONTAL_OFFSET:I

.field private static final TAG:Ljava/lang/String;

.field private static TITLE_SUBTITLE_PADDING:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsHorizon:Z

.field private mIsNavigationBtnModified:Z

.field private mIsOverflowBtnOverrided:Z

.field private mMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mMenuPresenter:Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;

.field private mNavBtnDescription:Ljava/lang/CharSequence;

.field private mOverFlowBtnListener:Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;

.field private mOverflowMenuBtn:Landroidx/appcompat/widget/AppCompatImageView;

.field private mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10104aa

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    .line 68
    sget-object v0, Lzui/platform/R$styleable;->Theme_Zui:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget p3, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsHorizon:Z

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    iget-boolean p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsHorizon:Z

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->actionbar_popupmenu_overflow_dropdown_horizontal_offset_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->POPUP_MENU_HORIZONTAL_OFFSET:I

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->actionbar_popupmenu_overflow_dropdown_horizontal_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->POPUP_MENU_HORIZONTAL_OFFSET:I

    .line 79
    :goto_0
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->customizeToZuiStyle()V

    .line 80
    new-instance p2, Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$1;)V

    iput-object p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mOverFlowBtnListener:Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;

    .line 81
    new-instance p2, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;

    invoke-direct {p2, p0, p3}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$1;)V

    iput-object p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mMenuPresenter:Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$string;->action_menu_overflow_description:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->OVERFLOW_BUTTON_DESCRIPTION:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->action_bar_title_subtitle_horizontal_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->TITLE_SUBTITLE_PADDING:I

    const-string p2, "window"

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$200(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->relayoutTitleView()V

    return-void
.end method

.method static synthetic access$400(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;
    .locals 0

    .line 35
    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mMenuPresenter:Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mOverflowMenuBtn:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 35
    sget v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->POPUP_MENU_HORIZONTAL_OFFSET:I

    return v0
.end method

.method static synthetic access$800(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private adjustLayoutForNavigationButton(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mNavBtnDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsNavigationBtnModified:Z

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->setPadding(IIII)V

    .line 237
    invoke-virtual {p0, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->setContentInsetStartWithNavigation(I)V

    .line 238
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mNavBtnDescription:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private calculateTextViewSize(Landroidx/appcompat/widget/AppCompatTextView;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingRight()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private customizeNatigationButton()V
    .locals 4

    .line 225
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findNavigationButton()Landroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private customizeToZuiStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->setTitleMarginStart(I)V

    .line 150
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Title:I

    invoke-virtual {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 151
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Subtitle:I

    invoke-virtual {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method private findNavigationButton()Landroidx/appcompat/widget/AppCompatImageButton;
    .locals 2

    .line 159
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mNavBtnDescription:Ljava/lang/CharSequence;

    const-class v1, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findViewByDescription(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    return-object v0
.end method

.method private findOverflowMenuButton()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 155
    sget-object v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->OVERFLOW_BUTTON_DESCRIPTION:Ljava/lang/String;

    const-class v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findViewByDescription(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private findSubTitleView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2

    .line 167
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findViewByText(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method private findTitleView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findViewByText(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method private findViewByDescription(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 176
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 177
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 178
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 181
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 182
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 183
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v4

    goto :goto_0

    .line 187
    :cond_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 188
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private findViewByText(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 203
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 204
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 207
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 208
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 209
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_2

    .line 210
    move-object v5, v4

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_0

    .line 215
    :cond_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 216
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method private overrideOverflowFlowMenu(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mOverFlowBtnListener:Lzui/appcompat/widget/ZuiAppcompatToolbar$OverFlowButtonClickListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mMenuPresenter:Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;

    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-static {p1, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->access$300(Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;Landroid/view/Menu;)V

    return-void
.end method

.method private relayoutTitleView()V
    .locals 8

    .line 262
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 265
    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 267
    :cond_1
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 268
    :goto_0
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingTop()I

    move-result v0

    .line 269
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingBottom()I

    move-result v2

    .line 270
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 271
    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 272
    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextView;->getRight()I

    move-result v6

    iget-object v7, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatTextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    .line 272
    invoke-virtual {v4, v5, v2, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->layout(IIII)V

    .line 274
    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getMeasuredHeight()I

    move-result v2

    .line 275
    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v5, v2

    .line 276
    iget-object v6, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextView;->getTextSize()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 277
    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lzui/platform/R$dimen;->action_bar_horizontal_subtitle_height_zui:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 279
    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v4}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->calculateTextViewSize(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v4

    :cond_3
    sub-int/2addr v3, v2

    .line 281
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    if-eqz v1, :cond_4

    .line 286
    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getLeft()I

    move-result v1

    sget v3, Lzui/appcompat/widget/ZuiAppcompatToolbar;->TITLE_SUBTITLE_PADDING:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v4

    goto :goto_1

    .line 289
    :cond_4
    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getRight()I

    move-result v1

    sget v3, Lzui/appcompat/widget/ZuiAppcompatToolbar;->TITLE_SUBTITLE_PADDING:I

    add-int/2addr v3, v1

    add-int v1, v3, v4

    .line 292
    :goto_1
    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    add-int/2addr v2, v0

    invoke-virtual {v4, v3, v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->layout(IIII)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 91
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 92
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mOverflowMenuBtn:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_0

    .line 93
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findOverflowMenuButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mOverflowMenuBtn:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    :cond_0
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mOverflowMenuBtn:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsOverflowBtnOverrided:Z

    if-nez p3, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->overrideOverflowFlowMenu(Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 97
    iput-boolean p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsOverflowBtnOverrided:Z

    .line 99
    :cond_1
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mNavBtnDescription:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsNavigationBtnModified:Z

    if-nez p1, :cond_2

    .line 100
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->customizeNatigationButton()V

    .line 101
    iput-boolean p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsNavigationBtnModified:Z

    .line 103
    :cond_2
    iget-boolean p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mIsHorizon:Z

    if-eqz p1, :cond_6

    .line 104
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_3

    .line 105
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findTitleView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    :cond_3
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_4

    .line 108
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->findSubTitleView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mSubtitleView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    :cond_4
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mTitleView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 111
    iget-object p3, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->text_size_title_zui_toolbar_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 114
    :cond_5
    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 115
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mHandler:Landroid/os/Handler;

    new-instance p2, Lzui/appcompat/widget/ZuiAppcompatToolbar$1;

    invoke-direct {p2, p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar$1;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->adjustLayoutForNavigationButton(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->adjustLayoutForNavigationButton(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 128
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->mMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method
