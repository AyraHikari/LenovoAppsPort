.class Lcom/zui/gallery/filtershow/imageshow/ImageShow$4;
.super Ljava/lang/Object;
.source "ImageShow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDoubleTap(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$4;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 891
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 892
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$4;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method
