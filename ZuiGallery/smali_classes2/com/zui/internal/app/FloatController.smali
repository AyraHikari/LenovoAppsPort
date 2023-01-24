.class public Lcom/zui/internal/app/FloatController;
.super Lcom/zui/internal/app/DialogController;
.source "FloatController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/FloatController$FloatParams;
    }
.end annotation


# static fields
.field private static BOTTOM_MARGIN:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final DEFAULT_MASK_WINDOW_BG_COLOR:I

.field private static DIALOG_CORNER_RADIUS:I = 0x0

.field private static DIVIDER_HEIGHT:I = 0x0

.field private static final INVALID_COLOR:I = -0x1

.field private static final INVALID_COORDINATE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static TITLEBAR_HEIGHT:I


# instance fields
.field private mAnchorMaskWinBg:Landroid/graphics/drawable/Drawable;

.field private mAnchorMaskWinLayout:I

.field private mAnchorMaskWindow:Landroid/widget/PopupWindow;

.field mAnimResId:I

.field private mArchorView:Landroid/view/View;

.field private mDialogBgColor:I

.field private mDialogBottomMargin:I

.field private mDialogHeight:I

.field private final mDialogItemPadding:I

.field private mDialogMaxWidth:I

.field private mDialogMinWidth:I

.field private mDialogTopMargin:I

.field private mDialogWidth:I

.field private mExtraOffsetX:I

.field private mExtraOffsetY:I

.field private mGaussBlurRadius:I

.field private mGlobalOffset:Landroid/graphics/Point;

.field private mHideAnchorMaskWin:Z

.field private mInternalAdapter:Lzui/widget/ZuiMenuListAdapter;

.field private mIsHorizontal:Z

.field private mListDivider:Landroid/graphics/drawable/Drawable;

.field private mListView:Landroid/widget/ListView;

.field private mLocationRect:Landroid/graphics/Rect;

.field private mMaskWinBg:Landroid/graphics/drawable/Drawable;

.field private mMaskWinColor:I

.field private mMaxHeight:I

.field private mMaxHorizontalHeight:I

.field private mMenu:Lcom/zui/internal/menu/MenuBuilder;

.field private mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

.field private mShadowPadding:I

.field private mStartX:I

.field private mStartY:I

.field private final mStatusbarHeight:I

.field private final mStatusbarHeightHorizontal:I

.field private mUseSystemStyle:Z

.field private mVerticalPadding:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-class v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/app/FloatController;->TAG:Ljava/lang/String;

    const/16 v0, 0xe6

    const/16 v1, 0xfa

    .line 61
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/zui/internal/app/FloatController;->DEFAULT_MASK_WINDOW_BG_COLOR:I

    const/4 v0, 0x0

    .line 66
    sput v0, Lcom/zui/internal/app/FloatController;->DIVIDER_HEIGHT:I

    .line 67
    sput v0, Lcom/zui/internal/app/FloatController;->BOTTOM_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/internal/app/DialogController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    const/4 p2, -0x1

    .line 74
    iput p2, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    .line 75
    iput p2, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    .line 79
    iput p2, p0, Lcom/zui/internal/app/FloatController;->mGaussBlurRadius:I

    .line 80
    iput p2, p0, Lcom/zui/internal/app/FloatController;->mMaskWinColor:I

    const/4 p2, 0x0

    .line 340
    iput p2, p0, Lcom/zui/internal/app/FloatController;->mAnimResId:I

    .line 109
    sget-object p3, Lzui/platform/R$styleable;->FloatDialog:[I

    sget v0, Lzui/platform/R$attr;->floatDialogStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 111
    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_layout:I

    sget v1, Lzui/platform/R$layout;->float_dialog:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mLayout:I

    .line 114
    sget v0, Lzui/platform/R$styleable;->FloatDialog_listItemLayoutX:I

    sget v1, Lzui/platform/R$layout;->select_dialog_item_left_alignment:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mListItemLayout:I

    .line 116
    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_listDivider:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mListDivider:Landroid/graphics/drawable/Drawable;

    .line 117
    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_maxHeight:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_max_height_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 117
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mMaxHeight:I

    .line 120
    sget v0, Lzui/platform/R$styleable;->FloatDialog_verticalPadding:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_vertical_padding_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 120
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    .line 123
    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_minWidth:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_min_width_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogMinWidth:I

    .line 126
    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    .line 127
    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_maxWidth:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_max_width_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogMaxWidth:I

    .line 130
    sget v0, Lzui/platform/R$styleable;->FloatDialog_topMargin:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_top_margin_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 130
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogTopMargin:I

    .line 133
    sget v0, Lzui/platform/R$styleable;->FloatDialog_bottomMargin:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_top_margin_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogBottomMargin:I

    .line 136
    sget v0, Lzui/platform/R$styleable;->FloatDialog_anchorMaskWinLayout:I

    sget v1, Lzui/platform/R$layout;->float_dialog_anchor_mask_window:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWinLayout:I

    .line 138
    sget v0, Lzui/platform/R$styleable;->FloatDialog_maskWinBackground:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mMaskWinBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$drawable;->float_dialog_mask_window_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mMaskWinBg:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_0
    sget v0, Lzui/platform/R$styleable;->FloatDialog_dialogBackgroundColor:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->float_dialog_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 143
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogBgColor:I

    .line 145
    sget v0, Lzui/platform/R$styleable;->FloatDialog_shadowPadding:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_shadow_padding_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    .line 148
    sget v0, Lzui/platform/R$styleable;->FloatDialog_listItemPadding:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_item_padding_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 148
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogItemPadding:I

    .line 151
    sget v0, Lzui/platform/R$styleable;->FloatDialog_cornerRadiusZui:I

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->common_corner_radius_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 151
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sput v0, Lcom/zui/internal/app/FloatController;->DIALOG_CORNER_RADIUS:I

    .line 153
    new-instance v0, Lzui/widget/ZuiMenuListAdapter;

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mListItemLayout:I

    invoke-direct {v0, p1, v1}, Lzui/widget/ZuiMenuListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mInternalAdapter:Lzui/widget/ZuiMenuListAdapter;

    .line 154
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 160
    :cond_1
    sget p3, Lzui/platform/R$dimen;->action_bar_default_height_zui:I

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sput p3, Lcom/zui/internal/app/FloatController;->TITLEBAR_HEIGHT:I

    const-string p3, "status_bar_height"

    .line 163
    invoke-static {p3, p2}, Lzui/util/CommonUtils;->getAndroidInternalResDimision(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/FloatController;->mStatusbarHeight:I

    const-string p3, "status_bar_height_landscape"

    .line 164
    invoke-static {p3, p2}, Lzui/util/CommonUtils;->getAndroidInternalResDimision(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/FloatController;->mStatusbarHeightHorizontal:I

    .line 166
    iget-object p2, p0, Lcom/zui/internal/app/FloatController;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 167
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sput p2, Lcom/zui/internal/app/FloatController;->DIVIDER_HEIGHT:I

    .line 169
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->float_dialog_max_height_zui_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/FloatController;->mMaxHorizontalHeight:I

    const-string p2, "window"

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/internal/app/FloatController;)Landroid/graphics/Rect;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/zui/internal/app/FloatController;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->mUseSystemStyle:Z

    return p1
.end method

.method static synthetic access$102(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/zui/internal/app/FloatController;->mGaussBlurRadius:I

    return p1
.end method

.method static synthetic access$1102(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/zui/internal/app/FloatController;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$1202(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/zui/internal/app/FloatController;->mDialogMaxWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/zui/internal/app/FloatController;->mMaskWinColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/zui/internal/app/FloatController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWinBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zui/internal/app/FloatController;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->mArchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zui/internal/app/FloatController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mArchorView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zui/internal/app/FloatController;)Lzui/app/FloatDialog$MenuAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/zui/internal/app/FloatController;Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$MenuAdapter;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    return-object p1
.end method

.method static synthetic access$602(Lcom/zui/internal/app/FloatController;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mGlobalOffset:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$702(Lcom/zui/internal/app/FloatController;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->mHideAnchorMaskWin:Z

    return p1
.end method

.method static synthetic access$800(Lcom/zui/internal/app/FloatController;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$802(Lcom/zui/internal/app/FloatController;Lcom/zui/internal/menu/MenuBuilder;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zui/internal/app/FloatController;)Lzui/widget/ZuiMenuListAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->mInternalAdapter:Lzui/widget/ZuiMenuListAdapter;

    return-object p0
.end method

.method private addRoundCorner(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 296
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 299
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 300
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 p3, 0x1

    .line 301
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 302
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const p3, -0x777778

    .line 303
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    sget p3, Lcom/zui/internal/app/FloatController;->DIALOG_CORNER_RADIUS:I

    int-to-float v3, p3

    int-to-float p3, p3

    invoke-virtual {v1, p2, v3, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 305
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p2, 0x0

    .line 306
    invoke-virtual {v1, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 307
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private addShadow(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mMaskWinBg:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 318
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr p2, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 320
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    iget-object v2, p0, Lcom/zui/internal/app/FloatController;->mMaskWinBg:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    .line 323
    invoke-virtual {v2, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    .line 326
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 327
    iget p3, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    int-to-float v2, p3

    int-to-float p3, p3

    invoke-virtual {v1, p1, v2, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 328
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/zui/internal/app/FloatController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 334
    :cond_0
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/zui/internal/app/FloatController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private adjustDialogPosition()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 372
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 373
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 374
    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->mIsHorizontal:Z

    if-eqz v1, :cond_0

    .line 375
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    iget v2, p0, Lcom/zui/internal/app/FloatController;->mStatusbarHeightHorizontal:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 377
    :cond_0
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    iget v2, p0, Lcom/zui/internal/app/FloatController;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 379
    :goto_0
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 380
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 381
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private calculateDialogHeight(IZ)I
    .locals 6

    .line 464
    invoke-virtual {p0}, Lcom/zui/internal/app/FloatController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 465
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mMaxHeight:I

    .line 468
    invoke-direct {p0, p1}, Lcom/zui/internal/app/FloatController;->needShortenDialog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    sget v1, Lcom/zui/internal/app/FloatController;->TITLEBAR_HEIGHT:I

    sub-int v1, p1, v1

    :cond_0
    if-eqz p2, :cond_1

    .line 472
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mMaxHorizontalHeight:I

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_4

    .line 475
    iget-object p2, p0, Lcom/zui/internal/app/FloatController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_4

    move p2, p1

    move v2, p2

    .line 476
    :goto_0
    iget-object v3, p0, Lcom/zui/internal/app/FloatController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 477
    iget-object v3, p0, Lcom/zui/internal/app/FloatController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 479
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 480
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 479
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 484
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget v5, Lcom/zui/internal/app/FloatController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    if-le v2, v1, :cond_2

    .line 486
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sget p2, Lcom/zui/internal/app/FloatController;->DIVIDER_HEIGHT:I

    add-int/2addr p1, p2

    sub-int p1, v2, p1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p1, v2

    .line 493
    :cond_4
    :goto_1
    iget p2, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    sget v0, Lcom/zui/internal/app/FloatController;->BOTTOM_MARGIN:I

    sub-int/2addr p1, v0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method private calculateDialogWidth()I
    .locals 7

    .line 499
    invoke-virtual {p0}, Lcom/zui/internal/app/FloatController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 502
    iget-object v2, p0, Lcom/zui/internal/app/FloatController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    move v2, v1

    move v3, v2

    .line 503
    :goto_0
    iget-object v4, p0, Lcom/zui/internal/app/FloatController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 504
    iget-object v4, p0, Lcom/zui/internal/app/FloatController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 506
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 507
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 506
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 509
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 515
    :cond_2
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mDialogItemPadding:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/zui/internal/app/FloatController;->mDialogMinWidth:I

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 518
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mDialogMaxWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    return v3
.end method

.method private calculateStartPosition(I)V
    .locals 9

    .line 385
    iget p1, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    .line 388
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 390
    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->mIsHorizontal:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 391
    iget v3, p0, Lcom/zui/internal/app/FloatController;->mStatusbarHeight:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/zui/internal/app/FloatController;->mStatusbarHeightHorizontal:I

    .line 392
    :goto_0
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x0

    if-nez v1, :cond_1

    iget-boolean v6, p0, Lcom/zui/internal/app/FloatController;->mUseSystemStyle:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/zui/internal/app/FloatController;->calculateDialogHeight(IZ)I

    move-result v2

    iput v2, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    if-nez v1, :cond_3

    .line 393
    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->mUseSystemStyle:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 450
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    .line 451
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v0, Lcom/zui/internal/app/FloatController;->TITLEBAR_HEIGHT:I

    sub-int/2addr p1, v0

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    add-int/2addr p1, v3

    iput p1, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    const/high16 p1, 0x3f000000    # 0.5f

    move v7, p1

    goto/16 :goto_6

    .line 394
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 395
    iget-object v2, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 401
    iget v4, p0, Lcom/zui/internal/app/FloatController;->mExtraOffsetX:I

    if-eqz v4, :cond_4

    add-int/2addr v1, v4

    .line 404
    :cond_4
    iget v4, p0, Lcom/zui/internal/app/FloatController;->mExtraOffsetY:I

    if-eqz v4, :cond_5

    add-int/2addr v2, v4

    .line 407
    :cond_5
    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    .line 409
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mGlobalOffset:Landroid/graphics/Point;

    if-eqz v1, :cond_6

    .line 410
    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    .line 412
    :cond_6
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    add-int/lit8 v6, v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-ge v1, v6, :cond_7

    add-int/2addr v4, v5

    .line 413
    iput v4, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    goto :goto_3

    :cond_7
    add-int/2addr v1, p1

    add-int/2addr v1, v4

    .line 414
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v4, :cond_9

    .line 415
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    .line 416
    iget p1, p0, Lcom/zui/internal/app/FloatController;->mExtraOffsetX:I

    if-gez p1, :cond_8

    add-int/2addr v1, p1

    .line 417
    iput v1, p0, Lcom/zui/internal/app/FloatController;->mStartX:I

    :cond_8
    move p1, v7

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v8

    .line 425
    :goto_4
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    add-int/2addr v1, v2

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mDialogBottomMargin:I

    add-int/2addr v1, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v4, :cond_a

    .line 426
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    goto :goto_5

    .line 427
    :cond_a
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mDialogTopMargin:I

    sub-int/2addr v1, v4

    if-lez v1, :cond_b

    .line 428
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    goto :goto_6

    .line 434
    :cond_b
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1}, Lcom/zui/internal/app/FloatController;->needShortenDialog(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->mUseSystemStyle:Z

    if-nez v1, :cond_c

    .line 436
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v1, Lcom/zui/internal/app/FloatController;->TITLEBAR_HEIGHT:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    goto :goto_5

    .line 440
    :cond_c
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_d

    .line 441
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mVerticalPadding:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    goto :goto_5

    .line 444
    :cond_d
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogBottomMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mStartY:I

    :goto_5
    move v7, v8

    .line 460
    :goto_6
    invoke-direct {p0, p1, v7}, Lcom/zui/internal/app/FloatController;->setFloatAnimation(FF)V

    return-void
.end method

.method private createAnchorMaskWindow()V
    .locals 3

    .line 533
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    .line 534
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWinLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 536
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 537
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 538
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 539
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 540
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWinBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/zui/internal/app/FloatController;->DEFAULT_MASK_WINDOW_BG_COLOR:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private generateDefaultBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .line 282
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    .line 283
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr v2, v0

    mul-int/2addr v1, v2

    .line 284
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 286
    iget v4, p0, Lcom/zui/internal/app/FloatController;->mDialogBgColor:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/zui/internal/app/FloatController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    sub-int/2addr v5, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 289
    invoke-static {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private hideAnchorMaskWindow()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 567
    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private needShortenDialog(I)Z
    .locals 2

    .line 524
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mMaxHeight:I

    sget v1, Lcom/zui/internal/app/FloatController;->TITLEBAR_HEIGHT:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private removeShadowPadding()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget v1, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private setFloatAnimation(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    cmpl-float p1, p2, v0

    if-nez p1, :cond_1

    .line 354
    sget p1, Lzui/platform/R$style;->FloatDialogRightBottomAnim:I

    goto :goto_0

    .line 356
    :cond_1
    sget p1, Lzui/platform/R$style;->FloatDialogRightTopAnim:I

    goto :goto_0

    :cond_2
    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    .line 360
    sget p1, Lzui/platform/R$style;->FloatDialogLeftBottomAnim:I

    goto :goto_0

    .line 362
    :cond_3
    sget p1, Lzui/platform/R$style;->FloatDialogLeftTopAnim:I

    .line 366
    :goto_0
    iput p1, p0, Lcom/zui/internal/app/FloatController;->mAnimResId:I

    return-void
.end method

.method private showAnchorMaskWindow()V
    .locals 5

    .line 549
    iget-boolean v0, p0, Lcom/zui/internal/app/FloatController;->mHideAnchorMaskWin:Z

    if-eqz v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->createAnchorMaskWindow()V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mAnchorMaskWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public beforeShow(Landroid/graphics/Rect;)V
    .locals 4

    .line 237
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mLocationRect:Landroid/graphics/Rect;

    .line 238
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 239
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->calculateDialogWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    .line 240
    invoke-direct {p0, p1}, Lcom/zui/internal/app/FloatController;->calculateStartPosition(I)V

    .line 242
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->generateDefaultBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    invoke-direct {p0, p1, v0, v2}, Lcom/zui/internal/app/FloatController;->addRoundCorner(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/zui/internal/app/FloatController;->mDialogWidth:I

    iget v2, p0, Lcom/zui/internal/app/FloatController;->mShadowPadding:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    invoke-direct {p0, p1, v1, v3}, Lcom/zui/internal/app/FloatController;->addShadow(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAllowedMaxHeight()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/zui/internal/app/FloatController;->mDialogHeight:I

    return v0
.end method

.method public hideArchorView(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->mHideAnchorMaskWin:Z

    return-void
.end method

.method public installContent()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->installContent()V

    .line 183
    invoke-virtual {p0}, Lcom/zui/internal/app/FloatController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->removeShadowPadding()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 195
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mInternalAdapter:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p1, p2}, Lzui/widget/ZuiMenuListAdapter;->onItemSelected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/internal/app/FloatController$1;

    invoke-direct {p2, p0}, Lcom/zui/internal/app/FloatController$1;-><init>(Lcom/zui/internal/app/FloatController;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mInternalAdapter:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {v1, p2}, Lzui/widget/ZuiMenuListAdapter;->getMenuId(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lzui/app/FloatDialog$MenuAdapter;->onFloatDialogItemSelected(Landroid/view/MenuItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public postCreate()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 214
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    .line 215
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 216
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public postShow(Landroid/graphics/Rect;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->adjustDialogPosition()V

    .line 222
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->showAnchorMaskWindow()V

    .line 223
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->mWindow:Landroid/view/Window;

    iget v0, p0, Lcom/zui/internal/app/FloatController;->mAnimResId:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public postStop()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->hideAnchorMaskWindow()V

    .line 228
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->mInternalAdapter:Lzui/widget/ZuiMenuListAdapter;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lzui/widget/ZuiMenuListAdapter;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setArchorView(Landroid/view/View;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mArchorView:Landroid/view/View;

    return-void
.end method

.method public setGlobalOffset(Landroid/graphics/Point;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->mGlobalOffset:Landroid/graphics/Point;

    return-void
.end method

.method public setOrientation(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->mIsHorizontal:Z

    return-void
.end method

.method public setPositionOffset(II)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/zui/internal/app/FloatController;->mExtraOffsetX:I

    .line 273
    iput p2, p0, Lcom/zui/internal/app/FloatController;->mExtraOffsetY:I

    return-void
.end method
