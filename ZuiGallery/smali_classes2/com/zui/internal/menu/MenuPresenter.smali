.class interface abstract Lcom/zui/internal/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lcom/zui/internal/menu/MenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/zui/internal/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/zui/internal/menu/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lcom/zui/internal/menu/SubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lcom/zui/internal/menu/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
