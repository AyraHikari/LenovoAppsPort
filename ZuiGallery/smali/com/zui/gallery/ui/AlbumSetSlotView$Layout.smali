.class public Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private bottom_bar_height:I

.field private clipIndex:I

.field private mContentLength:I

.field private mDeltYoffset:I

.field private mEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLableHeight:I

.field private mHeight:I

.field private mHeightSlotGap:I

.field private mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

.field private mLabelHeight:I

.field private mLineCount:I

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

.field private mSubListLayout:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLabelRect:Landroid/graphics/Rect;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleLabelEnd:I

.field private mVisibleLabelStart:I

.field private mVisibleStart:I

.field private mWidth:I

.field private mWidthSlotGap:I

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V
    .locals 1

    .line 1033
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    new-instance p1, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView$1;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    .line 1054
    new-instance p1, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-direct {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView$1;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    const/4 p1, 0x0

    .line 1056
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->bottom_bar_height:I

    .line 1062
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    .line 1063
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    .line 1065
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mFirstLableHeight:I

    .line 1066
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLabelHeight:I

    .line 1068
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mDeltYoffset:I

    const/4 p1, -0x1

    .line 1070
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->clipIndex:I

    .line 1072
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    .line 1074
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLineCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V
    .locals 0

    .line 1033
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->initLayoutParameters()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;
    .locals 0

    .line 1033
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    return p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    return p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)Ljava/util/List;
    .locals 0

    .line 1033
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    return-object p0
.end method

.method private caculateSlotRange(I)V
    .locals 9

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pianzisiguangguang"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    add-int/2addr v0, p1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mDeltYoffset:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLabelHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mContentLength:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mHeight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDeltYoffset:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mDeltYoffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getLabelHeight():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLabelHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1368
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    if-lt v0, v1, :cond_1

    move v0, v1

    .line 1376
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v4, v3

    :goto_1
    const/4 v5, -0x1

    if-gt v4, v1, :cond_4

    add-int v6, v4, v1

    .line 1378
    div-int/lit8 v6, v6, 0x2

    .line 1379
    iget-object v7, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1380
    invoke-virtual {v7, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->inLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1381
    invoke-virtual {v7, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getStartRange(I)I

    move-result p1

    .line 1382
    invoke-virtual {v7}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getLayoutIndex()I

    move-result v1

    .line 1384
    iput v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->clipIndex:I

    move v4, v2

    goto :goto_2

    .line 1386
    :cond_2
    invoke-virtual {v7, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isAboveLayout(I)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    move v1, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v6, 0x1

    goto :goto_1

    :cond_4
    move p1, v3

    move v4, p1

    move v1, v5

    :goto_2
    if-ltz v1, :cond_9

    .line 1394
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 1395
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1396
    iget v7, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mDeltYoffset:I

    sub-int/2addr v0, v7

    move v7, v1

    .line 1398
    :cond_5
    invoke-virtual {v6, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->inLayout(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1399
    invoke-virtual {v6, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getEndRange(I)I

    move-result v0

    .line 1401
    invoke-virtual {v6}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getLayoutIndex()I

    move-result v3

    goto :goto_4

    :cond_6
    add-int/2addr v7, v2

    .line 1406
    iget-object v8, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_7

    if-eqz v4, :cond_8

    .line 1408
    invoke-virtual {v6}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getEndIndex()I

    move-result v3

    .line 1410
    invoke-virtual {v6}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getLayoutIndex()I

    move-result v5

    goto :goto_3

    .line 1414
    :cond_7
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1416
    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_5

    move v0, v3

    move v3, v5

    :goto_4
    add-int/2addr v0, v2

    .line 1419
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->updateVisibleRange(IIII)V

    :cond_9
    return-void
.end method

.method private initLayoutParameters()V
    .locals 11

    .line 1319
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotWidth:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->widthSlotGap:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidthSlotGap:I

    .line 1321
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->heightSlotGap:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    .line 1322
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    .line 1323
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    goto :goto_1

    .line 1325
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->columnLand:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->columnPort:I

    .line 1326
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v3, v3, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->widthSlotGap:I

    iput v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidthSlotGap:I

    .line 1327
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v3, v3, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->heightSlotGap:I

    iput v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    .line 1328
    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v4, v4, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    mul-int/2addr v4, v1

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    .line 1329
    iget v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidthSlotGap:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    int-to-float v0, v0

    const v3, 0x3fa28f5c    # 1.27f

    mul-float/2addr v0, v3

    .line 1330
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    .line 1333
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1334
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v0

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onSlotSizeChanged(II)V

    :cond_2
    new-array v0, v1, [I

    .line 1343
    iget v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget v7, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    iget v8, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    iget v9, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    move-object v5, p0

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 1344
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 1345
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 1347
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 16

    move-object/from16 v10, p0

    .line 1229
    iget v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget-object v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v1, v1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1230
    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidthSlotGap:I

    add-int/2addr v0, v1

    add-int v1, p3, v1

    div-int/2addr v0, v1

    const/4 v11, 0x1

    if-nez v0, :cond_0

    move v0, v11

    .line 1232
    :cond_0
    iput v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    .line 1235
    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v1, v0, p4

    sub-int/2addr v0, v11

    .line 1236
    iget v2, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    sub-int v0, p2, v1

    .line 1238
    div-int/lit8 v0, v0, 0x2

    const/4 v12, 0x0

    aput v0, p5, v12

    .line 1257
    iput v12, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    .line 1258
    iput v12, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mDeltYoffset:I

    .line 1259
    iget-object v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    const/4 v0, -0x1

    move v6, v0

    move v13, v12

    move v14, v13

    .line 1266
    :goto_0
    iget-object v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 1267
    iget-object v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 1268
    new-instance v15, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    iget-object v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    iget v3, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    iget-object v9, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    move-object v0, v15

    move-object/from16 v5, p0

    move v7, v14

    move v8, v13

    invoke-direct/range {v0 .. v9}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/app/AbstractGalleryActivity;ILcom/zui/gallery/data/AlbumSetCategoryEntry;Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;IIILjava/util/List;)V

    .line 1271
    invoke-virtual {v15}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getContentLength()I

    move-result v0

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "categoryLayoutContentLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlbumSetSlotView"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {v15}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getEndIndex()I

    move-result v6

    .line 1274
    iget-object v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    add-int/2addr v1, v0

    iput v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    .line 1288
    iget-object v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    if-ne v14, v0, :cond_1

    .line 1289
    iget v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    add-int/2addr v0, v1

    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    add-int/2addr v0, v1

    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    iget v2, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->bottom_bar_height:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 1290
    invoke-virtual {v15, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->updateContentLength(I)V

    .line 1291
    iget v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->bottom_bar_height:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    :cond_1
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1297
    :cond_2
    iget v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    iget v1, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    add-int/2addr v0, v1

    iget v2, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    if-lt v0, v2, :cond_5

    if-gt v2, v1, :cond_3

    .line 1299
    iput v12, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v1

    .line 1301
    iput v2, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    if-gez v2, :cond_5

    .line 1303
    iput v12, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    goto :goto_1

    .line 1308
    :cond_4
    iget-object v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1309
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1314
    :cond_5
    :goto_1
    iget v0, v10, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p5, v11

    return-void
.end method

.method private setRang(II)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 1493
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    .line 1494
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1496
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    .line 1498
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1499
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object p1

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onVisibleRangeChanged(II)V

    :cond_1
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 1

    .line 1477
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    .line 1480
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    .line 1482
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1484
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    .line 1486
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1487
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object p1

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onVisibleRangeChanged(II)V

    :cond_2
    return-void
.end method

.method private updateTopLabelRect(II)V
    .locals 7

    if-ltz p1, :cond_4

    .line 1534
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "AlbumSetSlotView"

    const-string/jumbo p2, "updateTopLabelRect firstRect is null"

    .line 1537
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1541
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-gtz p1, :cond_1

    if-nez p1, :cond_2

    .line 1542
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_2

    .line 1543
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 1544
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    .line 1545
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    .line 1543
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1551
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getLableRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1552
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v1, :cond_4

    .line 1553
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    .line 1554
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    sub-int/2addr v3, p2

    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 1555
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 1554
    invoke-virtual {v1, v2, v3, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    return-void
.end method

.method private updateVisibleRange(IIII)V
    .locals 3

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slot range ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]  lable range ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] positon :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlotView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-virtual {p0, p3, p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setVisibleLabelRange(II)V

    .line 1430
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/app/OptimizationAlbum;->isDeleteAlbum()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1431
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setRang(II)V

    return-void

    .line 1434
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->setVisibleRange(II)V

    return-void
.end method

.method private updateVisibleSlotRange()V
    .locals 2

    .line 1439
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    .line 1459
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1460
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->caculateSlotRange(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1462
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    const/4 v0, -0x1

    .line 1463
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    :goto_0
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2

    .line 1663
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->calculate(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getClipIndex()I
    .locals 1

    .line 1569
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->clipIndex:I

    return v0
.end method

.method public getFirstLableHeight()I
    .locals 1

    .line 1097
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mFirstLableHeight:I

    return v0
.end method

.method public getHeightSlotGap()I
    .locals 1

    .line 1161
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    return v0
.end method

.method public getLabelFirstSlotIndex(I)I
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1525
    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getStartIndex()I

    move-result p1

    return p1
.end method

.method public getLabelHeight()I
    .locals 1

    .line 1093
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLabelHeight:I

    return v0
.end method

.method public getLableRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1518
    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getLabelRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineCount()I
    .locals 1

    .line 1177
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLineCount:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->marginLeft:I

    return v0
.end method

.method public getScrollLimit()I
    .locals 2

    .line 1657
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mContentLength:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLabelHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 1085
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .line 1157
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 10

    .line 1578
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1800(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->bottom_bar_height:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    return v1

    .line 1586
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 1587
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    add-int/2addr p2, v0

    .line 1590
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidthSlotGap:I

    add-int/2addr v0, v2

    div-int v0, p1, v0

    .line 1591
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeightSlotGap:I

    add-int/2addr v2, v3

    div-int v2, p2, v2

    .line 1593
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getTrashCanIndex()I

    move-result v3

    if-le v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1597
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========trashCanSlotIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " & getUnitCount() is + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v5

    div-int v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wmmmmmmm"

    .line 1597
    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v1, :cond_2

    move v4, v1

    goto :goto_0

    .line 1600
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v4

    div-int v4, v3, v4

    add-int/lit8 v4, v4, 0x2

    .line 1601
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trashCanSlotIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trashRowId:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tiantiannianzheni"

    invoke-static {v6, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getUnitCount()I

    move-result v5

    if-lt v0, v5, :cond_3

    return v1

    .line 1611
    :cond_3
    iget-object v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    if-eqz v5, :cond_b

    .line 1612
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleLabelStart()I

    move-result v5

    .line 1613
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getVisibleLabelEnd()I

    move-result v7

    if-ltz v5, :cond_a

    if-gez v7, :cond_4

    goto/16 :goto_3

    :cond_4
    :goto_1
    if-gt v5, v7, :cond_b

    .line 1617
    iget-object v8, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_5

    return v1

    .line 1619
    :cond_5
    iget-object v8, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1620
    invoke-virtual {v8, p1, p2, v5}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->contain(III)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1621
    sget-boolean v5, Lcom/zui/gallery/ui/AlbumSetSlotView;->OTHER_FOLDERS_IS_VISIBLE:Z

    if-nez v5, :cond_6

    sget-object v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 1622
    invoke-static {v8}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->access$900(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    move-result-object v7

    .line 1623
    invoke-virtual {v7}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v7

    if-ne v5, v7, :cond_6

    return v1

    .line 1626
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rowIdx:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v2, v4, :cond_7

    if-eq v4, v1, :cond_7

    .line 1630
    invoke-virtual {v8, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getEmptyDefaultPageIndex(II)I

    move-result v0

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aaa index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1633
    :cond_7
    invoke-virtual {v8, v0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getIndex(II)I

    move-result v0

    .line 1635
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->inSelectModel()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->CUSTOM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 1636
    invoke-static {v8}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->access$900(Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    move-result-object v3

    .line 1637
    invoke-virtual {v3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v3

    if-ne v2, v3, :cond_c

    .line 1638
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    if-ge v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    .line 1639
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 1641
    :cond_8
    iget-object v3, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->folderNameRect:Landroid/graphics/Rect;

    invoke-virtual {v8, p1, p2, v3}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->isInFolderNameRegin(IILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1644
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1900(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;->onClicked(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_3
    return v1

    :cond_b
    move v0, v1

    .line 1653
    :cond_c
    :goto_4
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    if-lt v0, p1, :cond_d

    goto :goto_5

    :cond_d
    move v1, v0

    :goto_5
    return v1
.end method

.method public getSlotLineIndex(I)I
    .locals 10

    .line 1189
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1190
    invoke-virtual {v5, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->validSlotIndex(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 1192
    invoke-virtual {v5}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getStartIndex()I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v4, v4

    int-to-float v6, v7

    div-float/2addr v4, v6

    float-to-double v8, v4

    .line 1191
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    add-int/2addr v4, v3

    .line 1194
    iget v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLineCount:I

    if-le v6, v1, :cond_0

    goto :goto_1

    :cond_0
    int-to-double v8, v3

    .line 1199
    invoke-virtual {v5}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getSlotCount()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v7

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    add-double/2addr v8, v5

    double-to-int v3, v8

    goto :goto_0

    .line 1202
    :cond_1
    :goto_1
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLineCount:I

    if-gez p1, :cond_2

    .line 1203
    iput v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLineCount:I

    :cond_2
    if-gez v4, :cond_3

    return v2

    :cond_3
    return v4
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVisibleLabelStart is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " & mVisibleLabelEnd is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wwwwww"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    if-ltz v0, :cond_1

    .line 1130
    :goto_0
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    if-gt v0, v1, :cond_3

    .line 1131
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1133
    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->validSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;

    .line 1141
    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->validSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1142
    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_3
    :goto_1
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .line 1153
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getSubLayoutList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/ui/AlbumSetSlotView$SubLayout;",
            ">;"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSubListLayout:Ljava/util/List;

    return-object v0
.end method

.method public getTobLabeRect()Landroid/graphics/Rect;
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mTopLabelRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getUnitCount()I
    .locals 1

    .line 1101
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 1565
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleLabelEnd()I
    .locals 1

    .line 1173
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    return v0
.end method

.method public getVisibleLabelStart()I
    .locals 1

    .line 1169
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 1561
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1089
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    return v0
.end method

.method public getWidthSlotGap()I
    .locals 1

    .line 1165
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidthSlotGap:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1

    .line 1470
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1472
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    .line 1473
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 1351
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mWidth:I

    .line 1352
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHeight:I

    .line 1353
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->initLayoutParameters()V

    return-void
.end method

.method public setSlotCount(ILjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)Z"
        }
    .end annotation

    .line 1110
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    if-ne v0, p2, :cond_0

    return v1

    .line 1112
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->setEnabled(Z)V

    .line 1114
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->setEnabled(Z)V

    .line 1116
    :cond_1
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    .line 1117
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mEntry:Ljava/util/List;

    .line 1118
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result p1

    .line 1119
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result p2

    .line 1120
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->initLayoutParameters()V

    .line 1121
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;

    .line 1122
    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result p2

    if-eq p1, p2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V
    .locals 2

    .line 1077
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    .line 1078
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->bottom_bar_height:I

    .line 1079
    iget v0, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mLabelHeight:I

    .line 1080
    iget p1, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->firstCategoryLabelHeight:I

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mFirstLableHeight:I

    .line 1081
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->initLayoutParameters()V

    return-void
.end method

.method protected setVisibleLabelRange(II)V
    .locals 1

    .line 1504
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->updateTopLabelRect(II)V

    .line 1505
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-gt p1, p2, :cond_1

    .line 1508
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    .line 1509
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1511
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelEnd:I

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->mVisibleLabelStart:I

    :goto_0
    return-void
.end method
