.class Lcom/zui/gallery/ui/microvideo/CustomCircleView$1;
.super Ljava/lang/Object;
.source "CustomCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/microvideo/CustomCircleView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/microvideo/CustomCircleView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/microvideo/CustomCircleView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView$1;->this$0:Lcom/zui/gallery/ui/microvideo/CustomCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView$1;->this$0:Lcom/zui/gallery/ui/microvideo/CustomCircleView;

    iput p1, v0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->rotate:F

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView$1;->this$0:Lcom/zui/gallery/ui/microvideo/CustomCircleView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->postInvalidate()V

    return-void
.end method
