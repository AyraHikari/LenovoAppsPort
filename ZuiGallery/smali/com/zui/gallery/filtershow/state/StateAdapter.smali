.class public Lcom/zui/gallery/filtershow/state/StateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/zui/gallery/filtershow/state/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "StateAdapter"


# instance fields
.field private mOrientation:I

.field private mOriginalText:Ljava/lang/String;

.field private mResultText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const p2, 0x7f10026f

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/state/StateAdapter;->mOriginalText:Ljava/lang/String;

    const p2, 0x7f100270

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StateAdapter;->mResultText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addOriginal()V
    .locals 2

    .line 83
    new-instance v0, Lcom/zui/gallery/filtershow/state/State;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/state/StateAdapter;->mOriginalText:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/state/State;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public contains(Lcom/zui/gallery/filtershow/state/State;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public fill(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/state/State;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->same(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->addOriginal()V

    .line 106
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->addAll(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 51
    new-instance p2, Lcom/zui/gallery/filtershow/state/StateView;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/zui/gallery/filtershow/state/StateView;-><init>(Landroid/content/Context;)V

    .line 53
    :cond_0
    check-cast p2, Lcom/zui/gallery/filtershow/state/StateView;

    .line 54
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/state/State;

    .line 55
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/state/StateView;->setState(Lcom/zui/gallery/filtershow/state/State;)V

    .line 56
    iget p3, p0, Lcom/zui/gallery/filtershow/state/StateAdapter;->mOrientation:I

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/state/StateView;->setOrientation(I)V

    .line 57
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p3

    .line 58
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_1

    .line 61
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result p1

    const p3, 0x7f0801e9

    if-eq p1, p3, :cond_1

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/state/StateView;->setSelected(Z)V

    :goto_0
    return-object p2
.end method

.method public remove(Lcom/zui/gallery/filtershow/state/State;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 115
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->removeFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/zui/gallery/filtershow/state/State;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/state/StateAdapter;->remove(Lcom/zui/gallery/filtershow/state/State;)V

    return-void
.end method

.method public same(Ljava/util/Vector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/state/State;",
            ">;)Z"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 92
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/state/State;

    add-int/lit8 v4, v0, -0x1

    .line 93
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/state/State;

    invoke-virtual {v2, v4}, Lcom/zui/gallery/filtershow/state/State;->equals(Lcom/zui/gallery/filtershow/state/State;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setOrientation(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/zui/gallery/filtershow/state/StateAdapter;->mOrientation:I

    return-void
.end method
