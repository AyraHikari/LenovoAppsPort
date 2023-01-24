.class Lzui/widget/SimpleToolbar$MenuPresenter;
.super Ljava/lang/Object;
.source "SimpleToolbar.java"

# interfaces
.implements Lzui/app/FloatDialog$MenuAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SimpleToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuPresenter"
.end annotation


# instance fields
.field private mMenuPopup:Lzui/app/FloatDialog;

.field final synthetic this$0:Lzui/widget/SimpleToolbar;


# direct methods
.method private constructor <init>(Lzui/widget/SimpleToolbar;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$1;)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar$MenuPresenter;-><init>(Lzui/widget/SimpleToolbar;)V

    return-void
.end method

.method private createMenuPopupWindow()Lzui/app/FloatDialog;
    .locals 3

    .line 1053
    new-instance v0, Lzui/app/FloatDialog$Builder;

    iget-object v1, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-virtual {v1}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzui/platform/R$style;->Theme_Zui_FloatDialog_OverflowMenu:I

    invoke-direct {v0, v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1055
    invoke-virtual {v0, p0}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$Builder;

    const/4 v1, 0x1

    .line 1056
    invoke-virtual {v0, v1}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    .line 1057
    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    return-object v0
.end method

.method private showPopupWindow()V
    .locals 6

    .line 1031
    iget-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    if-nez v0, :cond_0

    .line 1032
    invoke-direct {p0}, Lzui/widget/SimpleToolbar$MenuPresenter;->createMenuPopupWindow()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 1036
    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v2}, Lzui/widget/SimpleToolbar;->access$500(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 1037
    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v2}, Lzui/widget/SimpleToolbar;->access$500(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 1039
    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-virtual {v2}, Lzui/widget/SimpleToolbar;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1040
    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-virtual {v2}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lzui/platform/R$dimen;->simple_toolbar_popup_menu_offset_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    .line 1043
    :cond_1
    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-virtual {v2}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lzui/platform/R$dimen;->simple_toolbar_popup_menu_offset_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    const/4 v4, 0x0

    .line 1046
    aget v5, v0, v4

    aget v4, v1, v4

    sub-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 1047
    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-virtual {v1}, Lzui/widget/SimpleToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->simple_toolbar_popup_menu_offset_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1049
    iget-object v1, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v2}, Lzui/widget/SimpleToolbar;->access$500(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0, v3}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;IIZ)V

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 1

    .line 1022
    iget-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Lzui/app/FloatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1024
    iput-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    goto :goto_0

    .line 1026
    :cond_0
    invoke-direct {p0}, Lzui/widget/SimpleToolbar$MenuPresenter;->showPopupWindow()V

    :goto_0
    return-void
.end method

.method public onCreateFloatDialog(Landroid/view/Menu;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x0

    move v0, p2

    .line 996
    :goto_0
    iget-object v1, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v1}, Lzui/widget/SimpleToolbar;->access$200(Lzui/widget/SimpleToolbar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 997
    iget-object v1, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v1}, Lzui/widget/SimpleToolbar;->access$200(Lzui/widget/SimpleToolbar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 998
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    .line 1001
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 1002
    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v5

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1001
    invoke-interface {p1, v3, v4, v5, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    move v3, p2

    .line 1003
    :goto_1
    invoke-interface {v2}, Landroid/view/SubMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1004
    invoke-interface {v2, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1005
    iget-object v5, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v5, v1, v4}, Lzui/widget/SimpleToolbar;->access$300(Lzui/widget/SimpleToolbar;Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1008
    :cond_0
    iget-object v2, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v2, p1, v1}, Lzui/widget/SimpleToolbar;->access$300(Lzui/widget/SimpleToolbar;Landroid/view/Menu;Landroid/view/MenuItem;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFloatDialogItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    .line 1016
    iget-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v0}, Lzui/widget/SimpleToolbar;->access$400(Lzui/widget/SimpleToolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lzui/widget/SimpleToolbar$MenuPresenter;->this$0:Lzui/widget/SimpleToolbar;

    invoke-static {v0}, Lzui/widget/SimpleToolbar;->access$400(Lzui/widget/SimpleToolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
