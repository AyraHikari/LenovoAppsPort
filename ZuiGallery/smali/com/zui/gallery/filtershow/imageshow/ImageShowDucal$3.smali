.class Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$3;
.super Ljava/lang/Object;
.source "ImageShowDucal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->onDoubleTap(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setScaleFactor(F)V

    .line 429
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    return-void
.end method
