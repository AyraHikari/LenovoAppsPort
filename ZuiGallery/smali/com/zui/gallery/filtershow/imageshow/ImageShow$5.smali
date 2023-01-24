.class Lcom/zui/gallery/filtershow/imageshow/ImageShow$5;
.super Ljava/lang/Object;
.source "ImageShow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 895
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$5;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 902
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$5;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    .line 903
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    .line 904
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$5;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
