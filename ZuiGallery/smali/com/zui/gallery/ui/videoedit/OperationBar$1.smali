.class Lcom/zui/gallery/ui/videoedit/OperationBar$1;
.super Ljava/lang/Object;
.source "OperationBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/videoedit/OperationBar;->startScaleSlowBarAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1240
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1241
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarHeight(F)V

    .line 1242
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    return-void
.end method
