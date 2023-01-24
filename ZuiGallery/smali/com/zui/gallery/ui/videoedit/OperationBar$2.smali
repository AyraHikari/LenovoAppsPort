.class Lcom/zui/gallery/ui/videoedit/OperationBar$2;
.super Ljava/lang/Object;
.source "OperationBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/videoedit/OperationBar;->starTrimBarAlphaAnim(Z)V
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

    .line 1274
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$2;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1278
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$2;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$3300(Lcom/zui/gallery/ui/videoedit/OperationBar;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1279
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$2;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$3400(Lcom/zui/gallery/ui/videoedit/OperationBar;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1280
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$2;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->postInvalidate()V

    return-void
.end method
