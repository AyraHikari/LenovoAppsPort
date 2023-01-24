.class Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V
    .locals 0

    .line 2092
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotView$1;)V
    .locals 0

    .line 2092
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;Z)V
    .locals 0

    .line 2092
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1

    .line 2118
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2120
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z

    .line 2121
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onUp(Z)V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2256
    sget-boolean v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    if-nez v0, :cond_0

    .line 2257
    sput-boolean v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2800(Lcom/zui/gallery/ui/AlbumSetSlotView;Landroid/view/MotionEvent;)V

    .line 2260
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

    .line 2127
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onDialogDismiss()V

    const-string/jumbo p1, "tiaoshilenovoone"

    const-string v0, "AlbumSetSlotView onDown event:"

    .line 2128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string/jumbo p1, "tiaoshilenovoone"

    const-string p2, "AlbumSetSlotView onFling event:"

    .line 2135
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2136
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 2137
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 2141
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p3

    neg-float p4, p4

    float-to-int p4, p4

    invoke-virtual {p3, p4, p1, p2}, Lcom/zui/gallery/ui/ScrollerHelper;->fling(III)V

    .line 2142
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2400(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/UserInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2143
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2400(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/UserInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 2144
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2248
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2800(Lcom/zui/gallery/ui/AlbumSetSlotView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 p2, 0x0

    .line 2152
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 2155
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-boolean p3, Lcom/zui/gallery/app/AbstractGalleryActivity;->dispatchingGenericMotionEvent:Z

    const-string/jumbo v0, "tiaoshilenovoone11"

    if-eqz p3, :cond_1

    .line 2156
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v2

    invoke-virtual {p3, v1, p2, v2}, Lcom/zui/gallery/ui/ScrollerHelper;->getTestDistance(III)I

    move-result p3

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumSetSlotView onScroll event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "distanceY:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mLayout.getScrollLimit():"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    .line 2158
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " testOverDistance:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2157
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 2160
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    int-to-float p3, p3

    sub-float/2addr p4, p3

    .line 2161
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p4

    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result p4

    .line 2160
    invoke-virtual {p1, p3, p2, p4}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    goto :goto_0

    .line 2163
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    .line 2164
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p4

    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result p4

    .line 2163
    invoke-virtual {p1, p3, p2, p4}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    goto :goto_0

    .line 2167
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/ScrollerHelper;

    move-result-object p1

    .line 2168
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object p4

    invoke-virtual {p4}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result p4

    .line 2167
    invoke-virtual {p1, p3, p2, p4}, Lcom/zui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 2170
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "overDistance:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2500(Lcom/zui/gallery/ui/AlbumSetSlotView;)I

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 2173
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2600(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/Paper;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/Paper;->overScroll(F)V

    .line 2175
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onScroll()V

    .line 2176
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2099
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 2100
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    const/4 v1, 0x0

    .line 2102
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2002(Z)Z

    .line 2105
    :try_start_0
    iget-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2113
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    .line 2107
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    .line 2109
    iput-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->isDown:Z

    .line 2110
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2113
    :cond_1
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 2114
    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2183
    sget-boolean v0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2184
    sput-boolean v1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    return v2

    .line 2188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp, mDownInScrolling = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AlbumSetSlotView"

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->cancelDown(Z)V

    .line 2190
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2193
    :cond_1
    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2002(Z)Z

    .line 2195
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$000(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v4, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleTapUp, index = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 2221
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    .line 2222
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->inSelectModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2223
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isSystemFolder(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 2224
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 2225
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 2226
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_4

    .line 2227
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onSingleTapUp(I)V

    .line 2228
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2230
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isItemSelect(Lcom/zui/gallery/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2231
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V

    goto :goto_0

    .line 2233
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0, p1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startSelectionAnimation(Lcom/zui/gallery/data/Path;Z)V

    goto :goto_0

    .line 2238
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MyGestureListener;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlotView;)Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;->onSingleTapUp(I)V

    :cond_4
    :goto_0
    return v2
.end method
