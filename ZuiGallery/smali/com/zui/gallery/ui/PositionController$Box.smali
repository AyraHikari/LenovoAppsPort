.class Lcom/zui/gallery/ui/PositionController$Box;
.super Lcom/zui/gallery/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Box"
.end annotation


# instance fields
.field public mAbsoluteX:I

.field public mCurrentScale:F

.field public mCurrentY:I

.field public mFromScale:F

.field public mFromY:I

.field public mImageH:I

.field public mImageW:I

.field public mScaleMax:F

.field public mScaleMin:F

.field public mToScale:F

.field public mToY:I

.field public mUseViewSize:Z

.field final synthetic this$0:Lcom/zui/gallery/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/PositionController;)V
    .locals 0

    .line 1559
    iput-object p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Animatable;-><init>(Lcom/zui/gallery/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V
    .locals 0

    .line 1559
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Box;-><init>(Lcom/zui/gallery/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/PositionController$Box;IFI)Z
    .locals 0

    .line 1559
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result p0

    return p0
.end method

.method private doAnimation(IFI)Z
    .locals 1

    .line 1625
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/PositionController$Box;->clampScale(F)F

    move-result p2

    .line 1627
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-eq p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1633
    :cond_0
    iput p3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    .line 1634
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mFromY:I

    .line 1635
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mFromScale:F

    .line 1636
    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToY:I

    .line 1637
    iput p2, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    .line 1638
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->startTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    .line 1639
    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$2100()[I

    move-result-object p1

    aget p1, p1, p3

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationDuration:I

    .line 1640
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController$Box;->advanceAnimation()Z

    const/4 p1, 0x1

    return p1
.end method

.method private interpolateFlingPage(F)Z
    .locals 5

    .line 1661
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1662
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    iget v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PositionController;->access$2300(Lcom/zui/gallery/ui/PositionController;F)V

    .line 1664
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 1665
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/FlingScroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 1668
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$2600(Lcom/zui/gallery/ui/PositionController;)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v4}, Lcom/zui/gallery/ui/PositionController;->access$2600(Lcom/zui/gallery/ui/PositionController;)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/FlingScroller;->getCurrVelocityY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 1670
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v0, v3}, Lcom/zui/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .line 1671
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$2700(Lcom/zui/gallery/ui/PositionController;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$2700(Lcom/zui/gallery/ui/PositionController;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1672
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/FlingScroller;->getCurrVelocityY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 1673
    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/zui/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private interpolateLinear(F)Z
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1681
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToY:I

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 1682
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    return v1

    .line 1685
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mFromY:I

    int-to-float v2, v0

    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToY:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 1686
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mFromScale:F

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    .line 1687
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1688
    invoke-static {p1}, Lcom/zui/gallery/ui/CaptureAnimation;->calculateScale(F)F

    move-result p1

    .line 1689
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    return v3

    .line 1692
    :cond_1
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToY:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mToScale:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method


# virtual methods
.method public clampScale(F)F
    .locals 3

    .line 1646
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 1648
    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$1000()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    mul-float/2addr v1, v2

    .line 1646
    invoke-static {p1, v0, v1}, Lcom/zui/gallery/common/Utils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method protected interpolate(F)Z
    .locals 2

    .line 1653
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1654
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Box;->interpolateFlingPage(F)Z

    move-result p1

    return p1

    .line 1656
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Box;->interpolateLinear(F)Z

    move-result p1

    return p1
.end method

.method public startSnapback()Z
    .locals 5

    .line 1584
    iget-wide v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1586
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    .line 1587
    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1589
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    .line 1590
    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/PositionController$Listener;->isHoldingDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$700(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$800(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_3

    return v1

    .line 1595
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    .line 1598
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$800(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/util/RangeArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_7

    .line 1599
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$900(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    .line 1600
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v3}, Lcom/zui/gallery/ui/PositionController;->access$900(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$1000()F

    move-result v4

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    .line 1601
    :goto_1
    iget v4, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v4, v2, v3}, Lcom/zui/gallery/common/Utils;->clamp(FFF)F

    move-result v2

    .line 1603
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$1100()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/zui/gallery/ui/PositionController;->access$1200(Lcom/zui/gallery/ui/PositionController;FI)V

    .line 1607
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v3, v2}, Lcom/zui/gallery/ui/PositionController;->access$2400(Lcom/zui/gallery/ui/PositionController;F)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1608
    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    sub-float/2addr v3, v2

    .line 1609
    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v4}, Lcom/zui/gallery/ui/PositionController;->access$2500(Lcom/zui/gallery/ui/PositionController;)F

    move-result v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v0, v3

    .line 1611
    :cond_6
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v3}, Lcom/zui/gallery/ui/PositionController;->access$2600(Lcom/zui/gallery/ui/PositionController;)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/ui/PositionController$Box;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v4}, Lcom/zui/gallery/ui/PositionController;->access$2700(Lcom/zui/gallery/ui/PositionController;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    goto :goto_2

    .line 1615
    :cond_7
    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    move v0, v1

    .line 1618
    :goto_2
    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentY:I

    if-ne v3, v0, :cond_9

    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    return v1

    :cond_9
    :goto_3
    const/4 v1, 0x2

    .line 1619
    invoke-direct {p0, v0, v2, v1}, Lcom/zui/gallery/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v0

    return v0
.end method
