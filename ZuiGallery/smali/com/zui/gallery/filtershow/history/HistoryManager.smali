.class public Lcom/zui/gallery/filtershow/history/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HistoryManager"


# instance fields
.field private mCurrentPresetPosition:I

.field private mHistoryItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/history/HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRedoMenuItem:Landroid/view/MenuItem;

.field private mResetMenuItem:Landroid/view/MenuItem;

.field private mUndoMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 30
    iput-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 31
    iput-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mResetMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method private add(Lcom/zui/gallery/filtershow/history/HistoryItem;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clear()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method private getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private insert(Lcom/zui/gallery/filtershow/history/HistoryItem;I)V
    .locals 3

    .line 135
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 138
    iget v1, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 139
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getItem(I)Lcom/zui/gallery/filtershow/history/HistoryItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->clear()V

    const/4 v1, 0x0

    .line 142
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/history/HistoryItem;

    invoke-direct {p0, v2}, Lcom/zui/gallery/filtershow/history/HistoryManager;->add(Lcom/zui/gallery/filtershow/history/HistoryItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    iput p2, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    .line 146
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->notifyDataSetChanged()V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 149
    iput p2, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    .line 150
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->notifyDataSetChanged()V

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 0

    return-void
.end method

.method private setEnabled(Landroid/view/MenuItem;Z)V
    .locals 0

    .line 97
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0xff

    goto :goto_0

    :cond_0
    const/16 p2, 0x50

    .line 100
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addHistoryItem(Lcom/zui/gallery/filtershow/history/HistoryItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->insert(Lcom/zui/gallery/filtershow/history/HistoryItem;I)V

    .line 131
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->updateMenuItems()V

    return-void
.end method

.method public canRedo()Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canReset()Z
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canUndo()Z
    .locals 3

    .line 71
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public getCurrent()Lcom/zui/gallery/filtershow/history/HistoryItem;
    .locals 1

    .line 126
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getItem(I)Lcom/zui/gallery/filtershow/history/HistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/zui/gallery/filtershow/history/HistoryItem;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mHistoryItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/history/HistoryItem;

    return-object p1
.end method

.method public getLast()Lcom/zui/gallery/filtershow/history/HistoryItem;
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getItem(I)Lcom/zui/gallery/filtershow/history/HistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public redo()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->notifyDataSetChanged()V

    .line 159
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->updateMenuItems()V

    .line 160
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->clear()V

    .line 115
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->updateMenuItems()V

    return-void
.end method

.method public setCurrentPreset(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    .line 106
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->updateMenuItems()V

    .line 107
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->notifyDataSetChanged()V

    return-void
.end method

.method public setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 35
    iput-object p2, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 36
    iput-object p3, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mResetMenuItem:Landroid/view/MenuItem;

    .line 37
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->updateMenuItems()V

    return-void
.end method

.method public undo()I
    .locals 2

    .line 164
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->notifyDataSetChanged()V

    .line 169
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->updateMenuItems()V

    .line 170
    iget v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mCurrentPresetPosition:I

    return v0
.end method

.method public updateMenuItems()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mUndoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->canUndo()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->setEnabled(Landroid/view/MenuItem;Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mRedoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->canRedo()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->setEnabled(Landroid/view/MenuItem;Z)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryManager;->mResetMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->canReset()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->setEnabled(Landroid/view/MenuItem;Z)V

    :cond_2
    return-void
.end method
