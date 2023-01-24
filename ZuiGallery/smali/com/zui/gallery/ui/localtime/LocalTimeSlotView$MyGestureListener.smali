.class Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "LocalTimeSlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private indexChanged:Z

.field private isDown:Z

.field private preIndex:I

.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 776
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->preIndex:I

    const/4 p1, 0x1

    .line 777
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$1;)V
    .locals 0

    .line 772
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;Z)V
    .locals 0

    .line 772
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->cancelDown(Z)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->isDown:Z

    .line 805
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onUp(Z)V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1025
    sget-boolean v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    if-nez v0, :cond_0

    .line 1026
    sput-boolean v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isModelDay(Landroid/view/MotionEvent;)V

    .line 1029
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "zlq--->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onContextClick  \u9f20\u6807\u53f3\u51fb\u4e8b\u4ef6"

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 810
    sget-object p1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setSelectedMode(Landroid/content/Context;Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, -0x1

    .line 818
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->preIndex:I

    const/4 p1, 0x0

    .line 820
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->cancelDown(Z)V

    .line 821
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 825
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p3

    neg-float p4, p4

    float-to-int p4, p4

    invoke-virtual {p3, p4, p1, p2}, Lcom/zui/gallery/ui/ScrollerHelper;->fling(III)V

    .line 826
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/UserInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 827
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/UserInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 828
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->isModelDay(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v0, 0x0

    .line 836
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->cancelDown(Z)V

    .line 838
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 839
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 840
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    .line 845
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotIndexByPosition(FF)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 846
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 847
    iget v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->preIndex:I

    aget v4, p1, v2

    if-ne v3, v4, :cond_0

    .line 848
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    goto :goto_0

    .line 850
    :cond_0
    aget v3, p1, v2

    iput v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->preIndex:I

    .line 851
    iput-boolean v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    .line 855
    :cond_1
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_4

    .line 856
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->valideArray([I)Z

    move-result v0

    if-eqz v0, :cond_b

    aget v0, p1, v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    .line 857
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sub-float/2addr p3, p4

    const/high16 p4, 0x41a00000    # 20.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_2

    .line 858
    sget-object p3, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-static {p3, v2}, Lcom/zui/gallery/util/GroupUtils;->setSelectedMode(Landroid/content/Context;Z)V

    .line 860
    :cond_2
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p3

    aget p4, p1, v2

    invoke-virtual {p3, p4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p3

    .line 861
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    cmpl-float p3, v1, v4

    if-lez p3, :cond_3

    .line 863
    iget-boolean p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_b

    .line 864
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->select([I)V

    .line 865
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object p3

    aget p1, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_1

    .line 868
    :cond_3
    iget-boolean p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_b

    .line 869
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->select([I)V

    .line 870
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object p3

    aget p1, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_1

    .line 877
    :cond_4
    sget-object p3, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-static {p3}, Lcom/zui/gallery/util/GroupUtils;->getSelectedMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p1, :cond_b

    .line 879
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p3

    aget p4, p1, v2

    invoke-virtual {p3, p4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p3

    .line 880
    iget-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    cmpl-float p3, v1, v4

    if-lez p3, :cond_5

    .line 882
    iget-boolean p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_b

    .line 883
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->select([I)V

    .line 884
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object p3

    aget p1, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_1

    .line 887
    :cond_5
    iget-boolean p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_b

    .line 888
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->select([I)V

    .line 889
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object p3

    aget p1, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_1

    .line 894
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    .line 895
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result p3

    .line 894
    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 896
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$600(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)I

    move-result p2

    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    .line 897
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$700(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/Paper;->overScroll(F)V

    goto/16 :goto_1

    .line 902
    :cond_7
    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/zui/gallery/ui/ScrollerHelper;->getTestDistance(III)I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_8

    return v2

    .line 906
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    .line 907
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result p3

    .line 906
    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 908
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$600(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)I

    move-result p2

    if-nez p2, :cond_9

    if-eqz p1, :cond_9

    .line 909
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$700(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p2

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Lcom/zui/gallery/ui/Paper;->overScroll(F)V

    .line 911
    :cond_9
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result p2

    iget-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getScrollLimit()I

    move-result p3

    if-lt p2, p3, :cond_a

    if-lez p1, :cond_a

    .line 912
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$700(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/Paper;->onRelease()V

    .line 914
    :cond_a
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result p2

    if-gtz p2, :cond_b

    if-gez p1, :cond_b

    .line 915
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$700(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/Paper;->onRelease()V

    .line 918
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onScroll()V

    .line 919
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 785
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 787
    :try_start_0
    iget-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 797
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    .line 789
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotIndexByPosition(FF)[I

    move-result-object p1

    .line 790
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->valideArray([I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 797
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 793
    :try_start_2
    aget p1, p1, v1

    .line 794
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->isDown:Z

    .line 795
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onDown(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 798
    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 926
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setSelectedMode(Landroid/content/Context;Z)V

    .line 927
    sget-boolean v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 928
    sput-boolean v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    return v2

    .line 932
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->cancelDown(Z)V

    .line 933
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotIndexByPosition(FF)[I

    move-result-object v0

    .line 937
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->lockRendering()V

    .line 939
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->valideArray([I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 940
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v3

    sget-object v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto/16 :goto_1

    .line 943
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 944
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/gallery/ui/localtime/ListLayout;->select([I)V

    .line 947
    :cond_4
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-interface {v3, v4, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onSingleTapUp(II)V

    .line 948
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p1

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 949
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_8

    .line 951
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 952
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v3, p1, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V

    goto :goto_1

    .line 954
    :cond_5
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v3, p1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V

    goto :goto_1

    .line 963
    :cond_6
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->inSelectModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 964
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSelectionAllIndex(FF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_8

    .line 1005
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->unlockRendering()V

    return v2

    .line 998
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getTimeEntry()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/ListLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/localtime/ListLayout;->getSlotCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 999
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v3, v4, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onSingleTapUpPosition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->unlockRendering()V

    if-eqz v1, :cond_9

    .line 1010
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;

    move-result-object p1

    aget v0, v0, v2

    invoke-interface {p1, v2, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;->onLocalTimeAlbumViewModelChange(II)V

    :cond_9
    return v2

    :catchall_0
    move-exception p1

    .line 1005
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->unlockRendering()V

    .line 1006
    throw p1
.end method
