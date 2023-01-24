.class Lcom/zui/gallery/ui/PositionController$Platform;
.super Lcom/zui/gallery/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/zui/gallery/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/PositionController;)V
    .locals 0

    .line 1430
    iput-object p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Animatable;-><init>(Lcom/zui/gallery/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V
    .locals 0

    .line 1430
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Platform;-><init>(Lcom/zui/gallery/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/PositionController$Platform;III)Z
    .locals 0

    .line 1430
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PositionController$Platform;->doAnimation(III)Z

    move-result p0

    return p0
.end method

.method private doAnimation(III)Z
    .locals 1

    .line 1493
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1495
    :cond_0
    iput p3, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationKind:I

    .line 1496
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mFromX:I

    .line 1497
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mFromY:I

    .line 1498
    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    .line 1499
    iput p2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToY:I

    .line 1500
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->startTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    .line 1501
    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$2100()[I

    move-result-object p1

    aget p1, p1, p3

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationDuration:I

    .line 1502
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController$Platform;->advanceAnimation()Z

    const/4 p1, 0x1

    return p1
.end method

.method private interpolateFlingPage(F)Z
    .locals 6

    .line 1516
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1517
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$800(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/util/RangeArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1518
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v2, v0}, Lcom/zui/gallery/ui/PositionController;->access$2300(Lcom/zui/gallery/ui/PositionController;F)V

    .line 1520
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 1521
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/FlingScroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 1524
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$1500(Lcom/zui/gallery/ui/PositionController;)I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    if-le v0, v2, :cond_0

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v5}, Lcom/zui/gallery/ui/PositionController;->access$1500(Lcom/zui/gallery/ui/PositionController;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/FlingScroller;->getCurrVelocityX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 1526
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v0, v4}, Lcom/zui/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .line 1527
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$1600(Lcom/zui/gallery/ui/PositionController;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$1600(Lcom/zui/gallery/ui/PositionController;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1528
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$2200(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/FlingScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/FlingScroller;->getCurrVelocityX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 1529
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Lcom/zui/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private interpolateLinear(F)Z
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1538
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 1539
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToY:I

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    return v1

    .line 1542
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationKind:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 1543
    invoke-static {p1}, Lcom/zui/gallery/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    .line 1545
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mFromX:I

    int-to-float v3, v0

    iget v4, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 1546
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mFromY:I

    int-to-float v3, v0

    iget v4, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToY:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    .line 1547
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    return v0

    .line 1550
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToX:I

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mToY:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2

    .line 1508
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1509
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result p1

    return p1

    .line 1511
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result p1

    return p1
.end method

.method public startSnapback()Z
    .locals 7

    .line 1436
    iget-wide v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1438
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mAnimationKind:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    .line 1439
    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$600(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/ui/PositionController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$700(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1444
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$800(Lcom/zui/gallery/ui/PositionController;)Lcom/zui/gallery/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PositionController$Box;

    .line 1445
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$900(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMin:F

    .line 1446
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v3}, Lcom/zui/gallery/ui/PositionController;->access$900(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$1000()F

    move-result v4

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_4
    iget v3, v0, Lcom/zui/gallery/ui/PositionController$Box;->mScaleMax:F

    .line 1447
    :goto_1
    iget v4, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v4, v2, v3}, Lcom/zui/gallery/common/Utils;->clamp(FFF)F

    move-result v2

    .line 1448
    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    .line 1449
    iget v4, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultY:I

    .line 1451
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$1100()I

    move-result v6

    invoke-static {v5, v2, v6}, Lcom/zui/gallery/ui/PositionController;->access$1200(Lcom/zui/gallery/ui/PositionController;FI)V

    .line 1461
    iget-object v5, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v5, v2}, Lcom/zui/gallery/ui/PositionController;->access$1300(Lcom/zui/gallery/ui/PositionController;F)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1462
    iget v0, v0, Lcom/zui/gallery/ui/PositionController$Box;->mCurrentScale:F

    sub-float/2addr v0, v2

    .line 1463
    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$1400(Lcom/zui/gallery/ui/PositionController;)F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    add-int/2addr v3, v0

    .line 1465
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$1500(Lcom/zui/gallery/ui/PositionController;)I

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v2}, Lcom/zui/gallery/ui/PositionController;->access$1600(Lcom/zui/gallery/ui/PositionController;)I

    move-result v2

    invoke-static {v3, v0, v2}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    .line 1467
    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentX:I

    if-ne v2, v0, :cond_7

    iget v2, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mCurrentY:I

    if-eq v2, v4, :cond_6

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    const/4 v1, 0x2

    .line 1468
    invoke-direct {p0, v0, v4, v1}, Lcom/zui/gallery/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method public updateDefaultXY()V
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$1700(Lcom/zui/gallery/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$1800(Lcom/zui/gallery/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$1800(Lcom/zui/gallery/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$1900(Lcom/zui/gallery/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    .line 1483
    iget-object v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v0}, Lcom/zui/gallery/ui/PositionController;->access$1800(Lcom/zui/gallery/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/PositionController$Platform;->this$0:Lcom/zui/gallery/ui/PositionController;

    invoke-static {v1}, Lcom/zui/gallery/ui/PositionController;->access$2000(Lcom/zui/gallery/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1486
    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultX:I

    .line 1487
    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Platform;->mDefaultY:I

    :goto_0
    return-void
.end method
