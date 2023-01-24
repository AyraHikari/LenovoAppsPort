.class Lcom/google/vr/cardboard/TransitionView$4;
.super Ljava/lang/Object;
.source "TransitionView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/TransitionView;->fadeOutAndRemove(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/TransitionView;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/TransitionView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView$4;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 322
    iget-object p1, p0, Lcom/google/vr/cardboard/TransitionView$4;->this$0:Lcom/google/vr/cardboard/TransitionView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/vr/cardboard/TransitionView;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/google/vr/cardboard/TransitionView$4;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {p1}, Lcom/google/vr/cardboard/TransitionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$4;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 326
    iget-object p1, p0, Lcom/google/vr/cardboard/TransitionView$4;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$600(Lcom/google/vr/cardboard/TransitionView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/google/vr/cardboard/TransitionView$4;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$600(Lcom/google/vr/cardboard/TransitionView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
