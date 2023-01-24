.class Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;
.super Lcom/zui/gallery/anim/CanvasAnimation;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/SlideshowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideshowAnimation"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mMovingVector:Landroid/graphics/PointF;

.field private mProgress:F

.field private final mWidth:I

.field final synthetic this$0:Lcom/zui/gallery/ui/SlideshowView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/SlideshowView;IILjava/util/Random;)V
    .locals 2

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/zui/gallery/ui/SlideshowView;

    invoke-direct {p0}, Lcom/zui/gallery/anim/CanvasAnimation;-><init>()V

    .line 129
    iput p2, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    .line 130
    iput p3, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    .line 131
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float p2, p2

    const p3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, p3

    .line 132
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    .line 133
    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result p3

    sub-float/2addr p3, v1

    mul-float/2addr v0, p3

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    const/16 p1, 0xdac

    .line 134
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/zui/gallery/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlideshowView;->getWidth()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/zui/gallery/ui/SlideshowView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlideshowView;->getHeight()I

    move-result v1

    int-to-float v2, v0

    .line 142
    iget v3, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    iget v4, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 144
    iget v3, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 146
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 147
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 149
    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    const/4 v0, 0x0

    .line 150
    invoke-interface {p1, v2, v2, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    return-void
.end method
