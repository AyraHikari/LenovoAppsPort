.class Lzui/widget/AnimTextView$2;
.super Ljava/lang/Object;
.source "AnimTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/AnimTextView;


# direct methods
.method constructor <init>(Lzui/widget/AnimTextView;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lzui/widget/AnimTextView$2;->this$0:Lzui/widget/AnimTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 210
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 211
    iget-object v0, p0, Lzui/widget/AnimTextView$2;->this$0:Lzui/widget/AnimTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x428c0000    # 70.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lzui/widget/AnimTextView;->setRotationY(F)V

    .line 212
    iget-object v0, p0, Lzui/widget/AnimTextView$2;->this$0:Lzui/widget/AnimTextView;

    invoke-static {v0, p1}, Lzui/widget/AnimTextView;->access$100(Lzui/widget/AnimTextView;F)V

    .line 213
    iget-object p1, p0, Lzui/widget/AnimTextView$2;->this$0:Lzui/widget/AnimTextView;

    invoke-virtual {p1}, Lzui/widget/AnimTextView;->invalidate()V

    return-void
.end method
