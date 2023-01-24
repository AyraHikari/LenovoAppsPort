.class public Lcom/zui/internal/menu/SubMenuBuilder;
.super Lcom/zui/internal/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/zui/internal/menu/MenuItemImpl;

.field private mParentMenu:Lcom/zui/internal/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    .line 38
    iput-object p3, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mItem:Lcom/zui/internal/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->collapseItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method dispatchMenuItemSelected(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    .line 82
    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public expandItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->expandItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mItem:Lcom/zui/internal/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/internal/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mItem:Lcom/zui/internal/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/zui/internal/menu/MenuBuilder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getRootMenu()Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/zui/internal/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setCallback(Lcom/zui/internal/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mItem:Lcom/zui/internal/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mItem:Lcom/zui/internal/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->mParentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setShortcutsVisible(Z)V

    return-void
.end method
