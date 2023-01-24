.class public Lcom/zui/internal/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/menu/MenuBuilder$ItemInvoker;,
        Lcom/zui/internal/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final CATEGORY_MASK:I = -0x10000

.field private static final CATEGORY_SHIFT:I = 0x10

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final USER_MASK:I = 0xffff

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/zui/internal/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/zui/internal/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/internal/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 62
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/internal/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 148
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 149
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 151
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 153
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsClosing:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 193
    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 202
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 204
    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .line 411
    invoke-static {p3}, Lcom/zui/internal/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    .line 413
    iget v6, p0, Lcom/zui/internal/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/internal/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/zui/internal/menu/MenuItemImpl;

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/zui/internal/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_0

    .line 418
    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 421
    :cond_0
    iget-object p2, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {p2, v7}, Lcom/zui/internal/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 422
    invoke-virtual {p0, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p1
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/zui/internal/menu/MenuItemImpl;
    .locals 9

    .line 430
    new-instance v8, Lcom/zui/internal/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/zui/internal/menu/MenuItemImpl;-><init>(Lcom/zui/internal/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 257
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 258
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    invoke-interface {v2, p1}, Lcom/zui/internal/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android:menu:presenters"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 316
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 319
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_2
    invoke-interface {v2}, Lcom/zui/internal/menu/MenuPresenter;->getId()I

    move-result v1

    if-lez v1, :cond_1

    .line 325
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 327
    invoke-interface {v2, v1}, Lcom/zui/internal/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 296
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_2
    invoke-interface {v3}, Lcom/zui/internal/menu/MenuPresenter;->getId()I

    move-result v2

    if-lez v2, :cond_1

    .line 302
    invoke-interface {v3}, Lcom/zui/internal/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 304
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "android:menu:presenters"

    .line 310
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method private dispatchSubMenuSelected(Lcom/zui/internal/menu/SubMenuBuilder;Lcom/zui/internal/menu/MenuPresenter;)Z
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 276
    invoke-interface {p2, p1}, Lcom/zui/internal/menu/MenuPresenter;->onSubMenuSelected(Lcom/zui/internal/menu/SubMenuBuilder;)Z

    move-result v1

    .line 279
    :cond_1
    iget-object p2, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 280
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    .line 284
    invoke-interface {v2, p1}, Lcom/zui/internal/menu/MenuPresenter;->onSubMenuSelected(Lcom/zui/internal/menu/SubMenuBuilder;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 788
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/internal/menu/MenuItemImpl;

    .line 789
    invoke-virtual {v1}, Lcom/zui/internal/menu/MenuItemImpl;->getOrdering()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getOrdering(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    .line 722
    sget-object v1, Lcom/zui/internal/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 726
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 723
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeItemAtInt(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 542
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1147
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 1150
    iput-object p5, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1153
    iput-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1154
    iput-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    .line 1157
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1159
    iput-object p2, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 1163
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 1165
    iput-object p4, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1169
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    .line 1173
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 753
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_0

    const-string p1, "config_showMenuShortcutsWhenKeyboardPresent"

    .line 754
    invoke-static {p1, v1}, Lzui/util/CommonUtils;->getAndroidInternalResBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mShortcutsVisible:Z

    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/internal/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 443
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/internal/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 480
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 483
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 486
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 490
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 491
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 493
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/zui/internal/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 497
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 498
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 499
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_3

    .line 500
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addMenuPresenter(Lcom/zui/internal/menu/MenuPresenter;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->addMenuPresenter(Lcom/zui/internal/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method public addMenuPresenter(Lcom/zui/internal/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p1, p2, p0}, Lcom/zui/internal/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/zui/internal/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/internal/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 467
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/internal/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lcom/zui/internal/menu/MenuItemImpl;

    .line 468
    new-instance p2, Lcom/zui/internal/menu/SubMenuBuilder;

    iget-object p3, p0, Lcom/zui/internal/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lcom/zui/internal/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)V

    .line 469
    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuItemImpl;->setSubMenu(Lcom/zui/internal/menu/SubMenuBuilder;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public changeMenuMode()V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mCallback:Lcom/zui/internal/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 782
    invoke-interface {v0, p0}, Lcom/zui/internal/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/zui/internal/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mExpandedItem:Lcom/zui/internal/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Lcom/zui/internal/menu/MenuBuilder;->collapseItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 564
    invoke-virtual {p0, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearAll()V
    .locals 2

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 551
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->clear()V

    .line 552
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->clearHeader()V

    const/4 v1, 0x0

    .line 553
    iput-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 554
    iput-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 555
    invoke-virtual {p0, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1138
    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1139
    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1140
    iput-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    .line 1142
    invoke-virtual {p0, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, v0}, Lcom/zui/internal/menu/MenuBuilder;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .locals 3

    .line 961
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 963
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsClosing:Z

    .line 964
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 965
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v2, :cond_1

    .line 967
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 969
    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/zui/internal/menu/MenuPresenter;->onCloseMenu(Lcom/zui/internal/menu/MenuBuilder;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 972
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsClosing:Z

    return-void
.end method

.method public collapseItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z
    .locals 4

    .line 1298
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mExpandedItem:Lcom/zui/internal/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1303
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1304
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v3, :cond_2

    .line 1306
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1307
    :cond_2
    invoke-interface {v3, p0, p1}, Lcom/zui/internal/menu/MenuPresenter;->collapseItemActionView(Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    :cond_3
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    .line 1314
    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mExpandedItem:Lcom/zui/internal/menu/MenuItemImpl;

    :cond_4
    :goto_1
    return v1
.end method

.method dispatchMenuItemSelected(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mCallback:Lcom/zui/internal/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public expandItemActionView(Lcom/zui/internal/menu/MenuItemImpl;)Z
    .locals 4

    .line 1276
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1281
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1282
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v3, :cond_2

    .line 1284
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1285
    :cond_2
    invoke-interface {v3, p0, p1}, Lcom/zui/internal/menu/MenuPresenter;->expandItemActionView(Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    :cond_3
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_4

    .line 1292
    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mExpandedItem:Lcom/zui/internal/menu/MenuItemImpl;

    :cond_4
    return v1
.end method

.method public findGroupIndex(I)I
    .locals 1

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .locals 2

    .line 672
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 679
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/internal/menu/MenuItemImpl;

    .line 681
    invoke-virtual {v1}, Lcom/zui/internal/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 637
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 639
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuItemImpl;

    .line 640
    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    .line 642
    :cond_0
    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findItemIndex(I)I
    .locals 3

    .line 655
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 658
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuItemImpl;

    .line 659
    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/zui/internal/menu/MenuItemImpl;
    .locals 11

    .line 867
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 868
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 871
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 875
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 876
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 878
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 881
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    .line 883
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/internal/menu/MenuItemImpl;

    return-object p1

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, p2, :cond_7

    .line 890
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/internal/menu/MenuItemImpl;

    if-eqz v4, :cond_2

    .line 891
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    .line 892
    :cond_2
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v8

    .line 893
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-ne v8, v9, :cond_3

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    .line 821
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    .line 822
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 824
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    .line 831
    :cond_0
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_7

    .line 833
    iget-object v7, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/internal/menu/MenuItemImpl;

    .line 834
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 835
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/zui/internal/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 838
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v8

    :goto_1
    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v9

    :goto_2
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    .line 843
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-eq v8, v9, :cond_5

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_5

    if-eqz v0, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    if-ne p2, v4, :cond_6

    .line 848
    :cond_5
    invoke-virtual {v7}, Lcom/zui/internal/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 849
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public flagActionItems()V
    .locals 6

    .line 1088
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1090
    iget-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v1, :cond_0

    return-void

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1097
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/internal/menu/MenuPresenter;

    if-nez v5, :cond_1

    .line 1099
    iget-object v5, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1101
    :cond_1
    invoke-interface {v5}, Lcom/zui/internal/menu/MenuPresenter;->flagActionItems()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 1106
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1107
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    .line 1110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/internal/menu/MenuItemImpl;

    .line 1111
    invoke-virtual {v4}, Lcom/zui/internal/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1112
    iget-object v5, p0, Lcom/zui/internal/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1114
    :cond_3
    iget-object v5, p0, Lcom/zui/internal/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1120
    :cond_4
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1121
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1122
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1124
    :cond_5
    iput-boolean v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1128
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->flagActionItems()V

    .line 1129
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/zui/internal/menu/MenuItemImpl;
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mExpandedItem:Lcom/zui/internal/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1133
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->flagActionItems()V

    .line 1134
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .line 1272
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/internal/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1043
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1048
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1051
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/MenuItemImpl;

    .line 1052
    invoke-virtual {v3}, Lcom/zui/internal/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zui/internal/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    :cond_2
    iput-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    const/4 v0, 0x1

    .line 1056
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1058
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .line 624
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 627
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/MenuItemImpl;

    .line 628
    invoke-virtual {v3}, Lcom/zui/internal/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method isQwertyMode()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 699
    invoke-virtual {p0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/zui/internal/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/zui/internal/menu/MenuItemImpl;)V
    .locals 0

    const/4 p1, 0x1

    .line 1037
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1038
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method onItemVisibleChanged(Lcom/zui/internal/menu/MenuItemImpl;)V
    .locals 0

    const/4 p1, 0x1

    .line 1027
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1028
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2

    .line 988
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 990
    iput-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 991
    iput-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 994
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_0

    .line 996
    :cond_1
    iput-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :goto_0
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 907
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 911
    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/internal/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/zui/internal/menu/MenuPresenter;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Lcom/zui/internal/menu/MenuPresenter;I)Z
    .locals 5

    .line 915
    move-object v0, p1

    check-cast v0, Lcom/zui/internal/menu/MenuItemImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 917
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 921
    :cond_0
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->invoke()Z

    move-result v2

    .line 923
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 924
    invoke-virtual {p1}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 925
    :cond_1
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 926
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v2, p1

    if-eqz v2, :cond_7

    .line 928
    invoke-virtual {p0, v3}, Lcom/zui/internal/menu/MenuBuilder;->close(Z)V

    goto :goto_1

    .line 930
    :cond_2
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_7

    .line 945
    invoke-virtual {p0, v3}, Lcom/zui/internal/menu/MenuBuilder;->close(Z)V

    goto :goto_1

    .line 931
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_5

    .line 932
    new-instance p3, Lcom/zui/internal/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p3, v4, p0, v0}, Lcom/zui/internal/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/MenuItemImpl;)V

    invoke-virtual {v0, p3}, Lcom/zui/internal/menu/MenuItemImpl;->setSubMenu(Lcom/zui/internal/menu/SubMenuBuilder;)V

    .line 935
    :cond_5
    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p3

    check-cast p3, Lcom/zui/internal/menu/SubMenuBuilder;

    if-eqz v1, :cond_6

    .line 937
    invoke-virtual {p1, p3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 939
    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/zui/internal/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/zui/internal/menu/SubMenuBuilder;Lcom/zui/internal/menu/MenuPresenter;)Z

    move-result p1

    or-int/2addr v2, p1

    if-nez v2, :cond_7

    .line 941
    invoke-virtual {p0, v3}, Lcom/zui/internal/menu/MenuBuilder;->close(Z)V

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 798
    invoke-virtual {p0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/zui/internal/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p0, p1, p3}, Lcom/zui/internal/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 807
    invoke-virtual {p0, p2}, Lcom/zui/internal/menu/MenuBuilder;->close(Z)V

    :cond_1
    return p1
.end method

.method public putItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 451
    instance-of v0, p1, Lcom/zui/internal/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    check-cast p1, Lcom/zui/internal/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 454
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item should be com.zui.internal.menu.MenuItemImpl!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeGroup(I)V
    .locals 5

    .line 512
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 515
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    .line 517
    iget-object v3, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/zui/internal/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 519
    invoke-direct {p0, v0, v2}, Lcom/zui/internal/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 523
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 508
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->removeItemAtInt(IZ)V

    return-void
.end method

.method public removeItemAt(I)V
    .locals 1

    const/4 v0, 0x1

    .line 546
    invoke-direct {p0, p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->removeItemAtInt(IZ)V

    return-void
.end method

.method public removeMenuPresenter(Lcom/zui/internal/menu/MenuPresenter;)V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 246
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuPresenter;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 379
    invoke-virtual {p0, v2}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 380
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 382
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 384
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/SubMenuBuilder;

    .line 386
    invoke-virtual {v3, p1}, Lcom/zui/internal/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "android:menu:expandedactionview"

    .line 390
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 392
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    .line 345
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 347
    invoke-virtual {p0, v2}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 348
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    .line 351
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 353
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 354
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const-string v5, "android:menu:expandedactionview"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/zui/internal/menu/SubMenuBuilder;

    .line 360
    invoke-virtual {v3, p1}, Lcom/zui/internal/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 365
    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallback(Lcom/zui/internal/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mCallback:Lcom/zui/internal/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    .line 208
    iput p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mDefaultShowAsAction:I

    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 6

    .line 568
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 572
    iget-object v4, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/internal/menu/MenuItemImpl;

    .line 573
    invoke-virtual {v4}, Lcom/zui/internal/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 574
    invoke-virtual {v4}, Lcom/zui/internal/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 575
    :cond_0
    invoke-virtual {v4}, Lcom/zui/internal/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    .line 578
    :goto_1
    invoke-virtual {v4, v5}, Lcom/zui/internal/menu/MenuItemImpl;->setCheckedInt(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 587
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuItemImpl;

    .line 588
    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 589
    invoke-virtual {v2, p3}, Lcom/zui/internal/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 590
    invoke-virtual {v2, p2}, Lcom/zui/internal/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 616
    iget-object v2, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/menu/MenuItemImpl;

    .line 617
    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 618
    invoke-virtual {v2, p2}, Lcom/zui/internal/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .line 596
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 603
    iget-object v4, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/internal/menu/MenuItemImpl;

    .line 604
    invoke-virtual {v4}, Lcom/zui/internal/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 605
    invoke-virtual {v4, p2}, Lcom/zui/internal/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 609
    invoke-virtual {p0, v3}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/zui/internal/menu/MenuBuilder;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1220
    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1208
    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/zui/internal/menu/MenuBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1196
    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1184
    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1232
    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0

    .line 1268
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 703
    iput-boolean p1, p0, Lcom/zui/internal/menu/MenuBuilder;->mQwertyMode:Z

    const/4 p1, 0x0

    .line 705
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 745
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    const/4 p1, 0x0

    .line 748
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1015
    iget-boolean v1, p0, Lcom/zui/internal/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    .line 1016
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    const/4 v0, 0x1

    .line 1017
    invoke-virtual {p0, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1007
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    .line 1008
    iput-boolean v0, p0, Lcom/zui/internal/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :cond_0
    return-void
.end method
