.class Lcom/zui/gallery/app/MovieControllerOverlay$2;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$isIn:Z

.field final synthetic val$title:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieControllerOverlay;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    iput-boolean p2, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$isIn:Z

    iput-object p3, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$title:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 135
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$isIn:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f0802a4

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$title:Landroid/view/View;

    if-eqz v0, :cond_0

    neg-float v3, p1

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomLayoutView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomLayoutView:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$title:Landroid/view/View;

    if-eqz v0, :cond_3

    sub-float v3, p1, v1

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomLayoutView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    iget-object v0, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomLayoutView:Landroid/view/View;

    sub-float/2addr v1, p1

    iget-object v3, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$2;->val$bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_0
    return-void
.end method
