.class Lcom/zui/gallery/app/MovieControllerOverlay$3;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieControllerOverlay;->startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

.field final synthetic val$isIn:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieControllerOverlay;Z)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    iput-boolean p2, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->val$isIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->access$102(Lcom/zui/gallery/app/MovieControllerOverlay;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->access$102(Lcom/zui/gallery/app/MovieControllerOverlay;Z)Z

    .line 179
    iget-boolean p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->val$isIn:Z

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->hide()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$3;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->access$102(Lcom/zui/gallery/app/MovieControllerOverlay;Z)Z

    return-void
.end method
