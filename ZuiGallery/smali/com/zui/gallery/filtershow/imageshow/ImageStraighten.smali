.class public Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageStraighten.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;
    }
.end annotation


# static fields
.field private static final MAX_STRAIGHTEN_ANGLE:F = 45.0f

.field private static final MIN_STRAIGHTEN_ANGLE:F = -45.0f

.field private static final NBLINES:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAngle:F

.field private mAnimDelay:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBaseAngle:F

.field private mCrop:Landroid/graphics/RectF;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDefaultGridAlpha:I

.field private mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field private mDrawPath:Landroid/graphics/Path;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mEditorStraighten:Lcom/zui/gallery/filtershow/editors/EditorStraighten;

.field private mFirstDrawSinceUp:Z

.field private mGridAlpha:F

.field private mInitialAngle:F

.field private mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

.field private mOnStartAnimDelay:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPriorCropAtUp:Landroid/graphics/RectF;

.field private mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

.field private mTouchCenterX:F

.field private mTouchCenterY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 46
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 47
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mInitialAngle:F

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mFirstDrawSinceUp:Z

    .line 51
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPriorCropAtUp:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawRect:Landroid/graphics/RectF;

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawPath:Landroid/graphics/Path;

    .line 55
    new-instance p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 59
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimator:Landroid/animation/ValueAnimator;

    const/16 p1, 0x3c

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDefaultGridAlpha:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mGridAlpha:F

    const/16 p1, 0x3e8

    .line 63
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mOnStartAnimDelay:I

    const/16 p1, 0x1f4

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimDelay:I

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 46
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 47
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mInitialAngle:F

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mFirstDrawSinceUp:Z

    .line 51
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPriorCropAtUp:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawRect:Landroid/graphics/RectF;

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawPath:Landroid/graphics/Path;

    .line 55
    new-instance p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 59
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimator:Landroid/animation/ValueAnimator;

    const/16 p1, 0x3c

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDefaultGridAlpha:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mGridAlpha:F

    const/16 p1, 0x3e8

    .line 63
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mOnStartAnimDelay:I

    const/16 p1, 0x1f4

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimDelay:I

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;F)F
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mGridAlpha:F

    return p1
.end method

.method private static angleFor(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 160
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private computeValue()V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->getCurrentTouchAngle()F

    move-result v0

    .line 180
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    const/high16 v0, -0x3dcc0000    # -45.0f

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    const/high16 v1, 0x42340000    # 45.0f

    .line 182
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    return-void
.end method

.method private getCurrentTouchAngle()F
    .locals 5

    .line 164
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 166
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentX:F

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mTouchCenterX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentY:F

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mTouchCenterY:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mTouchCenterX:F

    sub-float/2addr v1, v0

    .line 170
    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mTouchCenterY:F

    sub-float/2addr v3, v2

    .line 171
    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentX:F

    sub-float/2addr v4, v0

    .line 172
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentY:F

    sub-float/2addr v0, v2

    .line 173
    invoke-static {v1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->angleFor(FF)F

    move-result v1

    .line 174
    invoke-static {v4, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->angleFor(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method public static getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)V
    .locals 14

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    neg-float p1, p1

    :cond_0
    float-to-double v0, p1

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 193
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double v4, p1

    .line 194
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-double v6, p1

    mul-double v8, v6, v6

    mul-double v10, v4, v2

    mul-double v12, v6, v0

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    mul-double v10, v6, v4

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    div-double/2addr v10, v0

    .line 197
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double v2, v0, v4

    div-double/2addr v2, v6

    sub-double/2addr v4, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v8

    double-to-float p1, v4

    sub-double/2addr v6, v0

    mul-double/2addr v6, v8

    double-to-float v4, v6

    float-to-double v5, p1

    add-double/2addr v5, v2

    double-to-float v2, v5

    float-to-double v5, v4

    add-double/2addr v5, v0

    double-to-float v0, v5

    .line 203
    invoke-virtual {p0, p1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private hidesGrid(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 92
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 94
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateCurrentCrop(Landroid/graphics/Matrix;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Landroid/graphics/RectF;IIII)V
    .locals 5

    int-to-float v0, p5

    int-to-float v1, p4

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    iget v3, p3, Landroid/graphics/RectF;->top:F

    .line 211
    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    .line 212
    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 213
    iget v3, p3, Landroid/graphics/RectF;->right:F

    .line 214
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 216
    iget-object v3, p2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->needsDimensionSwap(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move v1, p4

    move v0, p5

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p3, v2, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move v0, p4

    move v1, p5

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v3, p6

    int-to-float v4, p7

    .line 225
    invoke-static {v0, v1, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scale(FFFF)F

    move-result v0

    const v1, 0x3f7a5e35    # 0.978f

    mul-float/2addr v0, v1

    .line 227
    invoke-static {p3, v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scaleRect(Landroid/graphics/RectF;F)V

    .line 228
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-static {p3, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    .line 229
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v3, v1

    div-float/2addr v4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-virtual {p3, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 230
    iput v2, p2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 231
    invoke-static {p2, p4, p5, p6, p7}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryToScreenMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p2

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 234
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 235
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 236
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 237
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    invoke-static {p1, p4, p5}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->findNormalizedCrop(Landroid/graphics/RectF;II)V

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->attach()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mGridAlpha:F

    .line 88
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mOnStartAnimDelay:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->hidesGrid(I)V

    return-void
.end method

.method public getFinalRepresentation()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mInitialAngle:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getStraighten()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 243
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidateFiltersOnly()V

    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->initializeHolder(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 250
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    iput v2, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 257
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-static {v3, v7, v8, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryToScreenMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object v4

    .line 259
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 260
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 262
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 264
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 265
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    const/4 v13, -0x1

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawRect:Landroid/graphics/RectF;

    move-object v3, p0

    move v9, v1

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->updateCurrentCrop(Landroid/graphics/Matrix;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Landroid/graphics/RectF;IIII)V

    .line 270
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mFirstDrawSinceUp:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPriorCropAtUp:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setStraighten(F)V

    .line 273
    iput-boolean v12, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mFirstDrawSinceUp:Z

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    sget-object v3, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mGridAlpha:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 281
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x10

    div-int/2addr v0, v3

    int-to-float v0, v0

    :goto_0
    if-ge v11, v3, :cond_4

    int-to-float v4, v11

    mul-float/2addr v4, v0

    .line 285
    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDefaultGridAlpha:I

    int-to-float v5, v5

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mGridAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-nez v5, :cond_3

    .line 286
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    sget-object v7, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    if-ne v6, v7, :cond_3

    .line 287
    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDefaultGridAlpha:I

    .line 289
    :cond_3
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v7, 0x0

    int-to-float v9, v2

    .line 290
    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v4

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    int-to-float v8, v1

    .line 291
    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    move v7, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 296
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 303
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mDrawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    sget-object v3, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    if-ne p1, v3, :cond_3

    .line 147
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentX:F

    .line 148
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentY:F

    .line 149
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->computeValue()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    sget-object v3, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    if-ne p1, v3, :cond_3

    .line 137
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    .line 138
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentX:F

    .line 139
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentY:F

    .line 140
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->computeValue()V

    .line 141
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mFirstDrawSinceUp:Z

    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->hidesGrid(I)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    sget-object v3, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    if-ne p1, v3, :cond_3

    .line 127
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mTouchCenterX:F

    .line 128
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mTouchCenterY:F

    .line 129
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentX:F

    .line 130
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mCurrentY:F

    .line 131
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten$MODES;

    .line 132
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 155
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->invalidate()V

    return v2
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorStraighten;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mEditorStraighten:Lcom/zui/gallery/filtershow/editors/EditorStraighten;

    return-void
.end method

.method public setFilterStraightenRepresentation(Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;)V
    .locals 0

    if-nez p1, :cond_0

    .line 106
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    .line 107
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getStraighten()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mAngle:F

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->mInitialAngle:F

    return-void
.end method
