.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/Best4KVideoSelectActivity;->playSavePicButAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 708
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 709
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1000(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 710
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1000(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 711
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1000(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method
