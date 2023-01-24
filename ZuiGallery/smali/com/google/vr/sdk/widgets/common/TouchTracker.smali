.class public Lcom/google/vr/sdk/widgets/common/TouchTracker;
.super Ljava/lang/Object;
.source "TouchTracker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;,
        Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;
    }
.end annotation


# instance fields
.field private flingingEnabled:Z

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private isYawing:Z

.field private lastTouchPointPx:Landroid/graphics/PointF;

.field private final scrollSlopPx:F

.field private startTouchPointPx:Landroid/graphics/PointF;

.field private final target:Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

.field private touchTrackingEnabled:Z

.field private verticalTrackingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "target"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->touchTrackingEnabled:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->verticalTrackingEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->flingingEnabled:Z

    .line 44
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;-><init>(Lcom/google/vr/sdk/widgets/common/TouchTracker;Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    .line 45
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->target:Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

    .line 46
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->scrollSlopPx:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "target",
            "scrollSlopPx"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->touchTrackingEnabled:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->verticalTrackingEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->flingingEnabled:Z

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;-><init>(Lcom/google/vr/sdk/widgets/common/TouchTracker;Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    .line 55
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->target:Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

    .line 56
    iput p4, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->scrollSlopPx:F

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->verticalTrackingEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->target:Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "event"
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->touchTrackingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->flingingEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v2

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->touchTrackingEnabled:Z

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 92
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->isYawing:Z

    if-nez v0, :cond_4

    .line 95
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->verticalTrackingEnabled:Z

    if-nez v0, :cond_3

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->scrollSlopPx:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 102
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->scrollSlopPx:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 105
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->isYawing:Z

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->target:Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 111
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->verticalTrackingEnabled:Z

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 110
    :goto_0
    invoke-interface {p1, v0, v2}, Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;->onPanningEvent(FF)V

    .line 112
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    return v1

    .line 115
    :cond_6
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->touchTrackingEnabled:Z

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->scrollSlopPx:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->scrollSlopPx:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8

    .line 118
    :cond_7
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->target:Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;->getEventListener()Lcom/google/vr/sdk/widgets/common/VrEventListener;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/common/VrEventListener;->onClick()V

    .line 120
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->startTouchPointPx:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->lastTouchPointPx:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v3, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 85
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->isYawing:Z

    return v1
.end method

.method setFlingingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 71
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->flingingEnabled:Z

    return-void
.end method

.method setTouchTrackingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 66
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->touchTrackingEnabled:Z

    return-void
.end method

.method setVerticalTrackingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 61
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker;->verticalTrackingEnabled:Z

    return-void
.end method
