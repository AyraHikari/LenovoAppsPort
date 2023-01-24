.class Lcom/zui/gallery/ui/CustomScrollBarView$2;
.super Ljava/lang/Object;
.source "CustomScrollBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/CustomScrollBarView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/CustomScrollBarView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/CustomScrollBarView;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView$2;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView$2;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$300(Lcom/zui/gallery/ui/CustomScrollBarView;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView$2;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$300(Lcom/zui/gallery/ui/CustomScrollBarView;)Landroid/graphics/RectF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 212
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView$2;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->postInvalidate()V

    :cond_0
    return-void
.end method
