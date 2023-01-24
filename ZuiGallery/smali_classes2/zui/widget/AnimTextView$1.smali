.class Lzui/widget/AnimTextView$1;
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

    .line 199
    iput-object p1, p0, Lzui/widget/AnimTextView$1;->this$0:Lzui/widget/AnimTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lzui/widget/AnimTextView$1;->this$0:Lzui/widget/AnimTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lzui/widget/AnimTextView;->access$000(Lzui/widget/AnimTextView;F)V

    .line 203
    iget-object p1, p0, Lzui/widget/AnimTextView$1;->this$0:Lzui/widget/AnimTextView;

    invoke-virtual {p1}, Lzui/widget/AnimTextView;->invalidate()V

    return-void
.end method
