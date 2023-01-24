.class Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;
.super Ljava/lang/Object;
.source "TouchTracker.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/common/TouchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGestureListener"
.end annotation


# static fields
.field private static final OVER_SCROLLER_FRICTION:F = 0.1f

.field private static final SIMULATED_INFINITY_BOUNDS_FACTOR:I = 0x64


# instance fields
.field private final context:Landroid/content/Context;

.field private final overScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/common/TouchTracker;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "view"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->context:Landroid/content/Context;

    .line 160
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->view:Landroid/view/View;

    .line 161
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->overScroller:Landroid/widget/OverScroller;

    const p2, 0x3dcccccd    # 0.1f

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/widget/OverScroller;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->overScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/view/View;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->view:Landroid/view/View;

    return-object p0
.end method

.method private maybeStartFling(II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 199
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-double v2, p1

    int-to-double v4, p2

    .line 201
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    int-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->overScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->overScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    .line 208
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    .line 209
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float p1, p1

    .line 210
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 211
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$200(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, p1, -0x64

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v8, p1, 0x64

    .line 217
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$200(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 218
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, -0x64

    move v9, p1

    goto :goto_1

    :cond_2
    move v9, v1

    .line 220
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$200(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 221
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, p1, 0x64

    :cond_3
    move v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 207
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 224
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 225
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->view:Landroid/view/View;

    new-instance v1, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;-><init>(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;Landroid/graphics/PointF;Landroid/util/DisplayMetrics;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->overScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event1",
            "event2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$000(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 192
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 193
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->maybeStartFling(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event1",
            "event2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
