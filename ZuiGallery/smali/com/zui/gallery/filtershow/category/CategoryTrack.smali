.class public Lcom/zui/gallery/filtershow/category/CategoryTrack;
.super Landroid/widget/LinearLayout;
.source "CategoryTrack.java"


# instance fields
.field private mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryTrackHeight:I

.field private mCategoryTrackWidth:I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mElemSize:I

.field private mSelectedView:Landroid/view/View;

.field private mStartTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;-><init>(Lcom/zui/gallery/filtershow/category/CategoryTrack;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 62
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/zui/gallery/R$styleable;->CategoryTrack:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mElemSize:I

    .line 65
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 67
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const v0, 0x7f060130

    .line 68
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mCategoryTrackHeight:I

    const v0, 0x7f060131

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mCategoryTrackWidth:I

    goto :goto_0

    :cond_0
    const v0, 0x7f060132

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mCategoryTrackHeight:I

    const v0, 0x7f060133

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mCategoryTrackWidth:I

    .line 74
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/category/CategoryTrack;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p0
.end method


# virtual methods
.method public fillContent()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mCategoryTrackWidth:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setItemWidth(I)V

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mCategoryTrackHeight:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 114
    invoke-virtual {p0, v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->requestLayout()V

    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 2

    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->fillContent()V

    return-void
.end method

.method public setNewAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 92
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->fillContent()V

    return-void
.end method

.method public unRegisterDataObserver(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    .locals 1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
