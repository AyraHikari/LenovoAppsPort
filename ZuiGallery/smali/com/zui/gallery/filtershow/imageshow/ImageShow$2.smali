.class Lcom/zui/gallery/filtershow/imageshow/ImageShow$2;
.super Ljava/lang/Object;
.source "ImageShow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageShow;->startAnimTranslation(IIIII)V
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

    .line 812
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 815
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 816
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 817
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setTranslation(Landroid/graphics/Point;)V

    .line 818
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method
