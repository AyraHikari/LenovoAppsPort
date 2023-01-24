.class public Lcom/zui/internal/app/DialogController;
.super Ljava/lang/Object;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/DialogController$CheckedItemAdapter;,
        Lcom/zui/internal/app/DialogController$DialogParams;,
        Lcom/zui/internal/app/DialogController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static TITLE_VERTICAL_PADDING:I


# instance fields
.field protected final TEXTVIEW_MAX_WIDTH:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mBtnCount:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field protected mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelableOnOrientation:Z

.field private mCheckedItem:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field protected mCustomView:Landroid/view/View;

.field protected mCustomizedLF:Z

.field protected final mDialogInterface:Landroid/content/DialogInterface;

.field protected mDisableAutoVerticalBtn:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHideBtnPanelDivider:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsCommonList:Z

.field private mIsVerticalBtn:Z

.field protected mLayout:I

.field protected mListDivider:Landroid/graphics/drawable/Drawable;

.field protected mListItemLayout:I

.field protected mListLayout:I

.field protected mListView:Landroid/widget/ListView;

.field protected mListViewSelector:Landroid/graphics/drawable/Drawable;

.field private mMaxHeight:I

.field private mMaxHorizontalHeight:I

.field protected mMessage:Ljava/lang/CharSequence;

.field protected mMessageView:Landroid/widget/TextView;

.field protected mMultiChoiceItemLayout:I

.field protected mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mParentPanel:Landroid/view/View;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSingleChoiceItemLayout:I

.field private mStartOrientation:I

.field protected mTitle:Ljava/lang/CharSequence;

.field public mTitleDivider:Landroid/view/View;

.field private mTitleIcon:Landroid/graphics/drawable/Drawable;

.field private mTitleIconId:I

.field private mTitleIconView:Landroid/widget/ImageView;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mVerticalBtnDividerId:I

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field public final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/app/DialogController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/zui/internal/app/DialogController;->mCheckedItem:I

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconId:I

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mCancelableOnOrientation:Z

    .line 132
    new-instance v1, Lcom/zui/internal/app/DialogController$1;

    invoke-direct {v1, p0}, Lcom/zui/internal/app/DialogController$1;-><init>(Lcom/zui/internal/app/DialogController;)V

    iput-object v1, p0, Lcom/zui/internal/app/DialogController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 159
    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 161
    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const-string p3, "layout_inflater"

    .line 162
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    .line 163
    new-instance p3, Lcom/zui/internal/app/DialogController$ButtonHandler;

    invoke-direct {p3, p2}, Lcom/zui/internal/app/DialogController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    .line 164
    sget p2, Lzui/platform/R$layout;->message_dialog:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_max_height_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mMaxHeight:I

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_max_height_zui_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mMaxHorizontalHeight:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_message_view_width_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController;->TEXTVIEW_MAX_WIDTH:I

    .line 172
    sget p2, Lzui/platform/R$layout;->select_dialog_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mListLayout:I

    .line 173
    sget p2, Lzui/platform/R$layout;->select_dialog_item_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    .line 174
    sget p2, Lzui/platform/R$layout;->select_dialog_singlechoice_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mSingleChoiceItemLayout:I

    .line 175
    sget p2, Lzui/platform/R$layout;->select_dialog_multichoice_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mMultiChoiceItemLayout:I

    .line 176
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v1, Lzui/platform/R$attr;->dialogTitleVerticalPadding:I

    invoke-virtual {p3, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/zui/internal/app/DialogController;->TITLE_VERTICAL_PADDING:I

    if-gtz p2, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_padding_top_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/zui/internal/app/DialogController;->TITLE_VERTICAL_PADDING:I

    .line 183
    :cond_0
    sget p2, Lzui/platform/R$layout;->message_dialog_vertical_button_divider:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mVerticalBtnDividerId:I

    const-string p2, "window"

    .line 184
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/zui/internal/app/DialogController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController;->mHideBtnPanelDivider:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/zui/internal/app/DialogController;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/zui/internal/app/DialogController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/internal/app/DialogController;)Landroid/view/WindowManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/internal/app/DialogController;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/zui/internal/app/DialogController;->mStartOrientation:I

    return p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/zui/internal/app/DialogController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zui/internal/app/DialogController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/zui/internal/app/DialogController;->mCancelableOnOrientation:Z

    return p0
.end method

.method private addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 2

    .line 595
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 596
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 597
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x1

    .line 598
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 599
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addVerticalDivider(Landroid/widget/LinearLayout;)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/app/DialogController;->mVerticalBtnDividerId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 808
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 812
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 816
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 817
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 820
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 821
    invoke-static {v3}, Lcom/zui/internal/app/DialogController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerTitleView()V
    .locals 5

    .line 689
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sget v2, Lcom/zui/internal/app/DialogController;->TITLE_VERTICAL_PADDING:I

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    .line 691
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sget v4, Lcom/zui/internal/app/DialogController;->TITLE_VERTICAL_PADDING:I

    .line 690
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private getFirstButton(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 729
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 730
    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 731
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 732
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 733
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private handleKeyEventForButtonPanel(Z)Z
    .locals 4

    .line 744
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 745
    sget-object v1, Lcom/zui/internal/app/DialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeyEventForButtonPanel:keyUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " focus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x1020019

    if-eq p1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x102001a

    if-eq p1, v3, :cond_1

    .line 751
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x102001b

    if-ne p1, v3, :cond_4

    .line 752
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 753
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 754
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-nez v3, :cond_2

    .line 755
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 758
    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->getFirstButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 759
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 760
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 767
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    sget v3, Lzui/platform/R$id;->buttonPanel:I

    if-ne p1, v3, :cond_4

    .line 768
    invoke-direct {p0, v0}, Lcom/zui/internal/app/DialogController;->getFirstButton(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 770
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V

    .line 771
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    move v1, v2

    :cond_4
    return v1
.end method

.method private hideButtonPanelDivider(Landroid/view/View;)V
    .locals 1

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lzui/platform/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private relayoutButtonPanel(Landroid/view/ViewGroup;ZI)V
    .locals 1

    .line 570
    check-cast p1, Landroid/widget/LinearLayout;

    .line 571
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 572
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x0

    .line 574
    iget-object p3, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 575
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/zui/internal/app/DialogController;->addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    move p2, v0

    .line 579
    :cond_0
    iget-object p3, p0, Lcom/zui/internal/app/DialogController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    .line 581
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->addVerticalDivider(Landroid/widget/LinearLayout;)V

    .line 583
    :cond_1
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/zui/internal/app/DialogController;->addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    :cond_2
    move v0, p2

    .line 586
    :goto_0
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    .line 588
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->addVerticalDivider(Landroid/widget/LinearLayout;)V

    .line 590
    :cond_3
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/zui/internal/app/DialogController;->addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    :cond_4
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    .line 512
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/zui/internal/app/DialogController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    :goto_0
    move v4, v0

    const v5, 0x102001a

    .line 523
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    .line 524
    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 527
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 529
    :cond_1
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    :goto_1
    const v5, 0x102001b

    .line 535
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v5, :cond_2

    .line 537
    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_2
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 540
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v5, :cond_4

    .line 541
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 544
    :cond_3
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    .line 549
    :cond_4
    :goto_2
    iput v4, p0, Lcom/zui/internal/app/DialogController;->mBtnCount:I

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    .line 552
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 553
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->hideButtonPanelDivider(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    if-ne v4, v3, :cond_7

    .line 556
    sget v0, Lzui/platform/R$id;->button_divider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 558
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 560
    :cond_7
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mIsVerticalBtn:Z

    if-nez v0, :cond_8

    const/4 v0, 0x2

    if-le v4, v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mDisableAutoVerticalBtn:Z

    if-nez v0, :cond_9

    .line 561
    invoke-direct {p0, p1, v3, v4}, Lcom/zui/internal/app/DialogController;->relayoutButtonPanel(Landroid/view/ViewGroup;ZI)V

    .line 563
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mHideBtnPanelDivider:Z

    if-eqz v0, :cond_a

    .line 564
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->hideButtonPanelDivider(Landroid/view/View;)V

    :cond_a
    :goto_4
    return-void
.end method

.method private setupView()V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    .line 608
    sget v1, Lzui/platform/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v2, Lzui/platform/R$id;->buttonPanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 610
    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v3, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 611
    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v4, Lzui/platform/R$id;->customPanel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 613
    invoke-virtual {p0, v3}, Lcom/zui/internal/app/DialogController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 615
    invoke-virtual {p0, v0}, Lcom/zui/internal/app/DialogController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 616
    invoke-virtual {p0, v2}, Lcom/zui/internal/app/DialogController;->setupContent(Landroid/view/ViewGroup;)V

    .line 617
    invoke-direct {p0, v1}, Lcom/zui/internal/app/DialogController;->setupButtons(Landroid/view/ViewGroup;)V

    const/4 v2, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 622
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    :cond_1
    if-eqz v3, :cond_2

    .line 624
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    :cond_2
    if-eqz v0, :cond_3

    .line 627
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    .line 628
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 644
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 646
    iget v1, p0, Lcom/zui/internal/app/DialogController;->mCheckedItem:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_4

    .line 648
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 649
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 397
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 398
    new-instance p3, Lcom/zui/internal/app/DialogController$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/zui/internal/app/DialogController$2;-><init>(Lcom/zui/internal/app/DialogController;Landroid/view/ViewTreeObserver;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public customizeTextViewLineFeed(Landroid/widget/TextView;)V
    .locals 2

    .line 473
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mCustomizedLF:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 475
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lzui/widget/TextView;

    if-eqz v0, :cond_0

    .line 476
    check-cast p1, Lzui/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzui/widget/TextView;->enableCustomizedLineFeed(Z)V

    :cond_0
    return-void
.end method

.method public getAllowedMaxHeight()I
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 342
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/zui/internal/app/DialogController;->mMaxHeight:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 346
    :cond_1
    iget v0, p0, Lcom/zui/internal/app/DialogController;->mMaxHeight:I

    return v0
.end method

.method public getAllowedMaxHorizontalHeight()I
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 351
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/zui/internal/app/DialogController;->mMaxHorizontalHeight:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 355
    :cond_1
    iget v0, p0, Lcom/zui/internal/app/DialogController;->mMaxHorizontalHeight:I

    return v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    .line 327
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 328
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 329
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 195
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 196
    invoke-direct {p0}, Lcom/zui/internal/app/DialogController;->setupView()V

    return-void
.end method

.method public installContent(Lcom/zui/internal/app/DialogController$DialogParams;)V
    .locals 0

    .line 188
    invoke-virtual {p1, p0}, Lcom/zui/internal/app/DialogController$DialogParams;->apply(Lcom/zui/internal/app/DialogController;)V

    .line 189
    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->installContent()V

    return-void
.end method

.method public isInLandscape()Z
    .locals 5

    .line 483
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 485
    check-cast v1, Landroid/app/Activity;

    .line 486
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 487
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    .line 364
    invoke-direct {p0, v2}, Lcom/zui/internal/app/DialogController;->handleKeyEventForButtonPanel(Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/16 p2, 0x13

    if-ne p1, p2, :cond_2

    .line 366
    invoke-direct {p0, v1}, Lcom/zui/internal/app/DialogController;->handleKeyEventForButtonPanel(Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public prepareWatchOrientation()V
    .locals 3

    .line 430
    new-instance v0, Lcom/zui/internal/app/DialogController$3;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/internal/app/DialogController$3;-><init>(Lcom/zui/internal/app/DialogController;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 216
    iget-object p4, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 222
    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 223
    iput-object p4, p0, Lcom/zui/internal/app/DialogController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 237
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_2
    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 228
    iput-object p4, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 232
    :cond_3
    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 233
    iput-object p4, p0, Lcom/zui/internal/app/DialogController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setCancelableOnOrientation(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController;->mCancelableOnOrientation:Z

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 255
    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 248
    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    iput p1, p0, Lcom/zui/internal/app/DialogController;->mTitleIconId:I

    .line 287
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 289
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 292
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 303
    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconId:I

    .line 306
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 311
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVerticalAlignedButtons(Z)V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mIsVerticalBtn:Z

    if-eq v0, p1, :cond_0

    .line 243
    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController;->mIsVerticalBtn:Z

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mView:Landroid/view/View;

    .line 266
    iput p1, p0, Lcom/zui/internal/app/DialogController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 274
    iput p1, p0, Lcom/zui/internal/app/DialogController;->mViewLayoutResId:I

    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 380
    sget v0, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    .line 381
    sget v0, Lzui/platform/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    .line 382
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 390
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 392
    invoke-direct {p0}, Lcom/zui/internal/app/DialogController;->centerTitleView()V

    :cond_1
    return-void
.end method

.method protected setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget v0, p0, Lcom/zui/internal/app/DialogController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 700
    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 706
    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 707
    :cond_3
    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_6

    .line 712
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v2, Lzui/platform/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 713
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 714
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 716
    :cond_5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 717
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    .line 719
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 720
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    .line 723
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    .line 655
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 659
    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v0, Lzui/platform/R$id;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 662
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 665
    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v4, Lzui/platform/R$id;->icon:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    .line 666
    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v4, Lzui/platform/R$id;->titleDivider:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/internal/app/DialogController;->mTitleDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 668
    sget v0, Lzui/platform/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    .line 669
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/zui/internal/app/DialogController;->TEXTVIEW_MAX_WIDTH:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/zui/internal/app/DialogController;->adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 671
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    iget p1, p0, Lcom/zui/internal/app/DialogController;->mTitleIconId:I

    if-eqz p1, :cond_1

    .line 676
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 678
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 680
    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 683
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public stopWatchScreenOrientation()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public watchScreenOrientation()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/DialogController;->mStartOrientation:I

    .line 461
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method
