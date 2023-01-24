.class Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;
.super Ljava/lang/Object;
.source "MasterImage.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onNewLook(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 720
    sput-boolean p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    .line 722
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$202(Lcom/zui/gallery/filtershow/imageshow/MasterImage;Z)Z

    .line 723
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$302(Lcom/zui/gallery/filtershow/imageshow/MasterImage;F)F

    .line 724
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$402(Lcom/zui/gallery/filtershow/imageshow/MasterImage;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 725
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 714
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$202(Lcom/zui/gallery/filtershow/imageshow/MasterImage;Z)Z

    return-void
.end method
