.class Lcom/zui/gallery/ui/PositionController$Gap;
.super Lcom/zui/gallery/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Gap"
.end annotation


# instance fields
.field public mCurrentGap:I

.field public mDefaultSize:I

.field public mFromGap:I

.field public mToGap:I

.field final synthetic this$0:Lcom/zui/gallery/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/PositionController;)V
    .locals 0

    .line 1701
    iput-object p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->this$0:Lcom/zui/gallery/ui/PositionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Animatable;-><init>(Lcom/zui/gallery/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/PositionController;Lcom/zui/gallery/ui/PositionController$1;)V
    .locals 0

    .line 1701
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PositionController$Gap;-><init>(Lcom/zui/gallery/ui/PositionController;)V

    return-void
.end method


# virtual methods
.method public doAnimation(II)Z
    .locals 1

    .line 1719
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    if-ne v0, p1, :cond_0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1722
    :cond_0
    iput p2, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationKind:I

    .line 1723
    iget p2, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    iput p2, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mFromGap:I

    .line 1724
    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mToGap:I

    .line 1725
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->startTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    .line 1726
    invoke-static {}, Lcom/zui/gallery/ui/PositionController;->access$2100()[I

    move-result-object p1

    iget p2, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationKind:I

    aget p1, p1, p2

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationDuration:I

    .line 1727
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PositionController$Gap;->advanceAnimation()Z

    const/4 p1, 0x1

    return p1
.end method

.method protected interpolate(F)Z
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 1734
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mToGap:I

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    return v1

    .line 1737
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mFromGap:I

    int-to-float v2, v0

    iget v3, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mToGap:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    .line 1738
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationKind:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1739
    invoke-static {p1}, Lcom/zui/gallery/ui/CaptureAnimation;->calculateScale(F)F

    move-result p1

    .line 1740
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    return v3

    .line 1743
    :cond_1
    iget p1, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mCurrentGap:I

    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mToGap:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method public startSnapback()Z
    .locals 4

    .line 1712
    iget-wide v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1714
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/PositionController$Gap;->mDefaultSize:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/ui/PositionController$Gap;->doAnimation(II)Z

    move-result v0

    return v0
.end method
