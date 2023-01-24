.class Lcom/zui/gallery/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/zui/gallery/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcom/zui/gallery/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/PhotoView;)V
    .locals 0

    .line 1625
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1626
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/ui/PhotoView$1;)V
    .locals 0

    .line 1625
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/PhotoView;)V

    return-void
.end method

.method private flingImages(FFF)Z
    .locals 0

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    float-to-int p1, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 1814
    iget-object p3, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p3}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/ui/PositionController;->flingPage(II)Z

    const/4 p1, 0x0

    return p1
.end method

.method private getThumbNailIndex(II)I
    .locals 3

    .line 1716
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1000(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$900(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/zui/gallery/ui/PositionController;->getThumbnailIndexOfRect(IIII)I

    move-result p1

    return p1
.end method

.method private isSelectCurrentPicture(II)Z
    .locals 5

    .line 1709
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$3700(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView;->access$3800(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1710
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private scalingFinished()V
    .locals 4

    .line 1904
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$400(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1906
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1907
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$402(Lcom/zui/gallery/ui/PhotoView;Z)Z

    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 2

    .line 1895
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$400(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1897
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1898
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$402(Lcom/zui/gallery/ui/PhotoView;Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 6

    .line 1721
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    .line 1722
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$3900(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/util/RangeArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    .line 1727
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->getImageScale()F

    move-result v3

    .line 1730
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1732
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1734
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    if-eqz v4, :cond_4

    .line 1747
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/zui/gallery/ui/PhotoView$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1748
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "clipping"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1749
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->resetLongPictureToFullView()V

    goto :goto_0

    .line 1751
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$4000(Lcom/zui/gallery/ui/PhotoView;)F

    move-result v2

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/zui/gallery/ui/PositionController;->zoomIn(FFF)V

    goto :goto_0

    .line 1756
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$4100(Lcom/zui/gallery/ui/PhotoView;)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    .line 1757
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$4100(Lcom/zui/gallery/ui/PhotoView;)F

    move-result v2

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/zui/gallery/ui/PositionController;->zoomIn(FFF)V

    goto :goto_0

    .line 1759
    :cond_5
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->resetToFullView()V

    :goto_0
    return v1
.end method

.method public onDown(FF)V
    .locals 1

    .line 1915
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/zui/gallery/ui/PhotoView;->access$1400(Lcom/zui/gallery/ui/PhotoView;I)V

    const/4 p1, 0x0

    .line 1917
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1919
    iget-boolean p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz p2, :cond_0

    return-void

    .line 1922
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/zui/gallery/ui/PhotoView;->access$176(Lcom/zui/gallery/ui/PhotoView;I)I

    .line 1924
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 1925
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1926
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const p2, 0x7fffffff

    invoke-static {p1, p2}, Lcom/zui/gallery/ui/PhotoView;->access$4502(Lcom/zui/gallery/ui/PhotoView;I)I

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    .line 1798
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1800
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-eqz v0, :cond_1

    return v1

    .line 1802
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, p3, p4}, Lcom/zui/gallery/ui/PhotoView;->access$4300(Lcom/zui/gallery/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1803
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1805
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p3, p4, p1}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->flingImages(FFF)Z

    .line 1807
    :goto_0
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mHadFling:Z

    return v1
.end method

.method public onLongPress(I)V
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/PhotoView$Listener;->onLongPress(I)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 3

    .line 1840
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    .line 1841
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$4400(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1842
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    return v1

    .line 1844
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_2

    return v1

    .line 1846
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-eqz v0, :cond_3

    return v1

    .line 1848
    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1851
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/zui/gallery/ui/PositionController;->scaleBy(FFF)I

    move-result p1

    .line 1856
    iget p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    const p3, 0x3f7851ec    # 0.97f

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_5

    const p3, 0x3f83d70a    # 1.03f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_6

    :cond_5
    move v2, v1

    .line 1860
    :cond_6
    iget-boolean p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz p2, :cond_7

    if-eqz v2, :cond_7

    if-gez p1, :cond_7

    .line 1862
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 1866
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lcom/zui/gallery/ui/PhotoView;->access$172(Lcom/zui/gallery/ui/PhotoView;I)I

    const-string p1, "PinchIn"

    .line 1867
    invoke-static {p1}, Lcom/zui/gallery/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1873
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    :cond_7
    return v1

    :cond_8
    :goto_0
    return v2
.end method

.method public onScaleBegin(FF)Z
    .locals 3

    .line 1820
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$4400(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1821
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    return v1

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$3900(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/util/RangeArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_2

    return v1

    .line 1828
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/PositionController;->beginScale(FF)V

    .line 1832
    iput-boolean v2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1834
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    return v1
.end method

.method public onScaleEnd()V
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$4400(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1884
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    return-void

    .line 1886
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_2

    return-void

    .line 1888
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-eqz v0, :cond_3

    return-void

    .line 1890
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->endScale()V

    .line 1891
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->scalingFinished()V

    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 4

    .line 1767
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    .line 1768
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1770
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1771
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1772
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    :cond_2
    neg-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    neg-float p2, p2

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 1778
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, p3, p4}, Lcom/zui/gallery/ui/PhotoView;->access$4200(Lcom/zui/gallery/ui/PhotoView;FF)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1780
    iget-object p4, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p4}, Lcom/zui/gallery/ui/PhotoView;->access$900(Lcom/zui/gallery/ui/PhotoView;)I

    move-result p4

    if-gtz p4, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    .line 1782
    :cond_3
    iget-object p4, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p4}, Lcom/zui/gallery/ui/PhotoView;->access$1000(Lcom/zui/gallery/ui/PhotoView;)I

    move-result p4

    if-ltz p4, :cond_4

    move p1, v1

    :cond_4
    :goto_1
    const/high16 p4, 0x44160000    # 600.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_5

    goto :goto_2

    :cond_5
    move v2, p1

    .line 1791
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/zui/gallery/ui/PositionController;->scrollPage(II)V

    return v1
.end method

.method public onSingleTapUp(FF)Z
    .locals 4

    .line 1655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$100(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v1

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/4 v2, -0x2

    invoke-static {v0, v2}, Lcom/zui/gallery/ui/PhotoView;->access$172(Lcom/zui/gallery/ui/PhotoView;I)I

    .line 1664
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1667
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1670
    :cond_1
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1671
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1672
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    aput p2, v0, v1

    .line 1676
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1677
    aget p1, v0, v3

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 1678
    aget v0, v0, v1

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 1679
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zui/gallery/ui/PhotoView$Listener;->onSingleTapUp(II)V

    .line 1680
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1681
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->isSelectCurrentPicture(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1683
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->isSelected(I)Z

    move-result p1

    .line 1684
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object p2

    xor-int/2addr p1, v1

    invoke-interface {p2, p1, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->setSelected(ZI)V

    .line 1685
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 1686
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2}, Lcom/zui/gallery/ui/PhotoView;->access$3500(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p2

    invoke-static {p1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 1689
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$3500(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    .line 1690
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2}, Lcom/zui/gallery/ui/PhotoView;->access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/zui/gallery/ui/PhotoView$Listener;->setTitleInfo(I)V

    .line 1691
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController;->snapback()V

    goto :goto_0

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->getThumbNailIndex(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/PhotoView;->access$3602(Lcom/zui/gallery/ui/PhotoView;I)I

    :cond_3
    :goto_0
    return v1
.end method

.method public onUp()V
    .locals 3

    .line 1931
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    return-void

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$172(Lcom/zui/gallery/ui/PhotoView;I)I

    .line 1939
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1940
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void

    .line 1944
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$3600(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1945
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$3600(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/PhotoView;->getThumbnailMoveDistance(I)I

    .line 1949
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$3602(Lcom/zui/gallery/ui/PhotoView;I)I

    .line 1952
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    .line 1953
    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$4600(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$3600(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1954
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1300(Lcom/zui/gallery/ui/PhotoView;)V

    :cond_4
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1959
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    return-void
.end method
