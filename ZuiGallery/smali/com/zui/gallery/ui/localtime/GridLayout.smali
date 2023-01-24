.class public Lcom/zui/gallery/ui/localtime/GridLayout;
.super Ljava/lang/Object;
.source "GridLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GridLayout"


# instance fields
.field private canBigMode:Z

.field private volatile isSelectAll:Z

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mBigModeFirstIndexRect:Landroid/graphics/Rect;

.field private mContentLength:I

.field private mContentRect:Landroid/graphics/Rect;

.field private final mEndIndex:I

.field private mEndPosition:I

.field private volatile mInverseSelection:Z

.field private mLabelRect:Landroid/graphics/Rect;

.field private final mLayouIndex:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

.field private mSelectedSlot:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlopGap:I

.field private final mSlotCount:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private final mStartIndex:I

.field private final mStartPosition:I

.field private final mTimeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

.field private mUnitCount:I

.field private mYOffSet:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;ILcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;Lcom/zui/gallery/ui/localtime/ListLayout;II)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    .line 76
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 77
    iput p2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    .line 78
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mTimeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    .line 79
    iput-object p4, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 80
    iget p1, p3, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    iput p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    add-int/lit8 p2, p5, 0x1

    .line 81
    iput p2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    add-int/2addr p5, p1

    .line 82
    iput p5, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndIndex:I

    .line 83
    iput p6, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLayouIndex:I

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSelectedSlot:Ljava/util/Set;

    .line 85
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/GridLayout;->initLayoutParameters()V

    return-void
.end method

.method private initLayoutParameters()V
    .locals 7

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    iget v4, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    .line 93
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 94
    iput-boolean v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->canBigMode:Z

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mBigModeFirstIndexRect:Landroid/graphics/Rect;

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->canBigMode:Z

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->isBigMode()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->canBigMode:Z

    if-eqz v0, :cond_1

    .line 101
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    .line 103
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    div-int/2addr v0, v1

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotWidth()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotWidth:I

    .line 107
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotHeight:I

    .line 108
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlopGap:I

    .line 109
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mUnitCount:I

    .line 110
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getMarginLeft()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mMarginLeft:I

    .line 111
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getMarginRight()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mMarginLeft:I

    .line 112
    iget v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotHeight:I

    mul-int/2addr v1, v0

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlopGap:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentLength:I

    .line 113
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public contain(II)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->isLableRegin(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getContentLength()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentLength:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndIndex:I

    return v0
.end method

.method public getEndPosition()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    return v0
.end method

.method public getEndRange(I)I
    .locals 2

    .line 189
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 191
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 194
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v1

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 197
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v1

    mul-int/2addr v1, p1

    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getIndex(II)I
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->canBigMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->inBigRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    return p1

    .line 230
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v2

    add-int/2addr v0, v2

    div-int/2addr p2, v0

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    if-nez p2, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x3

    .line 238
    :goto_0
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    if-lt v0, p1, :cond_2

    return v1

    .line 241
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    add-int/2addr v0, p1

    return v0

    .line 244
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    sub-int/2addr p2, v0

    .line 245
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v2

    add-int/2addr v0, v2

    div-int/2addr p2, v0

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v0

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    .line 249
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    if-lt p2, p1, :cond_4

    return v1

    .line 253
    :cond_4
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    add-int/2addr p2, p1

    return p2
.end method

.method public getLabelRect()Landroid/graphics/Rect;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLayoutIndex()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLayouIndex:I

    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    .line 119
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    sub-int/2addr p1, v0

    .line 121
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mUnitCount:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 123
    iget-boolean v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->canBigMode:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mBigModeFirstIndexRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p2

    :cond_0
    if-gt p1, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x3

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v0

    div-int v1, p1, v0

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v0

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 137
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotWidth:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlopGap:I

    add-int/2addr p1, v2

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x0

    .line 138
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotHeight:I

    iget v5, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlopGap:I

    add-int/2addr v4, v5

    mul-int/2addr v1, v4

    add-int/2addr v2, v1

    .line 139
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 140
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_3

    .line 141
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mMarginLeft:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlopGap:I

    add-int/2addr v1, v3

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 145
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotWidth:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method public getStartIndex()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    return v0
.end method

.method public getStartRange(I)I
    .locals 4

    .line 171
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mYOffSet:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 175
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v3

    add-int/2addr v2, v3

    div-int/2addr p1, v2

    .line 176
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v2

    mul-int/2addr v2, p1

    .line 177
    iget-boolean v3, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->canBigMode:Z

    if-eqz v3, :cond_2

    if-gt p1, v1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x3

    .line 184
    :cond_2
    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 185
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    add-int/2addr v0, p1

    return v0
.end method

.method public inBigRect(II)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mBigModeFirstIndexRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inLayout(I)Z
    .locals 1

    .line 269
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public inverseSelection()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mInverseSelection:Z

    return v0
.end method

.method public isAboveLayout(I)Z
    .locals 1

    .line 273
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBelowLayout(I)Z
    .locals 1

    .line 277
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLableRegin(II)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isSelectAll()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->isSelectAll:Z

    return v0
.end method

.method public isSelectionIconRegin(II)Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSelectionIconRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sget v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mLabelRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    .line 293
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSelectionIconRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    sget v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public select(I)V
    .locals 3

    .line 300
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    if-lt p1, v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndIndex:I

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 304
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 312
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mInverseSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    .line 314
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateSelctAll(Z)V

    goto :goto_1

    .line 315
    :cond_2
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    if-ne p1, v0, :cond_3

    .line 316
    invoke-virtual {p0, v2}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateSelctAll(Z)V

    goto :goto_1

    .line 318
    :cond_3
    iput-boolean v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->isSelectAll:Z

    goto :goto_1

    .line 321
    :cond_4
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSlotCount:I

    if-ne p1, v0, :cond_5

    .line 322
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateSelctAll(Z)V

    goto :goto_1

    .line 324
    :cond_5
    iput-boolean v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->isSelectAll:Z

    :goto_1
    return-void

    .line 301
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidate slot index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " valide index: ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GridLayout"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateContentLength(I)V
    .locals 4

    .line 285
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentLength:I

    .line 286
    iget p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    .line 287
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mParent:Lcom/zui/gallery/ui/localtime/ListLayout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateSelctAll(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mInverseSelection:Z

    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->isSelectAll:Z

    .line 336
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public validSlotIndex(I)Z
    .locals 1

    .line 281
    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mStartIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/GridLayout;->mEndIndex:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
