.class public Lcom/zui/gallery/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private bottom_bar_height:I

.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

.field private mLeftRightMargin:I

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/zui/gallery/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/SlotView;)V
    .locals 1

    .line 578
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance p1, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;-><init>(Lcom/zui/gallery/ui/SlotView$1;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    .line 599
    new-instance p1, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-direct {p1, v0}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;-><init>(Lcom/zui/gallery/ui/SlotView$1;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    const/4 p1, 0x0

    .line 601
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->bottom_bar_height:I

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/SlotView$Layout;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    return p0
.end method

.method private initLayoutParameters()V
    .locals 11

    .line 720
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 725
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    .line 726
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLayoutParameters, mIsPanoAlbum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1000(Lcom/zui/gallery/ui/SlotView;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "panhui"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1000(Lcom/zui/gallery/ui/SlotView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    .line 732
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 733
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoGap:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    goto :goto_2

    .line 738
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mWidth:I

    iget v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->columnLand:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->columnPort:I

    .line 739
    :goto_0
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v4, v4, Lcom/zui/gallery/ui/SlotView$Spec;->slotGap:I

    iput v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 740
    iget-object v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v4, v4, Lcom/zui/gallery/ui/SlotView$Spec;->leftRightMargin:I

    iput v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mLeftRightMargin:I

    if-eq v4, v2, :cond_2

    .line 742
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mWidth:I

    mul-int/2addr v4, v1

    sub-int/2addr v2, v4

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    div-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    goto :goto_1

    .line 744
    :cond_2
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mWidth:I

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    div-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    .line 746
    :goto_1
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 748
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1000(Lcom/zui/gallery/ui/SlotView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    .line 750
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 751
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/SlotView$Spec;->slotPanoGap:I

    iput v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 760
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 761
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    invoke-interface {v0, v2, v4}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    :cond_4
    new-array v0, v1, [I

    .line 776
    iget v6, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    iget v7, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mWidth:I

    iget v8, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v9, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    move-object v5, p0

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/zui/gallery/ui/SlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 777
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 778
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 781
    invoke-direct {p0}, Lcom/zui/gallery/ui/SlotView$Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 4

    .line 682
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int v1, p2, v0

    add-int/2addr v0, p4

    div-int/2addr v1, v0

    const/4 v0, 0x1

    if-nez v1, :cond_0

    move v1, v0

    .line 684
    :cond_0
    iput v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mUnitCount:I

    .line 687
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr p4, v1

    sub-int/2addr v1, v0

    .line 688
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    add-int/2addr p4, v1

    sub-int/2addr p2, p4

    .line 690
    div-int/lit8 p2, p2, 0x2

    const/4 p4, 0x0

    aput p2, p5, p4

    .line 694
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0600d1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 695
    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    div-int/2addr v1, v2

    .line 697
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v2

    const v3, 0x7f060307

    if-eqz v2, :cond_3

    .line 699
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    move p2, p4

    goto :goto_1

    .line 701
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 702
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 703
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getMarginHeight(Lcom/zui/gallery/app/AbstractGalleryActivity;)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_1

    .line 705
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/app/AlbumAddPage;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 707
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/app/AlbumPage;

    if-eqz v2, :cond_5

    .line 708
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :cond_5
    :goto_1
    mul-int/2addr p3, v1

    sub-int/2addr v1, v0

    .line 710
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    add-int/2addr p3, v1

    add-int/2addr p3, p2

    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$1100(Lcom/zui/gallery/ui/SlotView;)I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mContentLength:I

    sub-int/2addr p1, p3

    .line 715
    div-int/lit8 p1, p1, 0x2

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p5, v0

    return-void
.end method

.method private setVisibleRange(II)V
    .locals 1

    .line 819
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    .line 821
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    .line 822
    iput p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 824
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    .line 826
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 827
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p1

    iget p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    invoke-interface {p1, p2, v0}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    :cond_2
    return-void
.end method

.method private updateVisibleSlotRange()V
    .locals 4

    .line 791
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    .line 802
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1100(Lcom/zui/gallery/ui/SlotView;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    .line 803
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 804
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1100(Lcom/zui/gallery/ui/SlotView;)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 806
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 808
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/ui/SlotView$Layout;->setVisibleRange(II)V

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getScrollLimit()I
    .locals 2

    .line 892
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mContentLength:I

    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getSlotGap()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .line 657
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8

    .line 840
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 841
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    add-int/2addr v0, v1

    .line 844
    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    sub-int/2addr p1, v1

    .line 845
    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mLeftRightMargin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sub-int/2addr p1, v1

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1100(Lcom/zui/gallery/ui/SlotView;)I

    move-result v1

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 851
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 852
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1200(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/app/AlbumAddPage;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 854
    :cond_1
    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    int-to-float v3, v1

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->bottom_bar_height:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    return v2

    :cond_2
    :goto_0
    if-ltz p1, :cond_8

    if-gez v0, :cond_3

    goto :goto_1

    .line 865
    :cond_3
    iget p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int v3, p2, v1

    div-int v3, p1, v3

    .line 866
    iget v4, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    add-int v5, v4, v1

    div-int v5, v0, v5

    .line 868
    iget v6, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mUnitCount:I

    if-lt v3, v6, :cond_4

    return v2

    :cond_4
    add-int v7, p2, v1

    .line 876
    rem-int/2addr p1, v7

    if-lt p1, p2, :cond_5

    return v2

    :cond_5
    add-int/2addr v1, v4

    .line 880
    rem-int/2addr v0, v1

    if-lt v0, v4, :cond_6

    return v2

    :cond_6
    mul-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 888
    iget p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    if-lt v5, p1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v5

    :cond_8
    :goto_1
    return v2
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 629
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 636
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mLeftRightMargin:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 638
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/SlotView;->access$1000(Lcom/zui/gallery/ui/SlotView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 643
    :cond_1
    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 644
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1100(Lcom/zui/gallery/ui/SlotView;)I

    move-result p1

    iget v2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v3, v2

    mul-int/2addr v1, v3

    add-int/2addr p1, v1

    .line 646
    iget v1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v1, v0

    add-int/2addr v2, p1

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .line 653
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 836
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 832
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1

    .line 813
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 814
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    .line 815
    invoke-direct {p0}, Lcom/zui/gallery/ui/SlotView$Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 785
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mWidth:I

    .line 786
    iput p2, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHeight:I

    .line 787
    invoke-direct {p0}, Lcom/zui/gallery/ui/SlotView$Layout;->initLayoutParameters()V

    return-void
.end method

.method public setSlotCount(I)Z
    .locals 4

    .line 609
    iget v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 612
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 614
    :cond_1
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSlotCount:I

    .line 615
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result p1

    .line 616
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 617
    invoke-direct {p0}, Lcom/zui/gallery/ui/SlotView$Layout;->initLayoutParameters()V

    .line 618
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mVerticalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mHorizontalPadding:Lcom/zui/gallery/ui/SlotView$IntegerAnimation;

    .line 619
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V
    .locals 1

    .line 604
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->mSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    .line 605
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060307

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/SlotView$Layout;->bottom_bar_height:I

    return-void
.end method
