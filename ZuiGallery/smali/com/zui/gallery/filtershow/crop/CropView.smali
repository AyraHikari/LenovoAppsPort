.class public Lcom/zui/gallery/filtershow/crop/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/crop/CropView$Mode;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CropView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropIndicator:Landroid/graphics/drawable/Drawable;

.field private mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

.field private mDashOffLength:F

.field private mDashOnLength:F

.field private mDirty:Z

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrixInverse:Landroid/graphics/Matrix;

.field private mDoSpot:Z

.field private mImageBounds:Landroid/graphics/RectF;

.field private mIndicatorSize:I

.field private mMargin:I

.field private mMinSideSize:I

.field private mMovingBlock:Z

.field private mOverlayShadowColor:I

.field private mOverlayWPShadowColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevX:F

.field private mPrevY:F

.field private mRotation:I

.field private mScreenBounds:Landroid/graphics/RectF;

.field private mScreenCropBounds:Landroid/graphics/RectF;

.field private mScreenImageBounds:Landroid/graphics/RectF;

.field private mShadow:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowMargin:I

.field private mSpotX:F

.field private mSpotY:F

.field private mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

.field private mTouchTolerance:I

.field private mWPMarkerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    .line 56
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMovingBlock:Z

    .line 57
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 59
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDirty:Z

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    .line 62
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    .line 63
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotX:F

    .line 64
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotY:F

    .line 65
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDoSpot:Z

    const/16 v0, 0xf

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowMargin:I

    const/16 v0, 0x20

    .line 68
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMargin:I

    const/high16 v0, -0x31000000

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayShadowColor:I

    const/high16 v0, 0x5f000000

    .line 70
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    const v0, 0x7fffffff

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mWPMarkerColor:I

    const/16 v0, 0x5a

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMinSideSize:I

    const/16 v0, 0x28

    .line 73
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mTouchTolerance:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 74
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOnLength:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 75
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOffLength:F

    .line 81
    sget-object v0, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->NONE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    .line 85
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropView;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 44
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 46
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    .line 56
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMovingBlock:Z

    .line 57
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 59
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDirty:Z

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    .line 62
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    .line 63
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotX:F

    .line 64
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotY:F

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDoSpot:Z

    const/16 p2, 0xf

    .line 67
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowMargin:I

    const/16 p2, 0x20

    .line 68
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMargin:I

    const/high16 p2, -0x31000000

    .line 69
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayShadowColor:I

    const/high16 p2, 0x5f000000

    .line 70
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    const p2, 0x7fffffff

    .line 71
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mWPMarkerColor:I

    const/16 p2, 0x5a

    .line 72
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMinSideSize:I

    const/16 p2, 0x28

    .line 73
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mTouchTolerance:I

    const/high16 p2, 0x41a00000    # 20.0f

    .line 74
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOnLength:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 75
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOffLength:F

    .line 81
    sget-object p2, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->NONE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    .line 90
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropView;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 44
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 46
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const/4 p3, 0x0

    .line 55
    iput p3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    .line 56
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMovingBlock:Z

    .line 57
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 59
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDirty:Z

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    .line 62
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    .line 63
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotX:F

    .line 64
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotY:F

    .line 65
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDoSpot:Z

    const/16 p2, 0xf

    .line 67
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowMargin:I

    const/16 p2, 0x20

    .line 68
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMargin:I

    const/high16 p2, -0x31000000

    .line 69
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayShadowColor:I

    const/high16 p2, 0x5f000000

    .line 70
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    const p2, 0x7fffffff

    .line 71
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mWPMarkerColor:I

    const/16 p2, 0x5a

    .line 72
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMinSideSize:I

    const/16 p2, 0x28

    .line 73
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mTouchTolerance:I

    const/high16 p2, 0x41a00000    # 20.0f

    .line 74
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOnLength:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 75
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOffLength:F

    .line 81
    sget-object p2, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->NONE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    .line 95
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropView;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    and-int v0, p1, v1

    .line 263
    rem-int/2addr p2, p3

    sub-int/2addr p3, p2

    shr-int p3, v0, p3

    shl-int p2, v0, p2

    and-int/2addr p2, v1

    not-int v0, v1

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private clearDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 200
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 201
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->invalidate()V

    return-void
.end method

.method private decode(IF)I
    .locals 2

    .line 276
    invoke-static {p2}, Lcom/zui/gallery/filtershow/crop/CropMath;->constrainedRotation(F)I

    move-result p2

    const/16 v0, 0x5a

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    const/4 p2, 0x3

    .line 283
    invoke-direct {p0, p1, p2, v1}, Lcom/zui/gallery/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    return p1

    :cond_1
    const/4 p2, 0x2

    .line 281
    invoke-direct {p0, p1, p2, v1}, Lcom/zui/gallery/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    return p1

    :cond_2
    const/4 p2, 0x1

    .line 279
    invoke-direct {p0, p1, p2, v1}, Lcom/zui/gallery/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    return p1
.end method

.method private reset()V
    .locals 2

    const-string v0, "CropView"

    const-string v1, "crop reset called"

    .line 190
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->NONE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    .line 194
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMovingBlock:Z

    .line 195
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->clearDisplay()V

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701f9

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    const v0, 0x7f070104

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f060156

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mIndicatorSize:I

    const v0, 0x7f0602e5

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowMargin:I

    const v0, 0x7f0602b0

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMargin:I

    const v0, 0x7f060157

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMinSideSize:I

    const v0, 0x7f060158

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mTouchTolerance:I

    const v0, 0x7f0500ae

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayShadowColor:I

    const v0, 0x7f0500af

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    const v0, 0x7f0500b0

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mWPMarkerColor:I

    const v0, 0x7f0603a9

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOnLength:F

    const v0, 0x7f0603aa

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOffLength:F

    return-void
.end method


# virtual methods
.method public applyAspect(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_3

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    .line 234
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    move v2, p2

    move p2, p1

    move p1, v2

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setInnerAspectRatio(FF)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CropView"

    const-string p2, "failed to set aspect ratio"

    .line 240
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->invalidate()V

    return-void

    .line 231
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments to applyAspect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyFreeAspect()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->unsetAspectRatio()V

    .line 210
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->invalidate()V

    return-void
.end method

.method public applyOriginalAspect()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 216
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 218
    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/filtershow/crop/CropView;->applyAspect(FF)V

    .line 219
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1, v0, v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    const-string v0, "CropView"

    const-string v1, "failed to set aspect ratio original"

    .line 221
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public applySquareAspect()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {p0, v0, v0}, Lcom/zui/gallery/filtershow/crop/CropView;->applyAspect(FF)V

    return-void
.end method

.method protected configChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDirty:Z

    return-void
.end method

.method public getCrop()Landroid/graphics/RectF;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/RectF;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 1

    .line 115
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    if-ne p1, p2, :cond_0

    if-ne v0, p3, :cond_0

    .line 119
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    if-eq p1, p4, :cond_2

    .line 121
    :cond_0
    iput p4, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    .line 122
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1, p2, p3}, Lcom/zui/gallery/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 123
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->clearDisplay()V

    goto :goto_0

    .line 126
    :cond_1
    iput p4, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    .line 127
    new-instance p1, Lcom/zui/gallery/filtershow/crop/CropObject;

    const/4 p4, 0x0

    invoke-direct {p1, p3, p2, p4}, Lcom/zui/gallery/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->clearDisplay()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 295
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDirty:Z

    .line 296
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->clearDisplay()V

    .line 299
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 300
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 301
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMargin:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 305
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-nez v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->reset()V

    .line 307
    new-instance v0, Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v1}, Lcom/zui/gallery/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v0, :cond_6

    .line 312
    :cond_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 313
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    invoke-static {v0, v2, v3, v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CropView"

    if-nez v0, :cond_4

    const-string p1, "failed to get screen matrix"

    .line 316
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-void

    .line 320
    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 321
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "could not invert display matrix"

    .line 323
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    return-void

    .line 328
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMinSideSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setMinInnerSideSize(F)V

    .line 329
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mTouchTolerance:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setTouchTolerance(F)V

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 336
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowMargin:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    float-to-int v0, v0

    .line 337
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 338
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 349
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds(Landroid/graphics/RectF;)V

    .line 351
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 354
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 355
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayShadowColor:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-static {p1, v10, v0, v3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 360
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 361
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDoSpot:Z

    if-nez v0, :cond_8

    .line 362
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 364
    :cond_8
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 365
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mWPMarkerColor:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 366
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 367
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v5, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOnLength:F

    aput v5, v3, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDashOffLength:F

    add-float/2addr v5, v1

    aput v5, v3, v2

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 370
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v6, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget v7, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotX:F

    iget v8, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotY:F

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mIndicatorSize:I

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 375
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->isFixedAspect()Z

    move-result v4

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getSelectState()I

    move-result v0

    iget v5, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mRotation:I

    int-to-float v5, v5

    invoke-direct {p0, v0, v5}, Lcom/zui/gallery/filtershow/crop/CropView;->decode(IF)I

    move-result v5

    move-object v0, p1

    .line 374
    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v1, v5, v3

    .line 150
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 151
    aget v0, v5, v6

    .line 152
    aget v1, v5, v3

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    sget-object v2, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->MOVE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    if-ne p1, v2, :cond_5

    .line 175
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    sub-float p1, v0, p1

    .line 176
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    sub-float v2, v1, v2

    .line 177
    iget-object v4, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v4, p1, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->moveCurrentSelection(FF)Z

    .line 178
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    .line 179
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    goto :goto_0

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    sget-object v2, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->MOVE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    if-ne p1, v2, :cond_5

    .line 166
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1, v6}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    .line 167
    iput-boolean v6, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMovingBlock:Z

    .line 168
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    .line 169
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    .line 170
    sget-object p1, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->NONE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    goto :goto_0

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    sget-object v2, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->NONE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    if-ne p1, v2, :cond_5

    .line 156
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(FF)Z

    move-result p1

    if-nez p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mMovingBlock:Z

    .line 159
    :cond_4
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevX:F

    .line 160
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mPrevY:F

    .line 161
    sget-object p1, Lcom/zui/gallery/filtershow/crop/CropView$Mode;->MOVE:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mState:Lcom/zui/gallery/filtershow/crop/CropView$Mode;

    .line 185
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropView;->invalidate()V

    :cond_6
    :goto_1
    return v3
.end method

.method public setWallpaperSpotlight(FF)V
    .locals 1

    .line 246
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotX:F

    .line 247
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mSpotY:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    cmpl-float p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDoSpot:Z

    :cond_0
    return-void
.end method

.method public unsetWallpaperSpotlight()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropView;->mDoSpot:Z

    return-void
.end method
