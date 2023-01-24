.class public Lzui/widget/BottomTabBar;
.super Landroid/widget/LinearLayout;
.source "BottomTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/BottomTabBar$SelectedStateTracker;,
        Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;,
        Lzui/widget/BottomTabBar$OnSelectionChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_ID:I = -0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BottomTabBar"


# instance fields
.field private mBarHPadding:I

.field private mBarHeight:I

.field protected final mBorderRect:Landroid/graphics/Rect;

.field private mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

.field protected mChildrenRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDividerHeight:I

.field private mEnabledAnim:Z

.field private mFocusedId:I

.field private mHorizontalTouchPadding:I

.field private mIsHorizontal:Z

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mItemTextDisabledColor:I

.field protected mLeftWidth:I

.field protected mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

.field private mPadDivider:Landroid/graphics/drawable/Drawable;

.field private mPassThroughListener:Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;

.field private mProtectFromSelectedChange:Z

.field protected mRightWidth:I

.field protected final mTmpChildRect:Landroid/graphics/Rect;

.field protected final mTmpContainerRect:Landroid/graphics/Rect;

.field private mTouchedChildIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 107
    sget v0, Lzui/platform/R$attr;->bottomTabBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    .line 85
    iput v0, p0, Lzui/widget/BottomTabBar;->mTouchedChildIndex:I

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    .line 87
    iput v1, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    const/4 v2, 0x1

    .line 89
    iput-boolean v2, p0, Lzui/widget/BottomTabBar;->mEnabledAnim:Z

    .line 90
    iput v1, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    .line 96
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    .line 116
    sget-object v2, Lzui/platform/R$styleable;->BottomTabBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 118
    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_colorBackground:I

    .line 119
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lzui/platform/R$color;->bottom_tabbar_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 118
    invoke-virtual {p4, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lzui/widget/BottomTabBar;->setBackgroundColor(I)V

    .line 120
    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_divider:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$drawable;->bottom_toolbar_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mPadDivider:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v2, p0, Lzui/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0, v2}, Lzui/widget/BottomTabBar;->setTopDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lzui/widget/BottomTabBar;->mPadDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lzui/widget/BottomTabBar;->setTopDivider(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_1
    :goto_0
    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_textColor:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    .line 131
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$color;->bottom_tabbar_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 133
    :cond_2
    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_height:I

    invoke-virtual {p4, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->mBarHeight:I

    .line 134
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lzui/platform/R$dimen;->bottom_bar_tab_bar_horizontal_touchPadding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->mHorizontalTouchPadding:I

    .line 136
    sget v0, Lzui/platform/R$styleable;->BottomTabBar_android_layout_margin:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    .line 137
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 139
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/BottomTabBar;->mIsHorizontal:Z

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$color;->bottom_tabbar_item_text_disabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomTabBar;->mItemTextDisabledColor:I

    .line 142
    invoke-direct {p0}, Lzui/widget/BottomTabBar;->init()V

    return-void
.end method

.method static synthetic access$300(Lzui/widget/BottomTabBar;)Lzui/widget/BottomBarItem$OnSelectedListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lzui/widget/BottomTabBar;->mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lzui/widget/BottomTabBar;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    return-void
.end method

.method static synthetic access$500(Lzui/widget/BottomTabBar;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    return p0
.end method

.method static synthetic access$502(Lzui/widget/BottomTabBar;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    return p1
.end method

.method static synthetic access$600(Lzui/widget/BottomTabBar;)I
    .locals 0

    .line 65
    iget p0, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    return p0
.end method

.method static synthetic access$700(Lzui/widget/BottomTabBar;IZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lzui/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    return-void
.end method

.method private activateAnimation(Z)V
    .locals 2

    .line 591
    iget-boolean v0, p0, Lzui/widget/BottomTabBar;->mEnabledAnim:Z

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->clearAnimation()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 598
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lzui/platform/R$anim;->push_up_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lzui/platform/R$anim;->push_down_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 603
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 605
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 607
    invoke-virtual {p0, p1}, Lzui/widget/BottomTabBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private cancelLastItemTouch()V
    .locals 2

    .line 582
    iget v0, p0, Lzui/widget/BottomTabBar;->mTouchedChildIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 583
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    instance-of v1, v0, Lzui/widget/BottomBarItem;

    if-eqz v1, :cond_0

    .line 585
    check-cast v0, Lzui/widget/BottomBarItem;

    invoke-virtual {v0}, Lzui/widget/BottomBarItem;->cancelTouch()V

    :cond_0
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 5

    .line 550
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getRight()I

    move-result v3

    iget v4, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 552
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private getTouchedChildIndex(FF)I
    .locals 4

    const/4 v0, 0x0

    .line 568
    :goto_0
    iget-object v1, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 573
    iget-object v1, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private init()V
    .locals 2

    .line 520
    invoke-direct {p0}, Lzui/widget/BottomTabBar;->initBarHPadding()V

    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->setOrientation(I)V

    .line 522
    new-instance v0, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;-><init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$1;)V

    iput-object v0, p0, Lzui/widget/BottomTabBar;->mPassThroughListener:Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    .line 523
    new-instance v0, Lzui/widget/BottomTabBar$SelectedStateTracker;

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomTabBar$SelectedStateTracker;-><init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$1;)V

    iput-object v0, p0, Lzui/widget/BottomTabBar;->mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    .line 524
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mPassThroughListener:Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private initBarHPadding()V
    .locals 2

    .line 528
    iget-boolean v0, p0, Lzui/widget/BottomTabBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->bottom_bar_tab_bar_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->bottom_bar_tool_bar_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    :goto_0
    return-void
.end method

.method private setFocusedId(I)V
    .locals 1

    .line 536
    iput p1, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    .line 537
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {v0, p0, p1}, Lzui/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Lzui/widget/BottomTabBar;I)V

    :cond_0
    return-void
.end method

.method private setFocusedStateForView(IZ)V
    .locals 1

    .line 543
    invoke-virtual {p0, p1}, Lzui/widget/BottomTabBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 544
    instance-of v0, p1, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_0

    .line 545
    check-cast p1, Lzui/widget/BottomBarItem;

    invoke-virtual {p1, p2}, Lzui/widget/BottomBarItem;->setFocused(Z)V

    :cond_0
    return-void
.end method

.method private updateItemsTextColor()V
    .locals 3

    const/4 v0, 0x0

    .line 557
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 558
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 559
    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    .line 560
    check-cast v1, Lzui/widget/BottomBarItem;

    iget-object v2, p0, Lzui/widget/BottomTabBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 561
    iget v2, p0, Lzui/widget/BottomTabBar;->mItemTextDisabledColor:I

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextDisabledColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 247
    instance-of v0, p1, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_1

    .line 248
    move-object v0, p1

    check-cast v0, Lzui/widget/BottomBarItem;

    .line 249
    invoke-virtual {v0}, Lzui/widget/BottomBarItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 251
    iget v1, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 252
    invoke-direct {p0, v1, v3}, Lzui/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    .line 254
    :cond_0
    iput-boolean v3, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 255
    invoke-virtual {v0}, Lzui/widget/BottomBarItem;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    .line 259
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    .line 204
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->setSelection(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 445
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 446
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 447
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 454
    sget v2, Lzui/platform/R$id;->bottombar_item_container:I

    if-ne v1, v2, :cond_1

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 457
    :cond_1
    invoke-virtual {p0, v1}, Lzui/widget/BottomTabBar;->setSelection(I)V

    :cond_2
    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 413
    invoke-virtual {p0, p1}, Lzui/widget/BottomTabBar;->isMovingOutTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lzui/widget/BottomTabBar;->cancelLastItemTouch()V

    return v1

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lzui/widget/BottomTabBar;->getTouchedChildIndex(FF)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 429
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 431
    instance-of v3, v2, Lzui/widget/BottomBarItem;

    if-eqz v3, :cond_3

    .line 432
    iget v3, p0, Lzui/widget/BottomTabBar;->mTouchedChildIndex:I

    if-eq v0, v3, :cond_2

    .line 433
    invoke-direct {p0}, Lzui/widget/BottomTabBar;->cancelLastItemTouch()V

    .line 435
    :cond_2
    move-object v3, v2

    check-cast v3, Lzui/widget/BottomBarItem;

    iget-object v4, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    .line 436
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 435
    invoke-virtual {v3, v2, p1, v4}, Lzui/widget/BottomBarItem;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    .line 437
    iput v0, p0, Lzui/widget/BottomTabBar;->mTouchedChildIndex:I

    return v1

    .line 440
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enablePushAnimation(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lzui/widget/BottomTabBar;->mEnabledAnim:Z

    return-void
.end method

.method public findItemById(I)Lzui/widget/BottomBarItem;
    .locals 3

    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 266
    check-cast v1, Lzui/widget/BottomBarItem;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 192
    iget v0, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    return v0
.end method

.method protected isMovingOutTouchArea(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 502
    :cond_1
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 508
    iget-object v1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lzui/widget/BottomTabBar;->mHorizontalTouchPadding:I

    add-int/2addr p1, v1

    iget v1, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_3

    iget-object p1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lzui/widget/BottomTabBar;->mHorizontalTouchPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

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

.method public lockTabBar(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    .line 287
    check-cast v1, Lzui/widget/BottomBarItem;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->enableSelect(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 468
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 469
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_bar_tab_bar_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_bar_tool_bar_horizontal_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    .line 474
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar;->drawDivider(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 400
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 401
    invoke-direct {p0}, Lzui/widget/BottomTabBar;->updateItemsTextColor()V

    .line 403
    iget v0, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 404
    iput-boolean v1, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 405
    invoke-direct {p0, v0, v1}, Lzui/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lzui/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 407
    iget v0, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 333
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomTabBar;->getChildCount()I

    move-result v1

    .line 336
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomTabBar;->getPaddingLeft()I

    move-result v2

    sub-int v3, p4, p2

    .line 337
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomTabBar;->getPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 340
    iget v5, v0, Lzui/widget/BottomTabBar;->mLeftWidth:I

    add-int/2addr v2, v5

    iget v5, v0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    add-int/2addr v2, v5

    .line 341
    iget v6, v0, Lzui/widget/BottomTabBar;->mRightWidth:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x8

    if-ge v6, v1, :cond_1

    .line 345
    invoke-virtual {v0, v6}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 346
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    sub-int/2addr v4, v2

    .line 350
    div-int/2addr v4, v7

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-lez v1, :cond_3

    .line 351
    iget v6, v0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    div-int/2addr v3, v7

    goto :goto_2

    :cond_3
    move v3, v5

    .line 354
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomTabBar;->getPaddingTop()I

    move-result v6

    iget v7, v0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v6, v7

    sub-int v7, p5, p3

    .line 355
    invoke-virtual/range {p0 .. p0}, Lzui/widget/BottomTabBar;->getPaddingBottom()I

    move-result v9

    sub-int v9, v7, v9

    iget v10, v0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v9, v10

    move v10, v5

    move v11, v10

    :goto_3
    if-ge v10, v1, :cond_5

    .line 359
    invoke-virtual {v0, v10}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 360
    iget-object v13, v0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 361
    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 362
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v8, :cond_4

    .line 363
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 365
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 366
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 369
    iget-object v5, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    mul-int v16, v4, v11

    add-int v16, v2, v16

    move/from16 v17, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v16, v1

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 370
    iget-object v1, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    add-int/lit8 v5, v11, 0x1

    mul-int v16, v4, v5

    add-int v16, v2, v16

    move/from16 v18, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v16, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 372
    iget-object v1, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 373
    iget-object v1, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v9, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 375
    iget v1, v0, Lzui/widget/BottomTabBar;->mBarHPadding:I

    add-int v2, p2, v1

    mul-int/2addr v11, v3

    add-int/2addr v2, v11

    add-int v1, p2, v1

    mul-int v11, v3, v5

    add-int/2addr v1, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0x11

    .line 380
    iget-object v2, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v11, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {v1, v15, v8, v2, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 383
    iget-object v1, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v1, v2, v8, v11}, Landroid/view/View;->layout(IIII)V

    move v11, v5

    goto :goto_4

    :cond_4
    move/from16 v17, v1

    move/from16 v18, v2

    move v14, v5

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v5, v14

    move/from16 v1, v17

    move/from16 v2, v18

    const/16 v8, 0x8

    goto/16 :goto_3

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 295
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 297
    iput v1, p0, Lzui/widget/BottomTabBar;->mLeftWidth:I

    .line 298
    iput v1, p0, Lzui/widget/BottomTabBar;->mRightWidth:I

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 305
    invoke-virtual {p0, v1}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 306
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v11

    move v7, p1

    move v9, p2

    .line 307
    invoke-virtual/range {v5 .. v10}, Lzui/widget/BottomTabBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 309
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 310
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 313
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    .line 312
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v3, v5

    .line 314
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Lzui/widget/BottomTabBar;->combineMeasuredStates(II)I

    move-result v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget v0, p0, Lzui/widget/BottomTabBar;->mLeftWidth:I

    iget v1, p0, Lzui/widget/BottomTabBar;->mRightWidth:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 320
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 321
    iget v1, p0, Lzui/widget/BottomTabBar;->mBarHeight:I

    if-lez v1, :cond_2

    move v0, v1

    .line 324
    :cond_2
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 326
    invoke-static {v1, p1, v4}, Lzui/widget/BottomTabBar;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v4, 0x10

    .line 327
    invoke-static {v0, p2, v1}, Lzui/widget/BottomTabBar;->resolveSizeAndState(III)I

    move-result p2

    .line 326
    invoke-virtual {p0, p1, p2}, Lzui/widget/BottomTabBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeItemById(I)V
    .locals 3

    const/4 v0, 0x0

    .line 273
    :goto_0
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 274
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->removeViewAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected setChildOnSelectedChangeListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lzui/widget/BottomTabBar;->mChildOnSelectedChangeListener:Lzui/widget/BottomBarItem$OnSelectedListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mPassThroughListener:Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;->access$002(Lzui/widget/BottomTabBar$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setOnSelectoinChangeListener(Lzui/widget/BottomTabBar$OnSelectionChangeListener;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lzui/widget/BottomTabBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 166
    iget v1, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    if-ne p1, v1, :cond_0

    return-void

    .line 170
    :cond_0
    iget v1, p0, Lzui/widget/BottomTabBar;->mFocusedId:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, v1, v2}, Lzui/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, p1, v0}, Lzui/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    .line 178
    :cond_2
    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lzui/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 482
    iput p1, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lzui/widget/BottomTabBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 237
    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->activateAnimation(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->activateAnimation(Z)V

    .line 241
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
