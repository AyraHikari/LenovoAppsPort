.class Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;
.super Ljava/lang/Object;
.source "TouchTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->maybeStartFling(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

.field final synthetic val$dm:Landroid/util/DisplayMetrics;

.field final synthetic val$overScrollingPoint:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;Landroid/graphics/PointF;Landroid/util/DisplayMetrics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$overScrollingPoint",
            "val$dm"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->val$overScrollingPoint:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->val$dm:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->access$300(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->access$300(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 230
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->access$300(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->access$300(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$400(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;

    move-result-object v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->val$overScrollingPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v4

    .line 234
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$200(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->val$overScrollingPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 232
    :goto_0
    invoke-interface {v2, v4, v5}, Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;->onPanningEvent(FF)V

    .line 235
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->val$overScrollingPoint:Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 236
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->this$0:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->access$100(Lcom/google/vr/sdk/widgets/common/TouchTracker;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->val$dm:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 237
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener$1;->this$1:Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;->access$500(Lcom/google/vr/sdk/widgets/common/TouchTracker$FlingGestureListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
