.class public Lcom/zui/gallery/filtershow/category/CategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/zui/gallery/filtershow/category/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CategoryAdapter"

.field public static selectIndex:I = -0x1


# instance fields
.field private mAddButtonText:Ljava/lang/String;

.field mCategory:I

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mOrientation:I

.field private mSelectedPosition:I

.field private mShowAddButton:Z

.field private scrollview:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p2, -0x1

    .line 41
    iput p2, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mItemWidth:I

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mShowAddButton:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mItemHeight:I

    .line 67
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private invalidateView(I)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mContainer:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Landroid/widget/ListView;

    .line 192
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 194
    :cond_0
    check-cast v0, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    .line 195
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/Action;->setAdapter(Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/category/Action;

    .line 78
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->clearBitmap()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public getAddButtonText()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mAddButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getScrollView()Landroid/view/View;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->scrollview:Landroid/view/View;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getTinyPlanet()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 213
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/category/Action;

    .line 214
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 121
    new-instance p2, Lcom/zui/gallery/filtershow/category/CategoryView;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/zui/gallery/filtershow/category/CategoryView;-><init>(Landroid/content/Context;)V

    .line 123
    :cond_0
    check-cast p2, Lcom/zui/gallery/filtershow/category/CategoryView;

    .line 124
    iget p3, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mOrientation:I

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/category/CategoryView;->setOrientation(I)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/filtershow/category/Action;

    .line 126
    invoke-virtual {p2, p3, p0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setAction(Lcom/zui/gallery/filtershow/category/Action;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 127
    invoke-virtual {p3, p2}, Lcom/zui/gallery/filtershow/category/Action;->setView(Landroid/view/View;)V

    .line 128
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mItemWidth:I

    .line 129
    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mItemHeight:I

    .line 130
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 131
    iget v2, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 132
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 134
    :cond_1
    div-int/lit8 v1, v1, 0x2

    .line 137
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mOrientation:I

    if-nez v2, :cond_3

    .line 139
    div-int/lit8 v1, v1, 0x2

    .line 141
    :cond_3
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/zui/gallery/filtershow/category/CategoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v0, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;-><init>(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 144
    iput-object p3, v0, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->action:Lcom/zui/gallery/filtershow/category/Action;

    .line 145
    iput p1, v0, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->postion:I

    .line 146
    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->setTag(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/category/CategoryView;->invalidate()V

    return-object p2
.end method

.method public imageLoaded()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public initializeSelection(I)V
    .locals 4

    .line 98
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mCategory:I

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 101
    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 102
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mAddButtonText:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    .line 105
    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100128

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mAddButtonText:Ljava/lang/String;

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 112
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    :cond_3
    return-void
.end method

.method public isSelected(Landroid/view/View;)Z
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    .line 184
    iget p1, p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->postion:I

    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reflectImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 260
    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mCategory:I

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-ne v1, v3, :cond_1

    .line 261
    invoke-virtual {p1, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForType(I)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 263
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentation(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 266
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForType(I)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 268
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentation(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    const/16 v1, 0x9

    .line 271
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForTypeFromFoot(I)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 273
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentation(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_9

    move v1, p1

    move v3, v1

    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 278
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 282
    :cond_4
    instance-of v6, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v6, :cond_6

    .line 283
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    .line 292
    :cond_6
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    move p1, v1

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    move p1, v3

    .line 300
    :cond_9
    :goto_4
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    if-eq v0, p1, :cond_c

    .line 301
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mCategory:I

    if-eq v0, v2, :cond_a

    .line 302
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    goto :goto_5

    .line 303
    :cond_a
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 304
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 306
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->notifyDataSetChanged()V

    :cond_c
    return-void
.end method

.method public remove(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 4

    .line 237
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mCategory:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 243
    iget v3, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mCategory:I

    if-ne v3, v1, :cond_1

    .line 244
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->removeLook(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    .line 246
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->removeVersion(Lcom/zui/gallery/filtershow/category/Action;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->remove(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method public removeTinyPlanet()V
    .locals 3

    const/4 v0, 0x0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/category/Action;

    .line 226
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    if-eqz v2, :cond_0

    .line 229
    invoke-super {p0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mContainer:Landroid/view/View;

    const-string p1, "scroll_to"

    const-string v0, "setContainer: "

    .line 204
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mItemHeight:I

    return-void
.end method

.method public setItemWidth(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mItemWidth:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mOrientation:I

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->scrollview:Landroid/view/View;

    return-void
.end method

.method public setSelected(Landroid/view/View;)V
    .locals 2

    const-string v0, "cateGroy"

    const-string v1, "setSelected: mSelectedPosition"

    .line 157
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    .line 161
    iget p1, p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;->postion:I

    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 162
    sput p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->selectIndex:I

    .line 163
    sput p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScrollIndex:I

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->invalidateView(I)V

    .line 167
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->invalidateView(I)V

    return-void
.end method

.method public setShowAddButton(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mShowAddButton:Z

    return-void
.end method

.method public setUnSelected(Landroid/view/View;)V
    .locals 2

    const-string v0, "cateGroy"

    const-string v1, "setSelected: mSelectedPosition 222"

    .line 170
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter$ObjectTag;

    const/4 p1, -0x1

    .line 174
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    .line 175
    sput p1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->selectIndex:I

    if-eq v0, p1, :cond_0

    .line 177
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->invalidateView(I)V

    .line 179
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->invalidateView(I)V

    return-void
.end method

.method public showAddButton()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->mShowAddButton:Z

    return v0
.end method
