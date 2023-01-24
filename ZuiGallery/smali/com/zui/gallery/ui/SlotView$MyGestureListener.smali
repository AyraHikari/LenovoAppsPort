.class Lcom/zui/gallery/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private indexChanged:Z

.field private isDown:Z

.field private preIndex:I

.field final synthetic this$0:Lcom/zui/gallery/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/SlotView;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 921
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->preIndex:I

    const/4 p1, 0x1

    .line 922
    iput-boolean p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/SlotView;Lcom/zui/gallery/ui/SlotView$1;)V
    .locals 0

    .line 917
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/SlotView;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/SlotView$MyGestureListener;Z)V
    .locals 0

    .line 917
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    .line 946
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/SlotView$Listener;->onUp(Z)V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1090
    sget-boolean v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    if-nez v0, :cond_0

    .line 1091
    sput-boolean v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/SlotView;->access$2100(Lcom/zui/gallery/ui/SlotView;Landroid/view/MotionEvent;)V

    .line 1094
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

    .line 951
    sget-object p1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setSelectedMode(Landroid/content/Context;Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, -0x1

    .line 959
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->preIndex:I

    const/4 p1, 0x0

    .line 961
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 962
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 965
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1600(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p3

    neg-float p4, p4

    float-to-int p4, p4

    invoke-virtual {p3, p4, p1, p2}, Lcom/zui/gallery/ui/ScrollerHelper;->fling(III)V

    .line 966
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1700(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/UserInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1700(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/UserInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 967
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/SlotView;->access$2100(Lcom/zui/gallery/ui/SlotView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x0

    .line 974
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " distanceX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " distanceY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SlotView"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->inSelectModel()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 979
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    .line 983
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    .line 984
    iget v3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->preIndex:I

    if-ne v3, p1, :cond_0

    .line 985
    iput-boolean v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    goto :goto_0

    .line 987
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->preIndex:I

    .line 988
    iput-boolean v2, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    .line 991
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p1, p1, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-lez p1, :cond_3

    .line 992
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v0, v5}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    if-eq p1, v4, :cond_7

    .line 994
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sub-float/2addr p3, p4

    const/high16 p4, 0x41a00000    # 20.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    .line 995
    sget-object p3, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-static {p3, v2}, Lcom/zui/gallery/util/GroupUtils;->setSelectedMode(Landroid/content/Context;Z)V

    .line 997
    :cond_1
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p3

    .line 998
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    cmpl-float p3, v1, v3

    if-lez p3, :cond_2

    .line 1000
    iget-boolean p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_7

    .line 1001
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/SlotView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_1

    .line 1004
    :cond_2
    iget-boolean p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_7

    .line 1005
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/SlotView$Listener;->onSingleTapUp(II)V

    goto/16 :goto_1

    .line 1012
    :cond_3
    sget-object p1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->getSelectedMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1013
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    invoke-virtual {p1, p3, p4}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    if-eq p1, v4, :cond_7

    .line 1015
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p3

    .line 1016
    iget-object p4, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    cmpl-float p3, v1, v3

    if-lez p3, :cond_4

    .line 1018
    iget-boolean p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_7

    .line 1019
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/SlotView$Listener;->onSingleTapUp(II)V

    goto :goto_1

    .line 1022
    :cond_4
    iget-boolean p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->indexChanged:Z

    if-eqz p3, :cond_7

    .line 1023
    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/zui/gallery/ui/SlotView$Listener;->onSingleTapUp(II)V

    goto :goto_1

    .line 1028
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1600(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    .line 1029
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result p3

    .line 1028
    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 1030
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$1800(Lcom/zui/gallery/ui/SlotView;)I

    move-result p2

    if-nez p2, :cond_7

    if-eqz p1, :cond_7

    .line 1031
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$1900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/Paper;->overScroll(F)V

    goto :goto_1

    .line 1036
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1600(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    .line 1037
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result p3

    .line 1036
    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 1038
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$1800(Lcom/zui/gallery/ui/SlotView;)I

    move-result p2

    if-nez p2, :cond_7

    if-eqz p1, :cond_7

    .line 1039
    iget-object p2, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/SlotView;->access$1900(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/Paper;->overScroll(F)V

    .line 1042
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 930
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 932
    :try_start_0
    iget-boolean v1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 939
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    .line 933
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    .line 935
    iput-boolean v1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    .line 936
    iget-object v1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/zui/gallery/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    :cond_1
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 940
    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1049
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setSelectedMode(Landroid/content/Context;Z)V

    .line 1050
    sget-boolean v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1051
    sput-boolean v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    return v2

    .line 1055
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 1056
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$2000(Lcom/zui/gallery/ui/SlotView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1400(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 1059
    iget-object v3, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/SlotView;->access$1500(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$Listener;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-interface {v3, v0, p1}, Lcom/zui/gallery/ui/SlotView$Listener;->onSingleTapUp(II)V

    .line 1060
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->inSelectModel()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1061
    iget-object p1, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "SlotView"

    const-string/jumbo v0, "slotView onSingleTapUp is null"

    .line 1064
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-eqz p1, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/SlotView;->access$1300(Lcom/zui/gallery/ui/SlotView;)Lcom/zui/gallery/ui/SlotView$SlotRenderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/SlotView$SlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1071
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/SlotView;->startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V

    goto :goto_0

    .line 1073
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, p1, v2}, Lcom/zui/gallery/ui/SlotView;->startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V

    :cond_4
    :goto_0
    return v2
.end method
