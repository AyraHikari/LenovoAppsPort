.class Lcom/zui/gallery/filtershow/ui/FocusRingView$3;
.super Ljava/lang/Object;
.source "FocusRingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/ui/FocusRingView;->initSacleAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/ui/FocusRingView;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$3;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$3;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->access$202(Lcom/zui/gallery/filtershow/ui/FocusRingView;F)F

    .line 132
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView$3;->this$0:Lcom/zui/gallery/filtershow/ui/FocusRingView;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method
