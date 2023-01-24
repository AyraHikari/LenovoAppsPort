.class Lcom/zui/gallery/ui/CustomScrollBarView$1;
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

    .line 191
    iput-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView$1;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView$1;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$300(Lcom/zui/gallery/ui/CustomScrollBarView;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/ui/CustomScrollBarView$1;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-static {v0}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$300(Lcom/zui/gallery/ui/CustomScrollBarView;)Landroid/graphics/RectF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 197
    invoke-static {}, Lcom/zui/gallery/ui/CustomScrollBarView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p1, p0, Lcom/zui/gallery/ui/CustomScrollBarView$1;->this$0:Lcom/zui/gallery/ui/CustomScrollBarView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/CustomScrollBarView;->postInvalidate()V

    :cond_0
    return-void
.end method
