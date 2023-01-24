.class Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubLayout"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridLayout"


# instance fields
.field private canBigMode:Z

.field private volatile isSelectAll:Z

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private final mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

.field private mBigModeFirstIndexRect:Landroid/graphics/Rect;

.field private mContentLength:I

.field private mContentRect:Landroid/graphics/Rect;

.field private final mEndIndex:I

.field private mEndPosition:I

.field public mEntryListSize:I

.field public mIndexInEntryList:I

.field private volatile mInverseSelection:Z

.field private mLabelRect:Landroid/graphics/Rect;

.field private final mLayouIndex:I

.field private mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

.field private mSelectedSlot:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotCount:I

.field private mSlotHeight:I

.field private mSlotHeightGap:I

.field private mSlotWidth:I

.field private mSlotWidthGap:I

.field private final mStartIndex:I

.field private final mStartPosition:I

.field private mUnitCount:I

.field private mYOffSet:I

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/app/AbstractGalleryActivity;ILcom/zui/gallery/data/AlbumSetCategoryEntry;Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;IIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/app/AbstractGalleryActivity;",
            "I",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            "Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;",
            "III",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 1727
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1699
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubLayout startPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slotStartIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSlotCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {p4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pianzisiguangguang"

    .line 1728
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wanglast"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1732
    iput p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    .line 1733
    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 1734
    iput-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 1735
    invoke-virtual {p4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    .line 1736
    iput p8, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mIndexInEntryList:I

    .line 1737
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEntryListSize:I

    .line 1739
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    if-gtz p2, :cond_0

    const/4 p2, -0x1

    .line 1740
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    .line 1741
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p6, 0x1

    .line 1744
    iput p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    add-int/2addr p6, p2

    .line 1745
    iput p6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    .line 1754
    :goto_0
    iput p7, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLayouIndex:I

    .line 1755
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSelectedSlot:Ljava/util/Set;

    .line 1757
    invoke-virtual {p4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object p2

    sget-object p3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne p2, p3, :cond_1

    const/4 p1, 0x1

    .line 1763
    :cond_1
    invoke-virtual {p4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f10029c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1766
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->initLayoutParameters(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)I
    .locals 0

    .line 1667
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;
    .locals 0

    .line 1667
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    return-object p0
.end method

.method private initLayoutParameters(ZZ)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, -0x28

    goto :goto_0

    :cond_0
    move p2, v0

    .line 1772
    :goto_0
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLayouIndex:I

    if-nez v1, :cond_1

    .line 1773
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getWidth()I

    move-result p2

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 1774
    invoke-virtual {v4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getFirstLableHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v0, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    .line 1775
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLabelRect 111 , mLabelRect.bottom is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "wanglast"

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1779
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    iget v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v6, 0x2a

    .line 1780
    invoke-static {v5, v6}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    .line 1790
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotWidth()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotWidth:I

    .line 1791
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotHeight()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeight:I

    .line 1792
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getWidthSlotGap()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotWidthGap:I

    .line 1793
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getHeightSlotGap()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    .line 1794
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mUnitCount:I

    .line 1795
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    if-eqz p1, :cond_2

    .line 1799
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41e00000    # 28.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    mul-int/2addr p1, v0

    add-int/lit8 v0, v0, -0x1

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentLength:I

    goto :goto_2

    .line 1801
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeight:I

    mul-int/2addr p1, v0

    add-int/lit8 v0, v0, -0x1

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentLength:I

    .line 1804
    :goto_2
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentLength:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

    .line 1808
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getMarginLeft()I

    move-result p2

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getMarginLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public contain(III)Z
    .locals 2

    .line 1889
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1894
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0, p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->isClipLabel(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1895
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getTobLabeRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 1896
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v1

    .line 1898
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isLableRegin(II)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1901
    :cond_2
    :goto_1
    sget-object p1, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {p2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object p2

    if-ne p1, p2, :cond_3

    invoke-static {}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2000()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1904
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "other Lable is onclik OTHER_FOLDERS_IS_VISIBLE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayout"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public getContentLength()I
    .locals 1

    .line 1829
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentLength:I

    return v0
.end method

.method public getEmptyDefaultPageIndex(II)I
    .locals 6

    .line 1977
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getTrashCanIndex()I

    move-result v0

    .line 1978
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1979
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1980
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1981
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    .line 1982
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1983
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41e00000    # 28.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v1, v2

    add-int/2addr v4, v3

    if-le p1, v2, :cond_0

    if-ge p1, v1, :cond_0

    if-le p2, v3, :cond_0

    if-ge p2, v4, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getEndIndex()I
    .locals 1

    .line 1845
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    return v0
.end method

.method public getEndPosition()I
    .locals 1

    .line 1841
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

    return v0
.end method

.method public getEndRange(I)I
    .locals 4

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEndRange endPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pianzisiguangguang"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLabelHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 1868
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 1870
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 1871
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotHeight()I

    move-result v0

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    add-int/2addr v0, v2

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 1874
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v2

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndRange mEndIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mParent.getUnitCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " endRow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mStartIndex:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getIndex(II)I
    .locals 7

    .line 1925
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLabelHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    sub-int/2addr p2, v0

    .line 1926
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getHeightSlotGap()I

    move-result v1

    add-int/2addr v0, v1

    div-int v0, p2, v0

    .line 1929
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f06035c

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 1930
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v1

    sget-object v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v1, v5, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v0

    div-int v0, p2, v0

    .line 1932
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v1

    sub-int v1, p2, v1

    const/16 v5, 0x64

    if-le v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 1938
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ==== absoluteY ==  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   trash_area_height == "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1939
    invoke-virtual {p2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "AlbumSetSlotView"

    .line 1938
    invoke-static {v3, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result p2

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    .line 1944
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const/4 p2, -0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object p1

    sget-object v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne p1, v3, :cond_5

    .line 1945
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result p1

    if-lt v0, p1, :cond_3

    if-eqz v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_2

    .line 1955
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-eqz p1, :cond_4

    return p2

    .line 1958
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1959
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz p1, :cond_7

    .line 1960
    invoke-virtual {p1}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1961
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f1000e7

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1962
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return p2

    .line 1969
    :cond_5
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    if-lt v0, p1, :cond_6

    return p2

    :cond_6
    move v2, v0

    .line 1974
    :cond_7
    :goto_2
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    add-int/2addr v2, p1

    return v2
.end method

.method public getLabelRect()Landroid/graphics/Rect;
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLayoutIndex()I
    .locals 1

    .line 1993
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLayouIndex:I

    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 1833
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1812
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    sub-int/2addr p1, v0

    .line 1814
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mUnitCount:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 1816
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getMarginLeft()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotWidth:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    if-eqz p1, :cond_0

    .line 1818
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getMarginLeft()I

    move-result p1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int v2, p1, v0

    .line 1821
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeight:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    add-int/2addr v3, v0

    mul-int/2addr v1, v3

    add-int/2addr p1, v1

    .line 1823
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotWidth:I

    add-int/2addr v1, v2

    add-int/2addr v0, p1

    invoke-virtual {p2, v2, p1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method public getStartIndex()I
    .locals 1

    .line 1837
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 2001
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    return v0
.end method

.method public getStartRange(I)I
    .locals 3

    .line 1849
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLabelHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mYOffSet:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1853
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotHeightGap:I

    add-int/2addr v1, v2

    div-int/2addr p1, v1

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v1

    mul-int/2addr p1, v1

    .line 1854
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " & mSlotCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanstart"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 1860
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    add-int/2addr v0, p1

    return v0
.end method

.method public inBigRect(II)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mBigModeFirstIndexRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inLayout(I)Z
    .locals 1

    .line 2005
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

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

    .line 2082
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mInverseSelection:Z

    return v0
.end method

.method public isAboveLayout(I)Z
    .locals 1

    .line 2009
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

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

    .line 2013
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2086
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInFolderNameRegin(IILandroid/graphics/Rect;)Z
    .locals 0

    .line 1885
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isLableRegin(II)Z
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isSelectAll()Z
    .locals 1

    .line 2078
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isSelectAll:Z

    return v0
.end method

.method public isSelectionIconRegin(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public select(I)V
    .locals 3

    .line 2038
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    if-lt p1, v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 2043
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2044
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2047
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2050
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 2051
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mInverseSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    .line 2053
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->updateSelctAll(Z)V

    goto :goto_1

    .line 2054
    :cond_2
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    if-ne p1, v0, :cond_3

    .line 2055
    invoke-virtual {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->updateSelctAll(Z)V

    goto :goto_1

    .line 2057
    :cond_3
    iput-boolean v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isSelectAll:Z

    goto :goto_1

    .line 2060
    :cond_4
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSlotCount:I

    if-ne p1, v0, :cond_5

    .line 2061
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->updateSelctAll(Z)V

    goto :goto_1

    .line 2063
    :cond_5
    iput-boolean v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isSelectAll:Z

    :goto_1
    return-void

    .line 2039
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidate slot index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " valide index: ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

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

    .line 2021
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentLength:I

    .line 2022
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

    .line 2023
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mContentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mParent:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateSelctAll(Z)V
    .locals 0

    .line 2072
    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mInverseSelection:Z

    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isSelectAll:Z

    .line 2074
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mSelectedSlot:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public validSlotIndex(I)Z
    .locals 1

    .line 2017
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mStartIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->mEndIndex:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
