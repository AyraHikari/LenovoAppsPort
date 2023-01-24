.class Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;
.super Ljava/lang/Object;
.source "MicroviewOperationBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->startScaleSlowBarAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V
    .locals 0

    .line 1271
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1274
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1275
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarHeight(F)V

    .line 1276
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->postInvalidate()V

    return-void
.end method
