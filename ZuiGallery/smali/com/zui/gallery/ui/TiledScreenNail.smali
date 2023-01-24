.class public Lcom/zui/gallery/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/zui/gallery/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "TiledScreenNail"

.field private static mDrawPlaceholder:Z = true

.field private static mPlaceholderColor:I = -0xddddde

.field private static sMaxSide:I = 0x280


# instance fields
.field private mAnimationStartTime:J

.field private mHeight:I

.field private mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/TiledScreenNail;->setSize(II)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/zui/gallery/data/Path;JI)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, -0x1

    .line 52
    iput-wide p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 64
    new-instance p1, Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-direct {p1, p3}, Lcom/zui/gallery/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    .line 67
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/TiledTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mWidth:I

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/TiledTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mHeight:I

    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    sput-boolean v0, Lcom/zui/gallery/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    sput-boolean v0, Lcom/zui/gallery/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public static setMaxSide(I)V
    .locals 0

    .line 227
    sput p0, Lcom/zui/gallery/ui/TiledScreenNail;->sMaxSide:I

    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0

    .line 82
    sput p0, Lcom/zui/gallery/ui/TiledScreenNail;->mPlaceholderColor:I

    return-void
.end method

.method private setSize(II)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    sget p1, Lcom/zui/gallery/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 p2, p1, 0x3

    .line 88
    div-int/lit8 p2, p2, 0x4

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    sget v1, Lcom/zui/gallery/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 91
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mWidth:I

    int-to-float p1, p2

    mul-float/2addr v0, p1

    .line 92
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mHeight:I

    return-void
.end method


# virtual methods
.method public combine(Lcom/zui/gallery/ui/ScreenNail;)Lcom/zui/gallery/ui/ScreenNail;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TiledScreenNail;->recycle()V

    return-object p1

    .line 109
    :cond_1
    check-cast p1, Lcom/zui/gallery/ui/TiledScreenNail;

    .line 110
    iget v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;->mWidth:I

    iput v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mWidth:I

    .line 111
    iget v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;->mHeight:I

    iput v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mHeight:I

    .line 112
    iget-object v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->recycle()V

    .line 116
    :cond_2
    iget-object v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    iput-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/ui/TiledScreenNail;->recycle()V

    return-object p0
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    const-wide/16 v1, -0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-wide v3, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mAnimationStartTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 177
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/TiledTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void

    .line 167
    :cond_2
    :goto_0
    iget-wide v3, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 168
    iput-wide v1, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 170
    :cond_3
    sget-boolean v0, Lcom/zui/gallery/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v0, :cond_4

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    .line 171
    sget v6, Lcom/zui/gallery/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :cond_4
    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/TiledTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    .line 191
    :cond_1
    :goto_0
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    sget v6, Lcom/zui/gallery/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public drawThumbNail(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIILcom/zui/gallery/ui/PhotoView$Size;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p7, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    int-to-float v1, v1

    iget v2, p7, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 238
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v4, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-direct {v1, v2, v4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 p2, 0x5a

    if-eq p6, p2, :cond_1

    const/16 p2, 0x10e

    if-ne p6, p2, :cond_2

    .line 241
    :cond_1
    iget p2, p7, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    int-to-float p2, p2

    iget p3, p7, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    int-to-float p3, p3

    invoke-virtual {v0, v3, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 243
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {p2, p1, v0, v1}, Lcom/zui/gallery/glrenderer/TiledTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/zui/gallery/glrenderer/TiledTexture;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public noDraw()V
    .locals 0

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->recycle()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/zui/gallery/ui/TiledScreenNail;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    :cond_0
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/TiledScreenNail;->setSize(II)V

    :cond_1
    :goto_0
    return-void
.end method
