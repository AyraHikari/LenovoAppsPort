.class Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;
.super Ljava/lang/Object;
.source "MasterImage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 696
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const/4 v0, 0x1

    .line 700
    sput-boolean v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    .line 702
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$100(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setMaskScale(F)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$100(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 705
    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$100(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setAnimRotation(F)V

    .line 707
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setAnimFraction(F)V

    :cond_2
    :goto_0
    return-void
.end method
