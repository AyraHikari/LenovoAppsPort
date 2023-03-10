.class public Lcom/zui/gallery/ui/SlideshowView;
.super Lcom/zui/gallery/ui/GLView;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;
    }
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final SCALE_SPEED:F = 0.2f

.field private static final SLIDESHOW_DURATION:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "SlideshowView"

.field private static final TRANSITION_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

.field private mCurrentRotation:I

.field private mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field private mPrevAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

.field private mPrevRotation:I

.field private mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field private mRandom:Ljava/util/Random;

.field private final mTransitionAnimation:Lcom/zui/gallery/anim/FloatAnimation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    .line 47
    new-instance v0, Lcom/zui/gallery/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/zui/gallery/anim/FloatAnimation;

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/zui/gallery/anim/FloatAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/anim/FloatAnimation;->start()V

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    iput-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    .line 63
    iget v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentRotation:I

    iput v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevRotation:I

    .line 65
    iput p2, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentRotation:I

    .line 66
    new-instance v0, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 67
    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_1

    .line 68
    new-instance p1, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    iget-object p2, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 69
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/zui/gallery/ui/SlideshowView;IILjava/util/Random;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    iget-object p2, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 73
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/zui/gallery/ui/SlideshowView;IILjava/util/Random;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->start()V

    .line 78
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlideshowView;->invalidate()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 84
    iput-object v1, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 88
    iput-object v1, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    :cond_1
    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 10

    .line 94
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/zui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/zui/gallery/anim/FloatAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/anim/FloatAnimation;->calculate(J)Z

    move-result v2

    .line 96
    iget-object v3, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/zui/gallery/anim/FloatAnimation;

    invoke-virtual {v3}, Lcom/zui/gallery/anim/FloatAnimation;->get()F

    move-result v3

    .line 98
    :goto_0
    iget-object v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1

    .line 99
    iget-object v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, v0, v1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v5

    or-int/2addr v2, v5

    .line 100
    invoke-interface {p1, v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    sub-float v5, v4, v3

    .line 101
    invoke-interface {p1, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    .line 102
    iget-object v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, p1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 103
    iget v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevRotation:I

    int-to-float v5, v5

    invoke-interface {p1, v5, v7, v7, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 104
    iget-object v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/zui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 105
    invoke-virtual {v9}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    .line 104
    invoke-virtual {v5, p1, v8, v9}, Lcom/zui/gallery/glrenderer/BitmapTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 106
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 108
    :cond_1
    iget-object v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v5, :cond_2

    .line 109
    iget-object v5, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v5, v0, v1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 110
    invoke-interface {p1, v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 111
    invoke-interface {p1, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 113
    iget v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentRotation:I

    int-to-float v0, v0

    invoke-interface {p1, v0, v7, v7, v4}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/zui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 115
    invoke-virtual {v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 114
    invoke-virtual {v0, p1, v1, v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 116
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    :cond_2
    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/zui/gallery/ui/SlideshowView;->invalidate()V

    :cond_3
    return-void
.end method
