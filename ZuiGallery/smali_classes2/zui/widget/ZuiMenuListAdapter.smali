.class public Lzui/widget/ZuiMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZuiMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/ZuiMenuListAdapter$MenuContent;,
        Lzui/widget/ZuiMenuListAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

.field private mIsSubmenuClicked:Z

.field private mListItemLayout:I

.field private mMenu:Lcom/zui/internal/menu/MenuBuilder;

.field private mMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzui/widget/ZuiMenuListAdapter$MenuContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p2, p0, Lzui/widget/ZuiMenuListAdapter;->mListItemLayout:I

    return-void
.end method

.method private addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 4

    .line 157
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 158
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 157
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 162
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 163
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 164
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private getValidItemCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private initMenuList(Landroid/view/Menu;Z)V
    .locals 5

    .line 141
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 143
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    new-instance v2, Lzui/widget/ZuiMenuListAdapter$MenuContent;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lzui/widget/ZuiMenuListAdapter$MenuContent;-><init>(Lzui/widget/ZuiMenuListAdapter;ILjava/lang/CharSequence;)V

    .line 146
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 147
    invoke-virtual {v2, v3}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->setHasSubmenu(Z)V

    .line 149
    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {v2, p2}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->setIsSubmenuItem(Z)V

    .line 151
    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 87
    invoke-direct {p0}, Lzui/widget/ZuiMenuListAdapter;->getValidItemCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 97
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzui/widget/ZuiMenuListAdapter$MenuContent;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->getId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMenuId(I)I
    .locals 1

    .line 34
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzui/widget/ZuiMenuListAdapter$MenuContent;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->getId()I

    move-result p1

    :cond_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 104
    iget-object p2, p0, Lzui/widget/ZuiMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 105
    iget v1, p0, Lzui/widget/ZuiMenuListAdapter;->mListItemLayout:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance p3, Lzui/widget/ZuiMenuListAdapter$Holder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lzui/widget/ZuiMenuListAdapter$Holder;-><init>(Lzui/widget/ZuiMenuListAdapter;Lzui/widget/ZuiMenuListAdapter$1;)V

    const v1, 0x1020014

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->label:Landroid/widget/TextView;

    const v1, 0x1020006

    .line 108
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020007

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->arrow:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzui/widget/ZuiMenuListAdapter$Holder;

    .line 114
    :goto_0
    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzui/widget/ZuiMenuListAdapter$MenuContent;

    .line 115
    iget-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->arrow:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->hasSubmenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :cond_1
    iget-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :cond_2
    :goto_1
    iget-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->isSubmenuItem()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 128
    :cond_3
    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public initMenu(Lcom/zui/internal/menu/MenuBuilder;)V
    .locals 3

    .line 41
    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    .line 42
    new-instance p1, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p1, 0x0

    move v0, p1

    .line 43
    :goto_0
    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/internal/menu/MenuBuilder;->putItem(Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    .line 49
    :cond_1
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p0, v0, p1}, Lzui/widget/ZuiMenuListAdapter;->initMenuList(Landroid/view/Menu;Z)V

    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lzui/widget/ZuiMenuListAdapter;->mIsSubmenuClicked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 77
    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    iget-object v3, p0, Lzui/widget/ZuiMenuListAdapter;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/internal/menu/MenuBuilder;->putItem(Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p0, v0, v1}, Lzui/widget/ZuiMenuListAdapter;->initMenuList(Landroid/view/Menu;Z)V

    goto :goto_1

    .line 81
    :cond_1
    iput-boolean v1, p0, Lzui/widget/ZuiMenuListAdapter;->mIsSubmenuClicked:Z

    :goto_1
    return-void
.end method

.method public onItemSelected(I)Z
    .locals 4

    .line 54
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenuList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzui/widget/ZuiMenuListAdapter$MenuContent;

    .line 56
    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->hasSubmenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$MenuContent;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v3, p0, Lzui/widget/ZuiMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    .line 59
    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lzui/widget/ZuiMenuListAdapter;->addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V

    .line 60
    :goto_0
    invoke-interface {p1}, Landroid/view/SubMenu;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-interface {p1, v1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lzui/widget/ZuiMenuListAdapter;->addMenuContent(Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->mCurrentMenu:Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p0, p1, v2}, Lzui/widget/ZuiMenuListAdapter;->initMenuList(Landroid/view/Menu;Z)V

    .line 65
    iput-boolean v2, p0, Lzui/widget/ZuiMenuListAdapter;->mIsSubmenuClicked:Z

    move v1, v2

    goto :goto_1

    .line 67
    :cond_1
    iput-boolean v1, p0, Lzui/widget/ZuiMenuListAdapter;->mIsSubmenuClicked:Z

    :cond_2
    :goto_1
    return v1
.end method
