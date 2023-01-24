.class Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;
.super Ljava/lang/Object;
.source "ZuiAppcompatToolbar.java"

# interfaces
.implements Lzui/app/FloatDialog$MenuAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/widget/ZuiAppcompatToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuPresenter"
.end annotation


# instance fields
.field private mActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Landroid/view/Menu;

.field private mMenuPopup:Lzui/app/FloatDialog;

.field final synthetic this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;


# direct methods
.method private constructor <init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V

    return-void
.end method

.method static synthetic access$300(Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;Landroid/view/Menu;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->initMenu(Landroid/view/Menu;)V

    return-void
.end method

.method private addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 4

    .line 363
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 364
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 363
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 368
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 369
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 370
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private createMenuPopupWindow()Lzui/app/FloatDialog;
    .locals 3

    .line 350
    new-instance v0, Lzui/app/FloatDialog$Builder;

    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$800(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lzui/platform/R$style;->Theme_Zui_FloatDialog_OverflowMenu:I

    invoke-direct {v0, v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 352
    invoke-virtual {v0, p0}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$Builder;

    const/4 v1, 0x1

    .line 353
    invoke-virtual {v0, v1}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    .line 354
    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    return-object v0
.end method

.method private getActionMenuList(Landroid/view/Menu;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    instance-of v1, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 377
    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    :try_start_0
    const-string v1, "androidx.appcompat.view.menu.MenuBuilder"

    .line 379
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActionItems"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 380
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 383
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 384
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 385
    check-cast p1, Ljava/util/ArrayList;

    .line 386
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 387
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :catch_0
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v1, "not allow to invoke getActionItems!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    :catch_1
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v1, "not allow to access getActionItems!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    :catch_2
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v1, "find getActionItems failed!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    :catch_3
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v1, "get menubuilder class failed!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v0
.end method

.method private initMenu(Landroid/view/Menu;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenu:Landroid/view/Menu;

    .line 359
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->getActionMenuList(Landroid/view/Menu;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mActionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public hidePopupWindow()V
    .locals 1

    .line 345
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Lzui/app/FloatDialog;->hide()V

    return-void
.end method

.method public onCreateFloatDialog(Landroid/view/Menu;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x0

    move v0, p2

    .line 313
    :goto_0
    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 314
    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    .line 318
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 319
    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v5

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 318
    invoke-interface {p1, v3, v4, v5, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    move v3, p2

    .line 320
    :goto_1
    invoke-interface {v2}, Landroid/view/SubMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 321
    invoke-interface {v2, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 322
    invoke-direct {p0, v1, v4}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    :cond_0
    invoke-direct {p0, p1, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFloatDialogItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$500(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    return-void
.end method

.method public showPopupWindow()V
    .locals 5

    .line 337
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->createMenuPopupWindow()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    .line 340
    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->mMenuPopup:Lzui/app/FloatDialog;

    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$MenuPresenter;->this$0:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$600(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    .line 341
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->access$700()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 340
    invoke-virtual {v0, v1, v2, v3, v4}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;IIZ)V

    return-void
.end method
