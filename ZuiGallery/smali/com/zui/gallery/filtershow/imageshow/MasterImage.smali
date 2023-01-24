.class public Lcom/zui/gallery/filtershow/imageshow/MasterImage;
.super Ljava/lang/Object;
.source "MasterImage.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;


# static fields
.field public static final CIRCLE_ANIMATION:I = 0x1

.field private static final DISABLEZOOM:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "MasterImage"

.field public static final MAX_BITMAP_DIM:I = 0x780

.field public static final MIRROR_ANIMATION:I = 0x3

.field public static final ROTATE_ANIMATION:I = 0x2

.field public static final SMALL_BITMAP_DIM:I = 0xa0

.field private static volatile sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;


# instance fields
.field private DEBUG:Z

.field public filterCropRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

.field public geometryHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field public hsvoIndex:F

.field public hsvos:I

.field private mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private mAnimFraction:F

.field private mAnimRotationValue:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

.field public mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

.field private mCurrentAnimRotationStartValue:F

.field private mCurrentFilter:Lcom/zui/gallery/filtershow/filters/ImageFilter;

.field private mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field private mCurrentLookAnimation:I

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDrawScaleFactor:F

.field private mEXIF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDivision:F

.field private mErrorFactor:F

.field private mErrorHeight:F

.field private mErrorMargin:F

.field private mErrorWidth:F

.field private mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

.field private mFiltersOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field public mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field private mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

.field private mGeometryOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mHighresBitmap:Landroid/graphics/Bitmap;

.field private mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

.field public mImageBounds:Landroid/graphics/RectF;

.field private mImageShowSize:Landroid/graphics/Point;

.field private final mLoadListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mMaskScale:F

.field private mMaxScaleFactor:F

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGoingNewLookAnimation:Z

.field private mOrientation:I

.field private mOriginalBitmapHighres:Landroid/graphics/Bitmap;

.field private mOriginalBitmapLarge:Landroid/graphics/Bitmap;

.field private mOriginalBitmapSmall:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mOriginalTranslation:Landroid/graphics/Point;

.field private mPartialBitmap:Landroid/graphics/Bitmap;

.field private mPartialBounds:Landroid/graphics/Rect;

.field private mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mPreviewBuffer:Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

.field private mPreviewPreset:Lcom/zui/gallery/filtershow/pipeline/SharedPreset;

.field private mPreviousImage:Landroid/graphics/Bitmap;

.field private mScaleFactor:F

.field private mShadowMargin:I

.field private mShowsOriginal:Z

.field private mState:Lcom/zui/gallery/filtershow/state/StateAdapter;

.field private mSupportsHighRes:Z

.field private mTemporaryThumbnail:Landroid/graphics/Bitmap;

.field private mTranslation:Landroid/graphics/Point;

.field private mUri:Landroid/net/Uri;

.field private mWarnListenersRunnable:Ljava/lang/Runnable;

.field private mZoomOrientation:I

.field public mocRadKey:I

.field public mocRadValue:I

.field public radKey:I

.field public radValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->DEBUG:Z

    .line 86
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilter:Lcom/zui/gallery/filtershow/filters/ImageFilter;

    .line 89
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 90
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadedPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 91
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 92
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 94
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewBuffer:Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    .line 95
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewPreset:Lcom/zui/gallery/filtershow/pipeline/SharedPreset;

    .line 97
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 99
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    .line 100
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    .line 103
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    .line 104
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 105
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mZoomOrientation:I

    .line 107
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    .line 108
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    .line 109
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 110
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 111
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    const/16 v2, 0xf

    .line 112
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mShadowMargin:I

    .line 113
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBounds:Landroid/graphics/Rect;

    .line 115
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 116
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaskScale:F

    .line 117
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOnGoingNewLookAnimation:Z

    const/4 v3, 0x0

    .line 118
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimRotationValue:F

    .line 119
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentAnimRotationStartValue:F

    .line 120
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimFraction:F

    .line 121
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    .line 126
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    .line 127
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mState:Lcom/zui/gallery/filtershow/state/StateAdapter;

    .line 129
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 131
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    .line 134
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mScaleFactor:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 135
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    .line 136
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    .line 137
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalTranslation:Landroid/graphics/Point;

    .line 139
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentX:F

    .line 140
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentY:F

    .line 141
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    const/high16 v0, 0x41c00000    # 24.0f

    .line 142
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorFactor:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 146
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorHeight:F

    const/high16 v0, 0x41900000    # 18.0f

    .line 148
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorWidth:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 149
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorDivision:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 150
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorMargin:F

    .line 152
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    .line 156
    new-instance v0, Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/cache/BitmapCache;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    .line 159
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 160
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageBounds:Landroid/graphics/RectF;

    .line 161
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    .line 165
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    .line 167
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mocRadKey:I

    .line 168
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mocRadValue:I

    const/high16 v1, 0x42700000    # 60.0f

    .line 170
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvoIndex:F

    .line 171
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvos:I

    .line 272
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mWarnListenersRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)Ljava/util/Vector;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/imageshow/MasterImage;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOnGoingNewLookAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/imageshow/MasterImage;F)F
    .locals 0

    .line 77
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentAnimRotationStartValue:F

    return p1
.end method

.method static synthetic access$402(Lcom/zui/gallery/filtershow/imageshow/MasterImage;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private computerDrawError(Landroid/graphics/Bitmap;)[F
    .locals 12

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 967
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 968
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 971
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 974
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 975
    iput v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorHeight:F

    .line 976
    iput v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorFactor:F

    .line 979
    :cond_1
    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorHeight:F

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorDivision:F

    div-float v6, v4, v5

    mul-float/2addr v6, v1

    .line 980
    iget v7, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    div-float/2addr v4, v5

    mul-float v6, v4, v1

    :cond_2
    sub-float/2addr v6, v3

    .line 983
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 984
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    sub-float v7, v5, v6

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 985
    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorFactor:F

    .line 986
    iget v7, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    if-lt v0, p1, :cond_3

    float-to-double v4, v4

    const-wide v7, 0x3ff1249249249249L    # 1.0714285714285714

    .line 988
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v9

    sub-float/2addr v9, v6

    float-to-double v9, v9

    mul-double/2addr v9, v7

    add-double/2addr v4, v9

    goto :goto_1

    :cond_3
    float-to-double v4, v4

    const-wide v7, 0x3ff3eac153eac154L    # 1.2448132780082988

    .line 990
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v9

    sub-float/2addr v9, v6

    float-to-double v9, v9

    mul-double/2addr v9, v7

    sub-double/2addr v4, v9

    :goto_1
    double-to-float v4, v4

    .line 993
    :cond_4
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v7, v5, v2

    .line 997
    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    iget v9, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    cmpl-float v10, v8, v9

    if-lez v10, :cond_5

    .line 998
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorWidth:F

    iget v10, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorDivision:F

    div-float/2addr v2, v10

    mul-float/2addr v2, v5

    iget v10, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorMargin:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v10

    sub-float/2addr v2, v8

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v8

    iget v9, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    sub-float/2addr v8, v9

    mul-float/2addr v10, v8

    add-float/2addr v2, v10

    goto :goto_2

    .line 1000
    :cond_5
    iget v10, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorWidth:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v10, v8

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorDivision:F

    div-float/2addr v10, v2

    mul-float v2, v10, v5

    :goto_2
    sub-float/2addr v2, v7

    .line 1002
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1003
    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    iget v9, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    cmpl-float v10, v8, v9

    if-lez v10, :cond_6

    .line 1004
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorWidth:F

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorDivision:F

    div-float/2addr v2, v6

    mul-float/2addr v2, v5

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorMargin:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v6

    sub-float/2addr v2, v8

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v7

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    goto :goto_3

    .line 1006
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v8

    sub-float/2addr v8, v6

    mul-float/2addr v2, v8

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    sub-float/2addr v8, v6

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    .line 1009
    :goto_3
    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mErrorFactor:F

    .line 1010
    iget v7, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    if-gt v0, p1, :cond_7

    float-to-double v6, v6

    const-wide v8, 0x4001249249249249L    # 2.142857142857143

    .line 1012
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mDrawScaleFactor:F

    sub-float/2addr p1, v0

    float-to-double v10, p1

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    double-to-float v6, v6

    .line 1016
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentY:F

    sub-float/2addr v0, v3

    mul-float/2addr p1, v0

    mul-float/2addr p1, v4

    div-float/2addr p1, v1

    .line 1017
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    return-object v1
.end method

.method public static getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;
    .locals 2

    .line 193
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    if-nez v0, :cond_1

    .line 194
    const-class v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    if-nez v1, :cond_0

    .line 196
    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;-><init>()V

    sput-object v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 198
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 200
    :cond_1
    :goto_0
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    return-object v0
.end method

.method private getImageToScreenMatrix(Z)Landroid/graphics/Matrix;
    .locals 4

    .line 1023
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v0

    .line 1027
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 1026
    invoke-static {v0, p1, v1, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getImageToScreenMatrix(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1029
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1030
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-object p1

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 1034
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v1

    .line 1035
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1036
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object p1

    .line 1024
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1
.end method

.method private getPrivacyImgOrientation(Ljava/lang/String;)I
    .locals 10

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmmmm"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "."

    .line 390
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 391
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8981\u67e5\u8bad\u7684fileName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$PrivacyFiles;->CONTENT_URI:Landroid/net/Uri;

    new-array v8, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v8, v0

    const/4 v6, 0x0

    const-string/jumbo v7, "title=? "

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 397
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "image_orientation"

    .line 398
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 399
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 403
    throw v0

    :cond_1
    :goto_1
    return v0
.end method

.method private getScreenToImageMatrix(Z)Landroid/graphics/Matrix;
    .locals 1

    .line 1041
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1042
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1043
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1129
    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    return-void
.end method

.method public static setMaster(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V
    .locals 0

    .line 186
    sput-object p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addListener is called, size is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wangcanoom"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public addObserver(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public available(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 2

    .line 1098
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1102
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    .line 1104
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    .line 1106
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    .line 1108
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    .line 1109
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 1111
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1112
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getScaleFactor()F

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    .line 1114
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 1115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1116
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 1118
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1119
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    .line 1120
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 1121
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 1124
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasModifications()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->enableSave(Z)V

    return-void
.end method

.method public declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1258
    :try_start_0
    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 1259
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1261
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1264
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1265
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 1268
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1269
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1270
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    .line 1273
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1274
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1275
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    .line 1278
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1279
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1280
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    .line 1283
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1284
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1285
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    .line 1288
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1289
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1290
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 1293
    :cond_6
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1294
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1295
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 1297
    :cond_7
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1298
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1299
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 806
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->clearFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;
    .locals 11

    .line 892
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    .line 906
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v1

    .line 905
    :cond_1
    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object v5

    const/4 v4, 0x0

    .line 908
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v8, p3, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v9, p3, Landroid/graphics/Point;->y:I

    .line 907
    invoke-static/range {v4 .. v9}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getCropSelectionToScreenMatrix(Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object p3

    move v1, v2

    goto/16 :goto_1

    :cond_2
    if-eqz p1, :cond_5

    .line 912
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 913
    new-instance v0, Landroid/graphics/RectF;

    .line 914
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 915
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 917
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 918
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 919
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 921
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 922
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    goto :goto_0

    .line 925
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 927
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 928
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    :goto_0
    div-float/2addr v1, v2

    .line 934
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 935
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    div-float v0, v4, v3

    move v10, v1

    move v1, v0

    move v0, v10

    .line 940
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v4

    .line 941
    invoke-virtual {p3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 942
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p3, p2, v0, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 943
    invoke-virtual {p3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 944
    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mShadowMargin:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 945
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 951
    iget p2, v4, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 952
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 951
    invoke-virtual {p3, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 953
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->computerDrawError(Landroid/graphics/Bitmap;)[F

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawErrorPadding([F)V

    return-object p3

    :cond_5
    :goto_2
    return-object v1
.end method

.method public deleteCurrentCaptionRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    const/4 v0, 0x0

    .line 830
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 831
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 832
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->deleteCurrentCaptionRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    :cond_0
    return-void
.end method

.method public getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getAnimFraction()F
    .locals 1

    .line 646
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimFraction:F

    return v0
.end method

.method public getAnimRotationValue()F
    .locals 1

    .line 633
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimRotationValue:F

    return v0
.end method

.method public getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    return-object v0
.end method

.method public getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilter:Lcom/zui/gallery/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getCurrentLookAnimation()I
    .locals 1

    .line 654
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    return v0
.end method

.method public getCurrentPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviewBuffer()Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->getConsumer()Lcom/zui/gallery/filtershow/pipeline/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public getEXIF()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mEXIF:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewBuffer:Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->swapConsumerIfNeeded()V

    .line 581
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewBuffer:Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->getConsumer()Lcom/zui/gallery/filtershow/pipeline/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getFiltersOnlyPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getGeometryPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHighresImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHistory()Lcom/zui/gallery/filtershow/history/HistoryManager;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    return-object v0
.end method

.method public getLargeThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1210
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadedPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getMaskScale()F
    .locals 1

    .line 624
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaskScale:F

    return v0
.end method

.method public getMaxScaleFactor()F
    .locals 1

    .line 1217
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    return v0
.end method

.method public getOriginalBitmapHighres()Landroid/graphics/Bitmap;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    :cond_0
    return-object v0
.end method

.method public getOriginalBitmapLarge()Landroid/graphics/Bitmap;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOriginalTranslation()Landroid/graphics/Point;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalTranslation:Landroid/graphics/Point;

    return-object v0
.end method

.method public getPartialBounds()Landroid/graphics/Rect;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPartialImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviewBuffer()Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewBuffer:Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    return-object v0
.end method

.method public getPreviewPreset()Lcom/zui/gallery/filtershow/pipeline/SharedPreset;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewPreset:Lcom/zui/gallery/filtershow/pipeline/SharedPreset;

    return-object v0
.end method

.method public getPreviousImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 2

    .line 1134
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentPanel()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1137
    :cond_0
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mScaleFactor:F

    return v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 462
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 463
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 464
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 465
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 466
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getState()Lcom/zui/gallery/filtershow/state/StateAdapter;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mState:Lcom/zui/gallery/filtershow/state/StateAdapter;

    return-object v0
.end method

.method public getTemporaryThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    .line 1199
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v1, 0xc8

    const/16 v2, 0x50

    .line 1200
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1206
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation()Landroid/graphics/Point;
    .locals 2

    .line 1154
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentPanel()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1156
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getZoomOrientation()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mZoomOrientation:I

    return v0
.end method

.method public declared-synchronized hasModifications()Z
    .locals 2

    monitor-enter p0

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getLoadedPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 558
    monitor-exit p0

    return v0

    .line 560
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->hasModifications()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    if-nez v0, :cond_2

    .line 564
    :try_start_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->hasModifications()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 566
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->equals(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasTinyPlanet()Z
    .locals 2

    .line 1254
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->contains(B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateFiltersOnly()V
    .locals 1

    const/4 v0, 0x0

    .line 836
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 837
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePreview()V

    return-void
.end method

.method public invalidateHighresPreview()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 850
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 852
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    :cond_0
    return-void
.end method

.method public invalidatePartialPreview()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 842
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 843
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 844
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    :cond_0
    return-void
.end method

.method public invalidatePreview()V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_0

    return-void

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewPreset:Lcom/zui/gallery/filtershow/pipeline/SharedPreset;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->enqueuePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 862
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviewBuffer:Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->invalidate()V

    .line 863
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    .line 864
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidateHighresPreview()V

    .line 865
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    .line 866
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdateHighResPreview()V

    .line 867
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->updatePreviewBuffer()V

    :cond_1
    return-void
.end method

.method public loadBitmap(Landroid/net/Uri;IZ)Z
    .locals 3

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x190

    .line 287
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 289
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 292
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setUri(Landroid/net/Uri;)V

    .line 293
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadBitmap mActivity: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " urxxxi "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "loom"

    invoke-static {v0, p3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getExif(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mEXIF:Ljava/util/List;

    .line 295
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p3, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p3

    iput p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 297
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 298
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/16 v1, 0x780

    .line 299
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 298
    invoke-static {p1, v0, p2, v1, p3}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadOrientedConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 302
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 303
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 305
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 312
    :cond_1
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 313
    invoke-virtual {p3, v2, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 316
    :cond_2
    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setOriginalBounds(Landroid/graphics/Rect;)V

    .line 317
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/16 p2, 0xa0

    int-to-float p3, p2

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    .line 323
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {p3, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 324
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mZoomOrientation:I

    .line 325
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    return v0
.end method

.method public loadBitmapReload(Landroid/net/Uri;I)Z
    .locals 4

    const-wide/16 v0, 0xc8

    .line 410
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 414
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setUri(Landroid/net/Uri;)V

    .line 415
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getExif(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mEXIF:Ljava/util/List;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " urxxxi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loom"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/16 v2, 0x780

    .line 421
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 420
    invoke-static {p1, v1, p2, v2, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadOrientedConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 424
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 425
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 426
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 433
    :cond_0
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 434
    invoke-virtual {v0, v3, v3, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 437
    :cond_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setOriginalBounds(Landroid/graphics/Rect;)V

    .line 438
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    return v3

    :cond_2
    const/16 p2, 0xa0

    int-to-float v0, p2

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 444
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 445
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mZoomOrientation:I

    .line 446
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    return v1
.end method

.method public loadPrivacyBitmap(Ljava/lang/String;IZ)Z
    .locals 3

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x190

    .line 332
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 334
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 337
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setUri(Landroid/net/Uri;)V

    .line 338
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setUri "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "wccc"

    invoke-static {v0, p3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 346
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPrivacyImgOrientation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOrientation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmmmm"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/16 v1, 0x780

    .line 349
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 348
    invoke-static {p1, v0, p2, v1, p3}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadOrientedConstrainedBitmap(Ljava/lang/String;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 352
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 353
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 355
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 362
    :cond_1
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    .line 363
    invoke-virtual {p3, v2, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    :cond_2
    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setOriginalBounds(Landroid/graphics/Rect;)V

    .line 367
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/16 p2, 0xa0

    int-to-float p3, p2

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    .line 373
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {p3, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 374
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOrientation:I

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mZoomOrientation:I

    .line 375
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    return v0
.end method

.method public needsUpdateHighResPreview()V
    .locals 3

    .line 1048
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    if-nez v0, :cond_0

    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_2

    return-void

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 1058
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v2

    .line 1057
    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->postHighresRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;FLcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 1059
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidateHighresPreview()V

    return-void
.end method

.method public needsUpdatePartialPreview()V
    .locals 11

    .line 1063
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->canDoPartialRendering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1067
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    return-void

    .line 1070
    :cond_1
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->originalImageToScreen()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1074
    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1075
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1076
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mShadowMargin:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mShadowMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1079
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1080
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1081
    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1083
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1084
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v0, :cond_3

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "111111string is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wangcanccc"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 1091
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v7

    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, p0

    .line 1090
    invoke-virtual/range {v5 .. v10}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->postFullresRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;FLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 1093
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    return-void
.end method

.method public notifyObservers()V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 744
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGoingNewLookAnimation()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOnGoingNewLookAnimation:Z

    return v0
.end method

.method public onHistoryItemClick(I)V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getItem(I)Lcom/zui/gallery/filtershow/history/HistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/history/HistoryItem;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 521
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/history/HistoryItem;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 522
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->setCurrentPreset(I)V

    :cond_0
    return-void
.end method

.method public onNewLook(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 5

    .line 663
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 668
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    if-ne v0, v1, :cond_2

    .line 669
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentAnimRotationStartValue:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentAnimRotationStartValue:F

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetAnimBitmap()V

    .line 673
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    .line 675
    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 676
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    new-array v0, v1, [F

    .line 677
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    .line 678
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    :cond_3
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    const-wide/16 v2, 0x1f4

    if-eqz v0, :cond_6

    .line 681
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotationDirection()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    move-result-object v0

    .line 682
    sget-object v4, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;->LEFT:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    if-ne v0, v4, :cond_4

    new-array v4, v1, [F

    .line 683
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    .line 685
    :cond_4
    sget-object v4, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;->RIGHT:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    if-ne v0, v4, :cond_5

    new-array v0, v1, [F

    .line 686
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    .line 688
    :cond_5
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    .line 689
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    :cond_6
    instance-of p1, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 692
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentLookAnimation:I

    new-array p1, p1, [F

    .line 693
    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    .line 694
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 696
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage$2;-><init>(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 711
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage$3;-><init>(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 739
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public originalImageToScreen()Landroid/graphics/Matrix;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 886
    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public refreshCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 796
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 797
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->refreshFilterForDrawRectMoving(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    :cond_0
    const-string p1, "MasterImage"

    const-string v0, "refreshCurrentFilterRepresentation mPreset == null"

    .line 800
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeListener(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener is called, size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanoom"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAnimBitmap()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreviousImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public resetGeometryImages(Z)V
    .locals 6

    .line 749
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    const/4 v1, 0x0

    .line 753
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setDoApplyFilters(Z)V

    const/4 v2, 0x1

    .line 754
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setDoApplyGeometry(Z)V

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 755
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v4, :cond_1

    .line 756
    invoke-virtual {v0, v4}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->equals(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 757
    :cond_1
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/4 v5, 0x2

    invoke-static {v0, v3, v4, v5, p0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->post(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ILcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 767
    :cond_3
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, v4}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 768
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setDoApplyFilters(Z)V

    .line 769
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setDoApplyGeometry(Z)V

    if-nez p1, :cond_4

    .line 770
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz p1, :cond_4

    .line 771
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->same(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 772
    :cond_4
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 773
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1, v3, v0, v2, p0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->post(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ILcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    :cond_5
    return-void
.end method

.method public resetTranslation()V
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1192
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    return-void
.end method

.method public savePreviewCaptionForSaveTask()V
    .locals 4

    .line 814
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getCaptionRepresentations()Ljava/util/HashMap;

    move-result-object v0

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save.....mCurrentFilterRepresentation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcanxxxxttt"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    instance-of v2, v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save.....mCurrentFilterRepresentation.name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanxxxx"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    return-void
.end method

.method public setAnimFraction(F)V
    .locals 0

    .line 642
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimFraction:F

    return-void
.end method

.method public setAnimRotation(F)V
    .locals 1

    .line 637
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentAnimRotationStartValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mAnimRotationValue:F

    .line 638
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    return-void
.end method

.method public setCrrop(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;Lcom/zui/gallery/filtershow/crop/CropObject;Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->geometryHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 175
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->filterCropRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 176
    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 177
    iput-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageBounds:Landroid/graphics/RectF;

    .line 178
    iput-object p5, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    return-void
.end method

.method public setCurrentFilter(Lcom/zui/gallery/filtershow/filters/ImageFilter;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilter:Lcom/zui/gallery/filtershow/filters/ImageFilter;

    return-void
.end method

.method public setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 787
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 788
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->refreshFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    :cond_0
    const-string p1, "MasterImage"

    const-string v0, "setCurrentFilterRepresentation   mPreset == null"

    .line 791
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCurrentPoint(FF)V
    .locals 0

    .line 1173
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentX:F

    .line 1174
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCurrentY:F

    return-void
.end method

.method public setHighresImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setHistoryManager(Lcom/zui/gallery/filtershow/history/HistoryManager;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    return-void
.end method

.method public setImageShowSize(II)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_2

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 875
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 877
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    .line 878
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    .line 881
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdateHighResPreview()V

    :cond_2
    return-void
.end method

.method public setLoadedPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mLoadedPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setMaskScale(F)V
    .locals 0

    .line 628
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaskScale:F

    .line 629
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    return-void
.end method

.method public setMaxScaleFactor(F)V
    .locals 0

    .line 1221
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    return-void
.end method

.method public setOriginalBitmapHighres(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOriginalBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setOriginalTranslation(Landroid/graphics/Point;)V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalTranslation:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1186
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mOriginalTranslation:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public declared-synchronized setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V
    .locals 1

    monitor-enter p0

    .line 496
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->showFilters()V

    .line 499
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 500
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mState:Lcom/zui/gallery/filtershow/state/StateAdapter;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->fillImageStateAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V

    if-eqz p3, :cond_1

    .line 502
    new-instance p1, Lcom/zui/gallery/filtershow/history/HistoryItem;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {p1, p3, p2}, Lcom/zui/gallery/filtershow/history/HistoryItem;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 503
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    if-eqz p2, :cond_1

    .line 504
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mHistory:Lcom/zui/gallery/filtershow/history/HistoryManager;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->addHistoryItem(Lcom/zui/gallery/filtershow/history/HistoryItem;)V

    :cond_1
    const/4 p1, 0x1

    .line 507
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->updatePresets(Z)V

    const/4 p1, 0x0

    .line 508
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetGeometryImages(Z)V

    .line 509
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz p1, :cond_2

    .line 510
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setScaleFactor(F)V
    .locals 1

    .line 1145
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mScaleFactor:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1148
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mScaleFactor:F

    .line 1149
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    return-void
.end method

.method public setShowsOriginal(Z)V
    .locals 0

    .line 1229
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mShowsOriginal:Z

    .line 1230
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    return-void
.end method

.method public setStateAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mState:Lcom/zui/gallery/filtershow/state/StateAdapter;

    return-void
.end method

.method public setSupportsHighRes(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    return-void
.end method

.method public setTranslation(Landroid/graphics/Point;)V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1168
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 1169
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public showsOriginal()Z
    .locals 1

    .line 1234
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mShowsOriginal:Z

    return v0
.end method

.method public supportsHighRes()Z
    .locals 1

    .line 1225
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    return v0
.end method

.method public updatePresets(Z)V
    .locals 0

    .line 779
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePreview()V

    return-void
.end method

.method public warnListeners()V
    .locals 2

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mWarnListenersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
