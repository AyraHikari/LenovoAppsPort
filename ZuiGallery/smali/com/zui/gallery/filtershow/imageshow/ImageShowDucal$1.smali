.class Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;
.super Ljava/lang/Object;
.source "ImageShowDucal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->startAnimTranslation(IIIII)V
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

    .line 349
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)Landroid/graphics/Point;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 354
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;Landroid/graphics/Point;)V

    .line 355
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    return-void
.end method
