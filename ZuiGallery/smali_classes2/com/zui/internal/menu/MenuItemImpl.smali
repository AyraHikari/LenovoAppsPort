.class final Lcom/zui/internal/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;
    }
.end annotation


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final SHOW_AS_OVERFLOW_ALWAYS:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sLanguage:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/zui/internal/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Lcom/zui/internal/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/zui/internal/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 61
    iput v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 63
    iput v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconResId:I

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 75
    iput-object v1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 76
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTint:Z

    .line 77
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 78
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    const/16 v1, 0x10

    .line 88
    iput v1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    .line 96
    iput v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    .line 101
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 137
    invoke-virtual {p1}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/zui/internal/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/internal/menu/MenuItemImpl;->sLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    sput-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sLanguage:Ljava/lang/String;

    const-string v0, "prepend_shortcut_label"

    const-string v1, ""

    .line 141
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    const-string v0, "menu_enter_shortcut_label"

    .line 143
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    const-string v0, "menu_delete_shortcut_label"

    .line 145
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    const-string v0, "menu_space_shortcut_label"

    .line 147
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    .line 152
    iput p3, p0, Lcom/zui/internal/menu/MenuItemImpl;->mId:I

    .line 153
    iput p2, p0, Lcom/zui/internal/menu/MenuItemImpl;->mGroup:I

    .line 154
    iput p4, p0, Lcom/zui/internal/menu/MenuItemImpl;->mCategoryOrder:I

    .line 155
    iput p5, p0, Lcom/zui/internal/menu/MenuItemImpl;->mOrdering:I

    .line 156
    iput-object p6, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 157
    iput p7, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/internal/menu/MenuItemImpl;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    .line 526
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_3

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 529
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 533
    :cond_1
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    :cond_3
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/zui/internal/menu/MenuItemImpl;)V

    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .line 767
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    .line 776
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 777
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->collapseItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 2

    .line 753
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    .line 758
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 759
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->expandItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 249
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, v0}, Lcom/zui/internal/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 465
    iput v1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconResId:I

    .line 466
    iput-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    invoke-direct {p0, v0}, Lcom/zui/internal/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 218
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 285
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    :goto_0
    return v0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/internal/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_2
    sget-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    :cond_3
    sget-object v0, Lcom/zui/internal/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mSubMenu:Lcom/zui/internal/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getTitleForItemView(Lcom/zui/internal/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 420
    invoke-interface {p1}, Lcom/zui/internal/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .line 790
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mSubMenu:Lcom/zui/internal/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invoke()Z
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 185
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isActionButton()Z
    .locals 2

    .line 650
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 544
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    .line 566
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 197
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .line 562
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 593
    :cond_1
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public requestsActionButton()Z
    .locals 2

    .line 654
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requiresActionButton()Z
    .locals 2

    .line 658
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiresOverflow()Z
    .locals 2

    .line 662
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 728
    new-instance v0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;

    invoke-direct {v0}, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;-><init>()V

    .line 729
    iget-object v1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0, v1}, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->setRealObject(Ljava/lang/Object;)V

    .line 730
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 732
    iput-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 733
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 734
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 735
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz p1, :cond_1

    .line 736
    new-instance v0, Lcom/zui/internal/menu/MenuItemImpl$1;

    invoke-direct {v0, p0}, Lcom/zui/internal/menu/MenuItemImpl$1;-><init>(Lcom/zui/internal/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    :cond_1
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 706
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 707
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    .line 695
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 698
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 700
    :cond_0
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/zui/internal/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 1

    .line 800
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 801
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 259
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 261
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 263
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 270
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 275
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 276
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 278
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 548
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    .line 549
    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 570
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 573
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setCheckedInt(Z)V

    :goto_0
    return-object p0
.end method

.method setCheckedInt(Z)V
    .locals 3

    .line 582
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    .line 583
    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_1

    .line 585
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, v2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 810
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 812
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 202
    iget p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 204
    :cond_0
    iget p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    .line 207
    :goto_0
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 1

    .line 558
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconResId:I

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 488
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 474
    iput v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconResId:I

    .line 475
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 476
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 477
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 495
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTint:Z

    .line 497
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 499
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 511
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 512
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 513
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 515
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 667
    iget p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 669
    :cond_0
    iget p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    :goto_0
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 295
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 297
    :cond_0
    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 299
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 306
    iget-char v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 310
    :cond_0
    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 311
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 313
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 320
    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 321
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 323
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 331
    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 332
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 333
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 334
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 336
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_1
    :goto_0
    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    .line 691
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/zui/internal/menu/MenuItemImpl;)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 747
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method setSubMenu(Lcom/zui/internal/menu/SubMenuBuilder;)V
    .locals 1

    .line 402
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mSubMenu:Lcom/zui/internal/menu/SubMenuBuilder;

    .line 404
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 426
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 428
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 430
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mSubMenu:Lcom/zui/internal/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 446
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 453
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 824
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 826
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    .line 615
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->onItemVisibleChanged(Lcom/zui/internal/menu/MenuItemImpl;)V

    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 3

    .line 606
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    .line 607
    iput p1, p0, Lcom/zui/internal/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public shouldShowIcon()Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .line 674
    iget v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
