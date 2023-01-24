.class Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$1;
.super Ljava/lang/Object;
.source "ImageStraighten.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->hidesGrid(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->access$002(Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;F)F

    .line 99
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->invalidate()V

    return-void
.end method
