.class public Lcom/zui/internal/app/MessageController;
.super Lcom/zui/internal/app/DialogController;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/MessageController$MessageParams;,
        Lcom/zui/internal/app/MessageController$ClickableItem;,
        Lcom/zui/internal/app/MessageController$GroupItem;,
        Lcom/zui/internal/app/MessageController$TextClickableSpan;,
        Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;
    }
.end annotation


# static fields
.field private static final CHAR_NEWLINE:Ljava/lang/String; = "\n"

.field private static final CHAR_SPACE:Ljava/lang/String; = " "

.field private static final DEBUG:Z = false

.field private static final DEBUG_CALLER:Z = false

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x438

.field private static final EDITOR_ERROR_MSG_SHOW_TIME:I = 0x7d0

.field private static final PAIRED_ITEMS_VIEW_ID:I = 0x1001

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CHAR_SEPARATOR:Ljava/lang/String;

.field private final DEFAULT_CHECKBOX_HEIGHT:I

.field private final TEXTVIEW_VERTICAL_MARGIN:I

.field private mButtonBarDividerHeight:I

.field private mButtonHeight:I

.field private mCenterDialogMaxHeight:I

.field private mCenterDialogMaxHorizontalHeight:I

.field private mCenterDialogWidth:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxHeight:I

.field private mCheckBoxPadding:I

.field private mCheckMessage:Ljava/lang/CharSequence;

.field private mCustomMaxHeight:I

.field public mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

.field private mEditor:Landroid/widget/EditText;

.field private mEditorBg:Landroid/graphics/drawable/Drawable;

.field private mEditorBottomSpace:Landroid/view/View;

.field private mEditorError:Landroid/widget/TextView;

.field private mEditorErrorBg:Landroid/graphics/drawable/Drawable;

.field private mEditorErrorText:Ljava/lang/CharSequence;

.field private mEditorHintText:Ljava/lang/CharSequence;

.field private mEditorLayout:I

.field private mEditorPrompt:Landroid/widget/TextView;

.field private mEditorPromptText:Ljava/lang/CharSequence;

.field private mEditorText:Ljava/lang/CharSequence;

.field private mEditorWatcher:Landroid/text/TextWatcher;

.field private mExtraSpaceHeight:I

.field private mGroupItemLayout:I

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalMaxWidth:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHint:Ljava/lang/CharSequence;

.field private mIconHintView:Landroid/widget/TextView;

.field private mIconId:I

.field private mIconLayout:I

.field private mIconMessage:Ljava/lang/CharSequence;

.field private mIconMessageView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mInfoLayout:I

.field private mIsChecked:Z

.field private mIsDialogCenter:Z

.field private mIsHorizontal:Z

.field private mIsPCMode:Z

.field private mItemsHighlight:I

.field private mItemsMessage:[Ljava/lang/CharSequence;

.field private mItemsTitle:[Ljava/lang/CharSequence;

.field private mMaxHeight:I

.field private mMaxHorizontalHeight:I

.field private mOnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPairedAdapter:Lzui/widget/PairedItemListAdapter;

.field private mPairedAdapterObserver:Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;

.field private mPairedItemHMessageLayout:I

.field private mPairedItemHTitleLayout:I

.field private mPermissionLayout:I

.field private mPermissionPanel:Landroid/view/View;

.field private final mRevertEditorErrorState:Ljava/lang/Runnable;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowEmptySpace:Z

.field private mTitleHeight:I

.field private mType:I

.field private mWarningLayout:I

.field private mWarningMaxHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/app/MessageController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/internal/app/DialogController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 98
    new-instance p2, Lcom/zui/internal/app/MessageController$1;

    invoke-direct {p2, p0}, Lcom/zui/internal/app/MessageController$1;-><init>(Lcom/zui/internal/app/MessageController;)V

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->mRevertEditorErrorState:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 134
    iput-boolean p2, p0, Lcom/zui/internal/app/MessageController;->mShowEmptySpace:Z

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$string;->message_dialog_paired_message_separator:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->CHAR_SEPARATOR:Ljava/lang/String;

    .line 150
    sget-object p2, Lzui/platform/R$styleable;->MessageDialog:[I

    sget p3, Lzui/platform/R$attr;->messageDialogStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 152
    sget p3, Lzui/platform/R$styleable;->MessageDialog_android_layout:I

    sget v0, Lzui/platform/R$layout;->message_dialog:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mLayout:I

    .line 155
    sget p3, Lzui/platform/R$styleable;->MessageDialog_infoLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_detailed_information:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mInfoLayout:I

    .line 157
    sget p3, Lzui/platform/R$styleable;->MessageDialog_editorLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_editor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mEditorLayout:I

    .line 159
    sget p3, Lzui/platform/R$styleable;->MessageDialog_warningLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mWarningLayout:I

    .line 161
    sget p3, Lzui/platform/R$styleable;->MessageDialog_permissionLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_permission:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mPermissionLayout:I

    .line 163
    sget p3, Lzui/platform/R$styleable;->MessageDialog_pairedItemHighlightTitleLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning_item_highlight_title:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mPairedItemHTitleLayout:I

    .line 166
    sget p3, Lzui/platform/R$styleable;->MessageDialog_pairedItemHighlightMessageLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning_item_highlight_message:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mPairedItemHMessageLayout:I

    .line 169
    sget p3, Lzui/platform/R$styleable;->MessageDialog_groupItemLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_group_item:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mGroupItemLayout:I

    .line 171
    sget p3, Lzui/platform/R$styleable;->MessageDialog_iconViewLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning_icon_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mIconLayout:I

    .line 173
    sget p3, Lzui/platform/R$styleable;->MessageDialog_textViewVerticalMargin:I

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->message_dialog_text_vertical_margin_zui:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->TEXTVIEW_VERTICAL_MARGIN:I

    .line 177
    sget p3, Lzui/platform/R$styleable;->MessageDialog_dialogWidth:I

    const/16 v0, 0x438

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mHorizontalMaxWidth:I

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->message_dialog_check_box_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mCheckBoxPadding:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->alert_dialog_max_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mMaxHeight:I

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->alert_dialog_max_height_zui_horizontal:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mMaxHorizontalHeight:I

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->center_dialog_max_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogMaxHeight:I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->center_dialog_max_height_zui_horizontal:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogMaxHorizontalHeight:I

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->center_dialog_width_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogWidth:I

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->bottom_bar_divider_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mButtonBarDividerHeight:I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->message_dialog_extra_space:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->mExtraSpaceHeight:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->message_dialog_check_box_default_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->DEFAULT_CHECKBOX_HEIGHT:I

    .line 197
    sget p3, Lzui/platform/R$styleable;->MessageDialog_android_editTextBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->mEditorBg:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$drawable;->edit_text_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->mEditorBg:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_0
    sget p3, Lzui/platform/R$styleable;->MessageDialog_editTextErrorBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorBg:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lzui/platform/R$drawable;->edit_text_error_bg_zui:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorBg:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_1
    sget p1, Lzui/platform/R$styleable;->MessageDialog_verticalButtonDivider:I

    sget p3, Lzui/platform/R$layout;->message_dialog_vertical_button_divider:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/app/MessageController;->mVerticalBtnDividerId:I

    .line 208
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mTitleHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mCheckBoxHeight:I

    return p0
.end method

.method static synthetic access$1002(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mCheckBoxHeight:I

    return p1
.end method

.method static synthetic access$102(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mTitleHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->DEFAULT_CHECKBOX_HEIGHT:I

    return p0
.end method

.method static synthetic access$1200(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mWarningMaxHeight:I

    return p0
.end method

.method static synthetic access$1202(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mWarningMaxHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/zui/internal/app/MessageController;)Landroid/widget/ScrollView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/internal/app/MessageController;)Lzui/widget/PairedItemListAdapter;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mType:I

    return p0
.end method

.method static synthetic access$1600(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->setupInformationView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->setupPairedItemView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mButtonHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mButtonHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/internal/app/MessageController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/zui/internal/app/MessageController;->mIsHorizontal:Z

    return p0
.end method

.method static synthetic access$400(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mMaxHorizontalHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mCustomMaxHeight:I

    return p0
.end method

.method static synthetic access$602(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mCustomMaxHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mExtraSpaceHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zui/internal/app/MessageController;->mButtonBarDividerHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private addItem2Group(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;Lcom/zui/internal/app/MessageController$GroupItem$Item;ZZ)V
    .locals 8

    .line 805
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->mGroupItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 806
    sget v1, Lzui/platform/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 807
    iget-object v3, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    .line 810
    iget-object p4, p0, Lcom/zui/internal/app/MessageController;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding_horizontal:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    goto :goto_0

    .line 813
    :cond_0
    iget-object p4, p0, Lcom/zui/internal/app/MessageController;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v3, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding:I

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 815
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 816
    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lzui/platform/R$dimen;->message_dialog_group_item_title_bottom_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 818
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    :goto_0
    sget v1, Lzui/platform/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 821
    iget-object v3, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    sget v1, Lzui/platform/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 823
    iget-object v3, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 824
    iget-object v3, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 825
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 824
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 826
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 827
    iget-object v5, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 828
    iget-object p3, p3, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 829
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 830
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x0

    .line 831
    invoke-virtual {v4, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    .line 833
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz p5, :cond_2

    .line 836
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    .line 837
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    .line 836
    invoke-virtual {v0, p3, p4, p5, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 839
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 839
    invoke-virtual {v0, p3, p5, v1, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 842
    :goto_2
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addPairedItemToPanel(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 960
    sget v0, Lzui/platform/R$id;->alertTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 961
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    sget p4, Lzui/platform/R$id;->message:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 963
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p7, p7, -0x1

    if-ne p6, p7, :cond_0

    .line 965
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 967
    :cond_0
    invoke-virtual {p1, p2, p6, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private printCallStack(Ljava/lang/String;)V
    .locals 2

    .line 1047
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1049
    sget-object p1, Lcom/zui/internal/app/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "Call stack of function is "

    invoke-static {p1, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private setEditorBackground(Z)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEditorErrorMessageInner()V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 645
    invoke-direct {p0, v0}, Lcom/zui/internal/app/MessageController;->setEditorBackground(Z)V

    .line 646
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mRevertEditorErrorState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorError:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    invoke-direct {p0, v1}, Lcom/zui/internal/app/MessageController;->setEditorBackground(Z)V

    :goto_0
    return-void
.end method

.method private setScrollViewVerticalMargins(ZZ)V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    .line 1039
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1040
    iget p1, p0, Lcom/zui/internal/app/MessageController;->TEXTVIEW_VERTICAL_MARGIN:I

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/zui/internal/app/MessageController;->TEXTVIEW_VERTICAL_MARGIN:I

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1042
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setupEditorView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 666
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mEditorLayout:I

    if-lez v0, :cond_4

    .line 667
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 668
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 669
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->mEditorLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020003

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    const v0, 0x1020005

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    const v0, 0x102000b

    .line 672
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorError:Landroid/widget/TextView;

    const v0, 0x1020004

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorBottomSpace:Landroid/view/View;

    .line 674
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorHintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 678
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    .line 681
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :goto_0
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->setEditorErrorMessageInner()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private setupIconView(Landroid/view/ViewGroup;)V
    .locals 8

    .line 998
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->mIconLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 999
    sget v1, Lzui/platform/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    .line 1000
    sget v1, Lzui/platform/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    .line 1001
    sget v1, Lzui/platform/R$id;->iconHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    .line 1003
    iget v1, p0, Lcom/zui/internal/app/MessageController;->mIconId:I

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 1004
    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1006
    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    .line 1011
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    .line 1012
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    .line 1013
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 1010
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1014
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    :goto_0
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1021
    :cond_2
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    :goto_1
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1024
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1027
    :cond_3
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    :goto_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1032
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupInformationView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 582
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 585
    :goto_0
    iget-object v3, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    array-length v3, v3

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 588
    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    if-eqz v4, :cond_b

    :cond_2
    iget v4, p0, Lcom/zui/internal/app/MessageController;->mInfoLayout:I

    if-lez v4, :cond_b

    .line 589
    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/zui/internal/app/MessageController;->mInfoLayout:I

    invoke-virtual {v4, v5, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 590
    sget v4, Lzui/platform/R$id;->message:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    iget-object v6, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    const-string v7, " "

    const-string v8, "\n"

    if-eqz v6, :cond_5

    .line 594
    invoke-virtual {v6}, Lzui/widget/PairedItemListAdapter;->getCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_a

    .line 596
    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v1}, Lzui/widget/PairedItemListAdapter;->getItemTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v1}, Lzui/widget/PairedItemListAdapter;->getItemMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 598
    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->CHAR_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    .line 599
    invoke-virtual {v2, v1}, Lzui/widget/PairedItemListAdapter;->getItemMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 598
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_4

    .line 602
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_8

    .line 607
    :goto_3
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    array-length v6, v0

    if-ge v1, v6, :cond_a

    .line 608
    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 610
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->CHAR_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 612
    :cond_6
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_7

    .line 613
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 617
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    .line 618
    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_9

    .line 620
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 625
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1001

    .line 626
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    :goto_5
    return-object p1
.end method

.method private setupPairedItemView(Landroid/view/ViewGroup;)V
    .locals 12

    .line 972
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mItemsHighlight:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 973
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mPairedItemHTitleLayout:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 975
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mPairedItemHMessageLayout:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-lez v0, :cond_3

    .line 978
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 981
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 982
    invoke-virtual {v1}, Lzui/widget/PairedItemListAdapter;->getCount()I

    move-result v1

    move v11, v2

    :goto_1
    if-ge v11, v1, :cond_3

    .line 984
    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v11}, Lzui/widget/PairedItemListAdapter;->getItemTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    .line 985
    invoke-virtual {v2, v11}, Lzui/widget/PairedItemListAdapter;->getItemMessage(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v5, v10

    move v8, v11

    move v9, v1

    .line 984
    invoke-direct/range {v2 .. v9}, Lcom/zui/internal/app/MessageController;->addPairedItemToPanel(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 988
    :cond_2
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    array-length v1, v1

    move v11, v2

    :goto_2
    if-ge v11, v1, :cond_3

    .line 990
    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    aget-object v6, v2, v11

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    aget-object v7, v2, v11

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v5, v10

    move v8, v11

    move v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/zui/internal/app/MessageController;->addPairedItemToPanel(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setupPermissionView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v6, p0

    .line 847
    iget v0, v6, Lcom/zui/internal/app/MessageController;->mPermissionLayout:I

    if-lez v0, :cond_e

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/zui/internal/app/MessageController;->isInLandscape()Z

    move-result v7

    .line 849
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, v6, Lcom/zui/internal/app/MessageController;->mPermissionLayout:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 850
    iput-object v9, v6, Lcom/zui/internal/app/MessageController;->mPermissionPanel:Landroid/view/View;

    .line 851
    sget v0, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    .line 852
    sget v0, Lzui/platform/R$id;->message:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x8

    const/4 v13, -0x1

    if-eqz v10, :cond_8

    .line 853
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mGroupList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 854
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v14, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move v15, v8

    .line 857
    :goto_0
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_8

    .line 858
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mGroupList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/zui/internal/app/MessageController$GroupItem;

    .line 859
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v15, v0, :cond_0

    move/from16 v17, v16

    goto :goto_1

    :cond_0
    move/from16 v17, v8

    .line 860
    :goto_1
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lzui/platform/R$layout;->message_dialog_group:I

    invoke-virtual {v0, v1, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 863
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    sget v0, Lzui/platform/R$id;->groupTitle:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 866
    iget-object v1, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    :cond_1
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 870
    sget v0, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_3

    move v3, v8

    .line 872
    :goto_2
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    if-eqz v17, :cond_2

    .line 873
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_2

    move/from16 v19, v16

    goto :goto_3

    :cond_2
    move/from16 v19, v8

    .line 874
    :goto_3
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/zui/internal/app/MessageController$GroupItem$Item;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v14

    move/from16 v21, v3

    move-object/from16 v3, v20

    move-object v13, v4

    move v4, v7

    move-object/from16 v20, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/app/MessageController;->addItem2Group(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;Lcom/zui/internal/app/MessageController$GroupItem$Item;ZZ)V

    add-int/lit8 v3, v21, 0x1

    move-object v4, v13

    move-object/from16 v5, v20

    const/4 v13, -0x1

    goto :goto_2

    :cond_3
    move-object v13, v4

    .line 879
    sget v0, Lzui/platform/R$id;->divider:I

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v17, :cond_4

    .line 882
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 885
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    iget-object v2, v6, Lcom/zui/internal/app/MessageController;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_4

    .line 888
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 890
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 894
    :cond_6
    :goto_5
    invoke-virtual {v10, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v11, :cond_f

    .line 899
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->message_dialog_permission_description_vertical_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_6

    .line 901
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->message_dialog_permission_description_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 903
    :goto_6
    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    if-eqz v1, :cond_d

    .line 904
    iget-object v1, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 906
    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 907
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v3, v6, Lcom/zui/internal/app/MessageController;->mContext:Landroid/content/Context;

    sget v4, Lzui/platform/R$color;->message_dialog_description_clickable_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 910
    iget-object v4, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v4, v4, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    array-length v5, v4

    move v7, v8

    :goto_7
    if-ge v7, v5, :cond_b

    aget-object v10, v4, v7

    .line 911
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 912
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v13, v12

    const/4 v14, -0x1

    if-le v12, v14, :cond_a

    .line 913
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-ge v12, v15, :cond_a

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-ge v13, v15, :cond_a

    if-ge v12, v13, :cond_a

    .line 915
    new-instance v15, Landroid/text/style/UnderlineSpan;

    invoke-direct {v15}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v14, 0x21

    invoke-virtual {v2, v15, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 916
    new-instance v15, Lcom/zui/internal/app/MessageController$TextClickableSpan;

    iget-object v8, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v8, v8, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    iget-object v14, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v14, v14, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    invoke-direct {v15, v6, v8, v10, v14}, Lcom/zui/internal/app/MessageController$TextClickableSpan;-><init>(Lcom/zui/internal/app/MessageController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lzui/app/MessageDialog$OnDescriptionClickableTextListener;)V

    const/16 v8, 0x21

    invoke-virtual {v2, v15, v12, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 919
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v10, v12, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_7

    .line 923
    :cond_b
    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object v2, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    .line 925
    :cond_c
    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    .line 927
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 928
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 929
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 928
    invoke-virtual {v11, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 930
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 932
    :cond_d
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    sget v1, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 934
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 935
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :cond_f
    :goto_8
    return-object v9
.end method

.method private setupWarningView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 695
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mWarningLayout:I

    const/4 v1, 0x0

    if-lez v0, :cond_b

    .line 696
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/zui/internal/app/MessageController;->mWarningLayout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 697
    sget v0, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mScrollView:Landroid/widget/ScrollView;

    .line 698
    sget v0, Lzui/platform/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    .line 701
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessage:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mMessage:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/zui/internal/app/MessageController;->TEXTVIEW_MAX_WIDTH:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/zui/internal/app/MessageController;->adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 704
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/zui/internal/app/MessageController;->customizeTextViewLineFeed(Landroid/widget/TextView;)V

    :goto_0
    move v0, v3

    move v5, v4

    goto :goto_3

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    sget v0, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 710
    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 711
    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    array-length v5, v5

    if-gtz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    if-eqz v5, :cond_3

    .line 713
    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/internal/app/MessageController;->setupPairedItemView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 715
    :cond_3
    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    iget v5, p0, Lcom/zui/internal/app/MessageController;->mIconId:I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    .line 716
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/zui/internal/app/MessageController;->setupIconView(Landroid/view/ViewGroup;)V

    .line 717
    invoke-direct {p0, v3, v3}, Lcom/zui/internal/app/MessageController;->setScrollViewVerticalMargins(ZZ)V

    move v0, v4

    :goto_2
    move v5, v0

    :goto_3
    const v6, 0x1020001

    .line 722
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    .line 723
    iget-object v6, p0, Lcom/zui/internal/app/MessageController;->mCheckMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 724
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mCheckMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/zui/internal/app/MessageController;->mIsChecked:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 726
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mOnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_6

    .line 727
    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 729
    :cond_6
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz v5, :cond_7

    .line 731
    invoke-direct {p0, v4, v3}, Lcom/zui/internal/app/MessageController;->setScrollViewVerticalMargins(ZZ)V

    goto :goto_4

    .line 733
    :cond_7
    iput-boolean v3, p0, Lcom/zui/internal/app/MessageController;->mShowEmptySpace:Z

    .line 734
    invoke-direct {p0, v3, v3}, Lcom/zui/internal/app/MessageController;->setScrollViewVerticalMargins(ZZ)V

    goto :goto_4

    .line 738
    :cond_8
    iget-object v3, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-nez v0, :cond_9

    .line 740
    invoke-direct {p0, v4, v4}, Lcom/zui/internal/app/MessageController;->setScrollViewVerticalMargins(ZZ)V

    :cond_9
    move v4, v5

    :goto_4
    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, p1

    :goto_5
    if-eqz v1, :cond_b

    .line 747
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_b

    .line 748
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 749
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    sget v0, Lzui/platform/R$id;->buttonPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 750
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 751
    new-instance v2, Lcom/zui/internal/app/MessageController$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/internal/app/MessageController$3;-><init>(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_b
    return-object v1
.end method

.method private showEditorBottomViewIfNeeded()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorBottomSpace:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 655
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 656
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorBottomSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 657
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorBottomSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getAllowedHorizontalMaxWidth()I
    .locals 1

    .line 953
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mHorizontalMaxWidth:I

    return v0
.end method

.method public getAllowedMaxHeight()I
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/zui/internal/app/MessageController;->mIsDialogCenter:Z

    if-eqz v0, :cond_0

    .line 519
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogMaxHeight:I

    goto :goto_0

    .line 521
    :cond_0
    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAllowedMaxHorizontalHeight()I
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/zui/internal/app/MessageController;->mIsDialogCenter:Z

    if-eqz v0, :cond_0

    .line 530
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogMaxHorizontalHeight:I

    goto :goto_0

    .line 532
    :cond_0
    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHorizontalHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCenterDialogWidth()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogWidth:I

    return v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getEditor()Landroid/widget/EditText;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditorErrorText()Ljava/lang/CharSequence;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorHintText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorPromptText()Ljava/lang/CharSequence;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorText()Ljava/lang/CharSequence;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/zui/internal/app/MessageController;->mType:I

    return v0
.end method

.method public onDismiss()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 461
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mRevertEditorErrorState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapterObserver:Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {v0, v1}, Lzui/widget/PairedItemListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapterObserver:Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;

    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapterObserver:Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;-><init>(Lcom/zui/internal/app/MessageController;Lcom/zui/internal/app/MessageController$1;)V

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapterObserver:Lcom/zui/internal/app/MessageController$AdapterDataSetObserver;

    .line 454
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v1, v0}, Lzui/widget/PairedItemListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public setCheckMessage(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 351
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 352
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 353
    iget-boolean p1, p0, Lcom/zui/internal/app/MessageController;->mIsChecked:Z

    if-eq p1, p2, :cond_0

    .line 354
    iput-boolean p2, p0, Lcom/zui/internal/app/MessageController;->mIsChecked:Z

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    .line 357
    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->mCheckMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iget-boolean p2, p0, Lcom/zui/internal/app/MessageController;->mIsChecked:Z

    if-eq p1, p2, :cond_1

    .line 359
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 362
    invoke-direct {p0, v0, p2}, Lcom/zui/internal/app/MessageController;->setScrollViewVerticalMargins(ZZ)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    .line 366
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 367
    invoke-direct {p0, v0, v0}, Lcom/zui/internal/app/MessageController;->setScrollViewVerticalMargins(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setDescriptionItem(Lcom/zui/internal/app/MessageController$ClickableItem;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    return-void
.end method

.method public setDialogCenter(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->mIsDialogCenter:Z

    if-eqz p1, :cond_0

    .line 222
    iget p1, p0, Lcom/zui/internal/app/MessageController;->mCenterDialogMaxHeight:I

    iput p1, p0, Lcom/zui/internal/app/MessageController;->mMaxHeight:I

    :cond_0
    return-void
.end method

.method public setEditorErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorErrorText:Ljava/lang/CharSequence;

    .line 319
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorError:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->setEditorErrorMessageInner()V

    .line 322
    :cond_2
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->showEditorBottomViewIfNeeded()V

    :cond_3
    return-void
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorHintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorHintText:Ljava/lang/CharSequence;

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorHintText:Ljava/lang/CharSequence;

    .line 275
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setEditorPromptMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    .line 294
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorPromptText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 297
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorPrompt:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->showEditorBottomViewIfNeeded()V

    :cond_4
    return-void
.end method

.method public setEditorText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorText:Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorText:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setEditorTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditorWatcher:Landroid/text/TextWatcher;

    if-ne v0, p1, :cond_0

    return-void

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mEditorWatcher:Landroid/text/TextWatcher;

    .line 340
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public setGroupList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$GroupItem;",
            ">;)V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mGroupList:Ljava/util/List;

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 408
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mIconId:I

    .line 410
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 415
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2

    .line 386
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/zui/internal/app/MessageController;->mIconId:I

    .line 388
    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    .line 389
    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 390
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    :goto_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 421
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/zui/internal/app/MessageController;->mIconId:I

    .line 423
    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    .line 424
    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    .line 425
    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 426
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/zui/internal/app/MessageController;->mIconMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :goto_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 434
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->mIconHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mIconHintView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setInHorizontalMode(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->mIsHorizontal:Z

    return-void
.end method

.method public setInPCMode(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->mIsPCMode:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mOnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eq v0, p1, :cond_0

    .line 374
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mOnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 375
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPairedItem(Lzui/widget/PairedItemListAdapter;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    .line 249
    iput p2, p0, Lcom/zui/internal/app/MessageController;->mItemsHighlight:I

    return-void
.end method

.method public setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mItemsTitle:[Ljava/lang/CharSequence;

    .line 242
    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->mItemsMessage:[Ljava/lang/CharSequence;

    .line 243
    iput p3, p0, Lcom/zui/internal/app/MessageController;->mItemsHighlight:I

    return-void
.end method

.method public setShowEmptySpace(Z)V
    .locals 0

    .line 538
    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->mShowEmptySpace:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/zui/internal/app/MessageController;->mType:I

    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 473
    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController;->setupContent(Landroid/view/ViewGroup;)V

    .line 474
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    .line 475
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 478
    iget v1, p0, Lcom/zui/internal/app/MessageController;->mType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 492
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->setupPermissionView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 484
    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->setupEditorView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->setupInformationView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 488
    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->setupWarningView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 497
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 498
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 499
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_5

    .line 501
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    :goto_1
    move v2, v4

    :cond_6
    if-eqz v2, :cond_7

    .line 508
    iget-boolean p1, p0, Lcom/zui/internal/app/MessageController;->mShowEmptySpace:Z

    if-eqz p1, :cond_7

    .line 509
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 511
    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method protected setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 3

    .line 543
    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 544
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mMessage:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 547
    sget v1, Lzui/platform/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->mCustomView:Landroid/view/View;

    new-instance v2, Lcom/zui/internal/app/MessageController$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/zui/internal/app/MessageController$2;-><init>(Lcom/zui/internal/app/MessageController;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public shouldCancelDialog()Z
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
