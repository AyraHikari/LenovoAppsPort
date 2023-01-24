.class public Lcom/zui/gallery/ui/localtime/ListLayout;
.super Ljava/lang/Object;
.source "ListLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;
    }
.end annotation


# static fields
.field public static final INDEX_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListLayout"


# instance fields
.field private WIDE:Z

.field private clipIndex:I

.field firstRowIndexOffSet:I

.field firstRowNeedOffSetMaxIndex:I

.field private h:I

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mBigMode:Z

.field private mBottomLabHeight:I

.field private mContentLength:I

.field private mDeltYoffset:I

.field private mEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGridLayout:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/ui/localtime/GridLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

.field private mLableHeight:I

.field private mLineCount:I

.field private mMonthMarginLeft:I

.field private mMonthMarginRight:I

.field private mMonthSlotGap:I

.field private mMonthSlotHeight:I

.field private mMonthSlotWidth:I

.field private mMonthUnitCount:I

.field private mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

.field private mScrollPosition:I

.field private mSelectionIconRect:Landroid/graphics/Rect;

.field private mSlotCount:I

.field private volatile mSlotGap:I

.field private volatile mSlotHeight:I

.field private mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

.field private volatile mSlotWidth:I

.field private mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

.field private mTimeChangeLableHeight:I

.field private mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private mTopLabelRect:Landroid/graphics/Rect;

.field private volatile mUnitCount:I

.field private mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleLabelEnd:I

.field private mVisibleLabelStart:I

.field private mVisibleStart:I

.field private mWidth:I

.field private mYearMarginLeft:I

.field private mYearMarginRight:I

.field private mYearSlotGap:I

.field private mYearSlotHeight:I

.field private mYearSlotWidth:I

.field private mYearUnitCount:I

.field private marginLeft:I

.field private marginRight:I

.field private onChange:Z

.field otherRowIndexOffSet:I

.field private w:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    .line 26
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    .line 60
    new-instance v2, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;-><init>(Lcom/zui/gallery/ui/localtime/ListLayout$1;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    .line 61
    new-instance v2, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-direct {v2, v3}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;-><init>(Lcom/zui/gallery/ui/localtime/ListLayout$1;)V

    iput-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    .line 71
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    .line 72
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    .line 74
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBigMode:Z

    const/4 v2, 0x1

    .line 75
    iput v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->firstRowIndexOffSet:I

    const/4 v3, 0x3

    .line 76
    iput v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->otherRowIndexOffSet:I

    const/4 v3, 0x2

    .line 77
    iput v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->firstRowNeedOffSetMaxIndex:I

    .line 79
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->clipIndex:I

    .line 85
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    .line 87
    iput-boolean v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->onChange:Z

    .line 91
    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mDeltYoffset:I

    .line 986
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLineCount:I

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 100
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    .line 101
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    return-void
.end method

.method private caculateSlotRange(I)V
    .locals 9

    .line 466
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mDeltYoffset:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 467
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    if-lt v0, v1, :cond_1

    move v0, v1

    .line 470
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 474
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v4, v2

    :goto_1
    const/4 v5, -0x1

    if-gt v4, v1, :cond_4

    add-int v6, v4, v1

    .line 476
    div-int/lit8 v6, v6, 0x2

    .line 477
    iget-object v7, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 478
    invoke-virtual {v7, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->inLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 479
    invoke-virtual {v7, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getStartRange(I)I

    move-result p1

    .line 480
    invoke-virtual {v7}, Lcom/zui/gallery/ui/localtime/GridLayout;->getLayoutIndex()I

    move-result v1

    .line 482
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->clipIndex:I

    move v4, v3

    goto :goto_2

    .line 484
    :cond_2
    invoke-virtual {v7, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->isAboveLayout(I)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    move v1, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v6, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    move v4, p1

    move v1, v5

    .line 493
    :goto_2
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 494
    iget v7, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mDeltYoffset:I

    sub-int/2addr v0, v7

    move v7, v1

    .line 496
    :cond_5
    invoke-virtual {v6, v0}, Lcom/zui/gallery/ui/localtime/GridLayout;->inLayout(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 497
    invoke-virtual {v6, v0}, Lcom/zui/gallery/ui/localtime/GridLayout;->getEndRange(I)I

    move-result v0

    .line 498
    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/GridLayout;->getLayoutIndex()I

    move-result v2

    goto :goto_4

    :cond_6
    add-int/2addr v7, v3

    .line 504
    iget-object v8, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_7

    if-eqz v4, :cond_8

    .line 506
    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/GridLayout;->getEndIndex()I

    move-result v2

    .line 507
    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/GridLayout;->getLayoutIndex()I

    move-result v5

    goto :goto_3

    .line 512
    :cond_7
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 514
    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_5

    move v0, v2

    move v2, v5

    :goto_4
    add-int/2addr v0, v3

    .line 517
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/gallery/ui/localtime/ListLayout;->updateVisibleRange(IIII)V

    return-void
.end method

.method private initLayoutParameters()V
    .locals 10

    .line 344
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->slotWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 345
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    .line 346
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    goto/16 :goto_3

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 352
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    if-ne v0, v2, :cond_1

    iget v4, v4, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->columnLand:I

    goto :goto_0

    :cond_1
    iget v4, v4, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->columnPort:I

    .line 353
    :goto_0
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    if-ne v0, v2, :cond_2

    iget v5, v5, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthColumnLand:I

    goto :goto_1

    :cond_2
    iget v5, v5, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthColumnPort:I

    :goto_1
    if-ne v0, v2, :cond_3

    .line 354
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearColumnLand:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearColumnPort:I

    .line 356
    :goto_2
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v6, v6, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->slotGap:I

    iput v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    .line 357
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v6, v6, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->monthSlotGap:I

    iput v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotGap:I

    .line 358
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v6, v6, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->yearSlotGap:I

    iput v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotGap:I

    .line 362
    iget v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    add-int/lit8 v7, v4, -0x1

    iget v8, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    .line 363
    iget v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    add-int/lit8 v6, v5, -0x1

    iget v7, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotGap:I

    mul-int/2addr v6, v7

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotWidth:I

    .line 364
    iget v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotGap:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotWidth:I

    .line 366
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    .line 367
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotHeight:I

    .line 368
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotHeight:I

    .line 370
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz v0, :cond_6

    sget-object v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v4, :cond_4

    goto :goto_3

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v4, :cond_5

    .line 373
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotGap:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    .line 374
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    .line 375
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    goto :goto_3

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->YEAR:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v4, :cond_6

    .line 377
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotGap:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    .line 378
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    .line 379
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    .line 383
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->marginLeft:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginLeft:I

    .line 384
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->marginRight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginRight:I

    .line 386
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->lableHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLableHeight:I

    .line 387
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->timeChangeLableHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeChangeLableHeight:I

    .line 388
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->bottomLabHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBottomLabHeight:I

    .line 393
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    if-eqz v0, :cond_7

    .line 394
    iget v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    iget v5, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    invoke-virtual {v0, v4, v5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->onSlotSizeChanged(II)V

    .line 398
    :cond_7
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    iget v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    if-le v0, v4, :cond_8

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->columnLand:I

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->columnPort:I

    :goto_4
    new-array v0, v2, [I

    .line 403
    iget-boolean v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    if-eqz v2, :cond_9

    .line 404
    iget v5, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    iget v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    iget v7, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    iget v8, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/zui/gallery/ui/localtime/ListLayout;->initLayoutParameters(IIII[I)V

    .line 405
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->startAnimateTo(I)V

    .line 406
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->startAnimateTo(I)V

    goto :goto_5

    .line 408
    :cond_9
    iget v5, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    iget v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    iget v7, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    iget v8, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/zui/gallery/ui/localtime/ListLayout;->initLayoutParameters(IIII[I)V

    .line 409
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->startAnimateTo(I)V

    .line 410
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->startAnimateTo(I)V

    .line 413
    :goto_5
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->updateVisibleSlotRange()V

    .line 416
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->resetLineCount()V

    return-void
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 9

    .line 249
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    add-int/2addr p3, p2

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    add-int/2addr v0, p4

    div-int/2addr p3, v0

    const/4 v0, 0x1

    if-nez p3, :cond_0

    move p3, v0

    .line 252
    :cond_0
    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    .line 254
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotGap:I

    add-int v1, p2, p3

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthSlotHeight:I

    add-int/2addr v2, p3

    div-int/2addr v1, v2

    if-nez v1, :cond_1

    move v1, v0

    .line 257
    :cond_1
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthUnitCount:I

    .line 259
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotGap:I

    add-int v1, p2, p3

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearSlotHeight:I

    add-int/2addr v2, p3

    div-int/2addr v1, v2

    if-nez v1, :cond_2

    move v1, v0

    .line 262
    :cond_2
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearUnitCount:I

    .line 264
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz p3, :cond_5

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p3, v1, :cond_3

    goto :goto_0

    .line 266
    :cond_3
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p3, v1, :cond_4

    .line 267
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mMonthUnitCount:I

    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    goto :goto_0

    .line 268
    :cond_4
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->YEAR:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p3, v1, :cond_5

    .line 269
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mYearUnitCount:I

    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    .line 273
    :cond_5
    :goto_0
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int/2addr p4, p3

    sub-int/2addr p3, v0

    .line 274
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    mul-int/2addr p3, v1

    add-int/2addr p4, p3

    sub-int/2addr p2, p4

    .line 276
    div-int/lit8 p2, p2, 0x2

    const/4 p3, 0x0

    aput p2, p5, p3

    .line 280
    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    .line 281
    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mDeltYoffset:I

    .line 282
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 283
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    const/4 p2, -0x1

    .line 287
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move v6, p2

    move p2, p3

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    .line 288
    new-instance v8, Lcom/zui/gallery/ui/localtime/GridLayout;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    move-object v1, v8

    move-object v5, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/localtime/GridLayout;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;ILcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;Lcom/zui/gallery/ui/localtime/ListLayout;II)V

    .line 291
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isSelectAll()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateSelctAll(Z)V

    .line 293
    invoke-virtual {v8}, Lcom/zui/gallery/ui/localtime/GridLayout;->getContentLength()I

    move-result v1

    .line 295
    invoke-virtual {v8}, Lcom/zui/gallery/ui/localtime/GridLayout;->getEndIndex()I

    move-result v6

    .line 296
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    .line 300
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p2, v1, :cond_6

    .line 301
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBottomLabHeight:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_6

    .line 302
    invoke-virtual {v8, v3}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateContentLength(I)V

    .line 303
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBottomLabHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 318
    :cond_7
    iget p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    iget p4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    add-int/2addr p2, p4

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    if-lt p2, v1, :cond_a

    if-gt v1, p4, :cond_8

    .line 320
    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    goto :goto_2

    :cond_8
    sub-int/2addr v1, p4

    .line 322
    iput v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    if-gez v1, :cond_a

    .line 324
    iput p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    goto :goto_2

    .line 330
    :cond_9
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz p2, :cond_a

    .line 331
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 334
    :cond_a
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "contentLenght "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ListLayout"

    invoke-static {p4, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p5, v0

    return-void
.end method

.method private updateTopLabelRect(II)V
    .locals 7

    if-ltz p1, :cond_3

    .line 574
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-gtz p1, :cond_0

    if-nez p1, :cond_1

    .line 576
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_1

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    .line 577
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 584
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 585
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v1, :cond_3

    .line 586
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    .line 587
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    sub-int/2addr v3, p2

    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 588
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 587
    invoke-virtual {v1, v2, v3, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    return-void
.end method

.method private updateVisibleRange(IIII)V
    .locals 0

    .line 524
    invoke-virtual {p0, p3, p4}, Lcom/zui/gallery/ui/localtime/ListLayout;->setVisibleLabelRange(II)V

    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->setVisibleRange(II)V

    return-void
.end method

.method private updateVisibleSlotRange()V
    .locals 4

    .line 438
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    .line 440
    iget-boolean v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 441
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    add-int/2addr v1, v3

    div-int v1, v0, v1

    .line 442
    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    mul-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 443
    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 445
    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 446
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->setVisibleRange(II)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->caculateSlotRange(I)V

    goto :goto_0

    .line 451
    :cond_1
    iput v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    const/4 v0, -0x1

    .line 452
    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    :goto_0
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->calculate(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getBottomBarHeight()I
    .locals 1

    .line 1034
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBottomLabHeight:I

    return v0
.end method

.method public getCenterSlotIndex()I
    .locals 2

    .line 942
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getClipIndex()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->clipIndex:I

    return v0
.end method

.method public getContentLength()I
    .locals 1

    .line 783
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    return v0
.end method

.method public getFirstRowIndexOffSet()I
    .locals 1

    .line 837
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->firstRowIndexOffSet:I

    return v0
.end method

.method public getFirstRowNeedOffSetMaxIndex()I
    .locals 1

    .line 845
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->firstRowNeedOffSetMaxIndex:I

    return v0
.end method

.method public getFullRect()Landroid/graphics/Rect;
    .locals 4

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->w:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->h:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGridLayout()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/ui/localtime/GridLayout;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 775
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    return v0
.end method

.method public getHorizontalPadding()Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    return-object v0
.end method

.method public getLabelFirstSlotIndex(I)I
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 990
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 991
    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getStartIndex()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getLableHeight()I
    .locals 1

    .line 814
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLableHeight:I

    return v0
.end method

.method public getLableRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 201
    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getLabelRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineCount()I
    .locals 1

    .line 1030
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLineCount:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 810
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginRight:I

    return v0
.end method

.method public getOtherRowIndexOffSet()I
    .locals 1

    .line 841
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->otherRowIndexOffSet:I

    return v0
.end method

.method public getScrollLimit()I
    .locals 2

    .line 737
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mContentLength:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    :goto_0
    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getScrollPosition()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    return v0
.end method

.method public getSelectionAllIndex(FF)I
    .locals 5

    .line 690
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 691
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v1

    .line 693
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 694
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelStart()I

    move-result v0

    .line 695
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelEnd()I

    move-result v2

    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->isTopLableRegin(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->isTopLableSelectionRegin(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->clipIndex:I

    goto :goto_3

    :cond_2
    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    :goto_2
    if-gt v0, v2, :cond_5

    .line 707
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 708
    invoke-virtual {v3, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->isSelectionIconRegin(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 709
    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/GridLayout;->getLayoutIndex()I

    move-result v1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1
.end method

.method public getSelectionIconRect()Landroid/graphics/Rect;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSelectionIconRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 747
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotGap()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)[I
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 609
    fill-array-data v1, :array_0

    .line 614
    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    int-to-float v3, v2

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBottomLabHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    return-object v1

    .line 618
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr p1, v2

    .line 619
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v2

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "point x:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Y: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ListLayout"

    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    sub-int/2addr p1, v2

    .line 627
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 628
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginLeft:I

    sub-int/2addr p1, v0

    .line 630
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    sub-int/2addr p2, v0

    if-ltz p1, :cond_10

    if-gez p2, :cond_4

    goto/16 :goto_6

    .line 637
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotWidth()I

    move-result v0

    .line 638
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotHeight()I

    move-result v2

    .line 639
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotGap()I

    move-result v4

    .line 640
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getUnitCount()I

    move-result v5

    add-int v6, v0, v4

    .line 642
    div-int v7, p1, v6

    .line 643
    div-int v8, p2, v6

    .line 645
    iget-boolean v9, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    if-nez v9, :cond_5

    if-lt v7, v5, :cond_5

    return-object v1

    .line 649
    :cond_5
    iget-boolean v9, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    if-eqz v9, :cond_6

    if-lt v8, v5, :cond_6

    return-object v1

    .line 653
    :cond_6
    rem-int v5, p1, v6

    if-lt v5, v0, :cond_7

    return-object v1

    :cond_7
    add-int/2addr v4, v2

    .line 657
    rem-int v0, p2, v4

    add-int/lit8 v2, v2, 0x5

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    const/4 v0, -0x1

    .line 662
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_d

    .line 663
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelStart()I

    move-result v2

    .line 664
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getVisibleLabelEnd()I

    move-result v5

    if-ltz v2, :cond_c

    if-gez v5, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    if-gt v2, v5, :cond_d

    .line 668
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v2, :cond_a

    return-object v4

    .line 670
    :cond_a
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 671
    invoke-virtual {v6, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->contain(II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 672
    invoke-virtual {v6, v7, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->getIndex(II)I

    move-result v0

    aput v2, v1, v3

    const/4 p1, 0x1

    aput v0, v1, p1

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    return-object v4

    .line 683
    :cond_d
    :goto_4
    iget p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    if-ge v0, p1, :cond_f

    if-gez v0, :cond_e

    goto :goto_5

    :cond_e
    return-object v1

    :cond_f
    :goto_5
    return-object v4

    :cond_10
    :goto_6
    return-object v1

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getSlotLineIndex(I)I
    .locals 11

    .line 998
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    div-int/2addr v0, v1

    .line 1001
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 1002
    invoke-virtual {v6, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->validSlotIndex(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1003
    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/GridLayout;->getStartIndex()I

    move-result v5

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v7, v0

    div-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v5, v7

    add-int/2addr v5, v4

    .line 1006
    iget v7, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLineCount:I

    if-le v7, v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-double v7, v4

    .line 1011
    invoke-virtual {v6}, Lcom/zui/gallery/ui/localtime/GridLayout;->getSlotCount()I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v0

    div-float/2addr v4, v6

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    double-to-int v4, v7

    goto :goto_0

    .line 1014
    :cond_1
    :goto_1
    iget p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLineCount:I

    if-gez p1, :cond_2

    .line 1015
    iput v4, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLineCount:I

    :cond_2
    if-gez v5, :cond_3

    return v3

    :cond_3
    return v5
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 144
    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    .line 145
    :goto_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    if-gt v1, v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 147
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->validSlotIndex(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 155
    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->validSlotIndex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-nez v2, :cond_5

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 168
    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->validSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_5
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotWidth:I

    return v0
.end method

.method public getSpec()Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    return-object v0
.end method

.method public getSpecifiedTimeEntryStartAndCount(I)[I
    .locals 3

    .line 880
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getStartIndex()I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 886
    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->getSlotCount()I

    move-result p1

    aput p1, v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTimeChangeLableHeight()I
    .locals 1

    .line 861
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeChangeLableHeight:I

    return v0
.end method

.method public getTimeEntry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    return-object v0
.end method

.method public getTimeLayout()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/ui/localtime/GridLayout;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    return-object v0
.end method

.method public getTobLabeRect()Landroid/graphics/Rect;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getUnitCount()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mUnitCount:I

    return v0
.end method

.method public getVerticalPadding()Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    return-object v0
.end method

.method public getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleLabelEnd()I
    .locals 1

    .line 822
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    return v0
.end method

.method public getVisibleLabelStart()I
    .locals 1

    .line 818
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 771
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    return v0
.end method

.method public inCurrentLayout(II)Z
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 1046
    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->inLayout(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inverseSelection(I)Z
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 924
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->inverseSelection()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBigMode()Z
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 831
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mBigMode:Z

    return v0
.end method

.method public isDayViewModel()Z
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectAll(I)Z
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->isSelectAll()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTopLableRegin(II)Z
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isTopLableSelectionRegin(II)Z
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSelectionIconRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sget v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTopLabelRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 728
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSelectionIconRect()Landroid/graphics/Rect;

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

.method public isWIDE()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    return v0
.end method

.method public resetLineCount()V
    .locals 1

    const/4 v0, -0x1

    .line 1026
    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mLineCount:I

    return-void
.end method

.method public select([I)V
    .locals 3

    .line 892
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->valideArray([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    aget v2, p1, v1

    if-le v0, v2, :cond_0

    .line 893
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    aget v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/localtime/GridLayout;

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->select(I)V

    :cond_0
    return-void
.end method

.method public selectAll(IZ)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/localtime/GridLayout;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateSelctAll(Z)V

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mGridLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 916
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/localtime/GridLayout;

    .line 917
    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/localtime/GridLayout;->updateSelctAll(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRender(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1

    .line 530
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 532
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mScrollPosition:I

    .line 533
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->updateVisibleSlotRange()V

    return-void
.end method

.method public setSelectionIconRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSelectionIconRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 421
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->w:I

    .line 422
    iput p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->h:I

    .line 423
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 424
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 425
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->marginRight:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    goto :goto_0

    .line 427
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mWidth:I

    .line 429
    :goto_0
    iput p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHeight:I

    .line 430
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->initLayoutParameters()V

    return-void
.end method

.method public setSlotCount(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            ")Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eq v0, p3, :cond_0

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 120
    :goto_0
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mTimeViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 122
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    if-ne p1, p3, :cond_2

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne p3, v3, :cond_2

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    if-ne p3, p2, :cond_2

    if-nez v0, :cond_2

    return v1

    .line 126
    :cond_2
    iget p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    if-eqz p3, :cond_3

    .line 127
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {p3, v2}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->setEnabled(Z)V

    .line 128
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {p3, v2}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->setEnabled(Z)V

    .line 130
    :cond_3
    iput-boolean v2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->onChange:Z

    .line 131
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotCount:I

    .line 132
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mEntry:Ljava/util/List;

    .line 133
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->getTarget()I

    move-result p1

    .line 134
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->getTarget()I

    move-result p2

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/ListLayout;->initLayoutParameters()V

    .line 136
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVerticalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->getTarget()I

    move-result p3

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mHorizontalPadding:Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;

    .line 137
    invoke-virtual {p2}, Lcom/zui/gallery/ui/localtime/ListLayout$IntegerAnimation;->getTarget()I

    move-result p2

    if-eq p1, p2, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public setSlotGap(I)V
    .locals 0

    .line 763
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSlotGap:I

    return-void
.end method

.method public setSlotSpec(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    return-void
.end method

.method protected setVisibleLabelRange(II)V
    .locals 2

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->updateTopLabelRect(II)V

    .line 538
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->onChange:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 541
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    .line 542
    iput p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    goto :goto_0

    .line 544
    :cond_1
    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    iput v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    .line 546
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    if-eqz p1, :cond_2

    .line 547
    iget p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelStart:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleLabelEnd:I

    invoke-virtual {p1, p2, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->onVisibleLabelRangeChaged(II)V

    .line 549
    :cond_2
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->onChange:Z

    return-void
.end method

.method protected setVisibleRange(II)V
    .locals 1

    .line 553
    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    .line 556
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    .line 557
    iput p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 559
    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    iput p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    .line 561
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mRenderer:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    if-eqz p1, :cond_2

    .line 562
    iget p2, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleStart:I

    iget v0, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->mVisibleEnd:I

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->onVisibleRangeChanged(II)V

    :cond_2
    return-void
.end method

.method public setWIDE(Z)V
    .locals 0

    .line 755
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/ListLayout;->WIDE:Z

    return-void
.end method

.method public valideArray([I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 937
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget v2, p1, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    aget p1, p1, v0

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method
