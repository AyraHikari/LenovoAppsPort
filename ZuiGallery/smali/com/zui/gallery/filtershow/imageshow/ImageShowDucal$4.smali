.class Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$4;
.super Ljava/lang/Object;
.source "ImageShowDucal.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 432
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$4;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

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

    .line 439
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$4;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->access$200(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V

    .line 441
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$4;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

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
