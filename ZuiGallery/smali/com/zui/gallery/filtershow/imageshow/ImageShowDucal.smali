.class public Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;
.super Landroid/widget/ImageView;
.source "ImageShowDucal.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;
    }
.end annotation


# static fields
.field private static final EDGE_BOTTOM:I = 0x4

.field private static final EDGE_LEFT:I = 0x1

.field private static final EDGE_RIGHT:I = 0x3

.field private static final EDGE_TOP:I = 0x2

.field private static final ENABLE_ZOOMED_COMPARISON:Z = false

.field private static UNVEIL_HORIZONTAL:I = 0x1

.field private static UNVEIL_VERTICAL:I = 0x2

.field private static final mAnimationSnapDelay:I = 0xc8

.field private static final mAnimationZoomDelay:I = 0x190


# instance fields
.field private holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field private mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

.field private mAnimatorScale:Landroid/animation/ValueAnimator;

.field private mAnimatorTranslateX:Landroid/animation/ValueAnimator;

.field private mAnimatorTranslateY:Landroid/animation/ValueAnimator;

.field private mCurrentEdgeEffect:I

.field private mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

.field private mEdgeSize:I

.field private mFinishedScalingOperation:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mImageBounds:Landroid/graphics/Rect;

.field private mImageShowSize:Landroid/graphics/Point;

.field mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

.field private mMaxScaleFactor:F

.field private mOrginPoint:[F

.field private mOriginalDisabled:Z

.field private mOriginalImageBounds:Landroid/graphics/Rect;

.field mOriginalScale:F

.field private mOriginalTranslation:Landroid/graphics/Point;

.field protected mPaint:Landroid/graphics/Paint;

.field private mScaleFactor:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mShadowMargin:I

.field private mShowOriginalDirection:I

.field mStartFocusX:F

.field mStartFocusY:F

.field private mToOrig:Landroid/graphics/Matrix;

.field private mTouch:Landroid/graphics/Point;

.field private mTouchDown:Landroid/graphics/Point;

.field private mTouchPoint:[F

.field private mTouchShowOriginalDate:J

.field private final mTouchShowOriginalDelayMin:J

.field private mTranslation:Landroid/graphics/Point;

.field private mZoomIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    .line 37
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    .line 38
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDate:J

    .line 46
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mFinishedScalingOperation:Z

    .line 47
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    .line 48
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    .line 50
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalDisabled:Z

    const-wide/16 v1, 0xc8

    .line 51
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDelayMin:J

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    .line 53
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 56
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mZoomIn:Z

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 58
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mCurrentEdgeEffect:I

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 64
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeSize:I

    .line 67
    new-instance p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    .line 72
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 73
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleFactor:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 74
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mMaxScaleFactor:F

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 77
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    new-array p1, p1, [F

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    .line 80
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    .line 37
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    .line 38
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDate:J

    .line 46
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mFinishedScalingOperation:Z

    .line 47
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    .line 48
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    .line 50
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalDisabled:Z

    const-wide/16 v1, 0xc8

    .line 51
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDelayMin:J

    .line 52
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    .line 53
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 56
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mZoomIn:Z

    .line 57
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 58
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mCurrentEdgeEffect:I

    .line 59
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 64
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeSize:I

    .line 67
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 70
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    .line 71
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    .line 72
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 73
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 74
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mMaxScaleFactor:F

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 77
    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    new-array v1, v1, [F

    .line 78
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    .line 80
    sget-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 92
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setupGestureDetector(Landroid/content/Context;)V

    .line 93
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 94
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeSize:I

    .line 95
    check-cast p1, Lcom/zui/gallery/filtershow/FocusActivity;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 97
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 99
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, v0, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    .line 34
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    .line 37
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    .line 38
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDate:J

    .line 46
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mFinishedScalingOperation:Z

    .line 47
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    .line 48
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    .line 50
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalDisabled:Z

    const-wide/16 v0, 0xc8

    .line 51
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDelayMin:J

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    .line 53
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 56
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mZoomIn:Z

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 58
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mCurrentEdgeEffect:I

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 64
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeSize:I

    .line 67
    new-instance p1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    .line 72
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 73
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleFactor:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 74
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mMaxScaleFactor:F

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 77
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    new-array p1, p1, [F

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    .line 80
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)Landroid/graphics/Point;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;Landroid/graphics/Point;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setTranslation(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->applyTranslationConstraints()V

    return-void
.end method

.method private applyTranslationConstraints()V
    .locals 8

    .line 372
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    .line 373
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v1

    .line 374
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 375
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 376
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->constrainTranslation(Landroid/graphics/Point;F)V

    .line 378
    iget v0, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v0, :cond_0

    iget v0, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v0, :cond_1

    .line 379
    :cond_0
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    const/16 v7, 0xc8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->startAnimTranslation(IIIII)V

    :cond_1
    return-void
.end method

.method private calcScreenMapping()V
    .locals 1

    const/4 v0, 0x1

    .line 706
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mToOrig:Landroid/graphics/Matrix;

    return-void
.end method

.method private constrainTranslation(Landroid/graphics/Point;F)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 462
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mCurrentEdgeEffect:I

    .line 463
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    .line 468
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FocusActivity;->getBitmapBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 469
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 470
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 472
    iget v0, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 473
    :goto_0
    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 474
    :goto_1
    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    .line 475
    :goto_2
    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v1

    .line 477
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x2

    if-lez v7, :cond_6

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 479
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 480
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x3

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    .line 483
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 484
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    move v1, v2

    goto :goto_4

    .line 488
    :cond_6
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    .line 489
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    mul-int/2addr v4, v9

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    .line 490
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v2

    div-float/2addr v4, p2

    float-to-int v0, v4

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 493
    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    .line 495
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 496
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x4

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    .line 499
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 500
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 504
    :cond_9
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    .line 505
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    mul-int/2addr v4, v9

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    .line 506
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float/2addr v3, v2

    div-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_a
    move v9, v1

    .line 509
    :goto_5
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mCurrentEdgeEffect:I

    if-eq p1, v9, :cond_d

    if-eqz p1, :cond_b

    if-eqz v9, :cond_c

    .line 511
    :cond_b
    iput v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mCurrentEdgeEffect:I

    .line 512
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 514
    :cond_c
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeSize:I

    invoke-virtual {p1, p2, v0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :cond_d
    if-eqz v9, :cond_e

    .line 517
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mEdgeSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_e
    return-void
.end method

.method private drawHighresImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, p2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_5

    .line 130
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 132
    sget v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->UNVEIL_VERTICAL:I

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    goto :goto_0

    .line 134
    :cond_0
    sget v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->UNVEIL_HORIZONTAL:I

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    .line 140
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    sget v1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 151
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->UNVEIL_HORIZONTAL:I

    if-ne v3, v4, :cond_3

    .line 154
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 159
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, p2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 167
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 169
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private getImageToScreenMatrix(Z)Landroid/graphics/Matrix;
    .locals 6

    .line 717
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->holder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->getZoomOrientation()I

    move-result v1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    .line 721
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float v3, p1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, p1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, p1

    .line 720
    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getOriginalToScreen(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IFFFF)Landroid/graphics/Matrix;

    move-result-object p1

    if-nez p1, :cond_1

    .line 723
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-object p1

    .line 727
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 728
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v1

    .line 729
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 730
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object p1

    .line 718
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1
.end method

.method private getScreenToImageMatrix(Z)Landroid/graphics/Matrix;
    .locals 1

    .line 710
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object p1

    .line 711
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 712
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method private getTranslation()Landroid/graphics/Point;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    return-object v0
.end method

.method private setImageShowSize(II)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 203
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 204
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mMaxScaleFactor:F

    :cond_1
    return-void
.end method

.method private setTranslation(Landroid/graphics/Point;)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 660
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 662
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    return-void
.end method

.method private startAnimTranslation(IIIII)V
    .locals 3

    if-ne p1, p2, :cond_0

    if-ne p3, p4, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 345
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    new-array p2, v0, [I

    aput p3, p2, v2

    aput p4, p2, p1

    .line 346
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 347
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 348
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 349
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$2;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 367
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 368
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;
    .locals 5

    .line 213
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 225
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 226
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/FocusActivity;->getBitmapBounds()Landroid/graphics/RectF;

    move-result-object p3

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 228
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 232
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 237
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, v0

    sub-float/2addr v3, p3

    div-float/2addr v3, v2

    .line 242
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object p3

    .line 243
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p1, p2, v0, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 245
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 246
    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 247
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result p2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 250
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    mul-float/2addr p2, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    .line 251
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    mul-float/2addr p3, v0

    .line 250
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public didFinishScalingOperation()Z
    .locals 2

    .line 643
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mFinishedScalingOperation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 644
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mFinishedScalingOperation:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected enableComparison()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMaxScaleFactor()F
    .locals 1

    .line 702
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mMaxScaleFactor:F

    return v0
.end method

.method public getOriginalTranslation()Landroid/graphics/Point;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 684
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleFactor:F

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 391
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mZoomIn:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mZoomIn:Z

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 395
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mZoomIn:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getMaxScaleFactor()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v4

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_3

    .line 400
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 404
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v2, v5, v1

    .line 403
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 407
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 408
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 409
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object p1

    .line 410
    iget v9, p1, Landroid/graphics/Point;->x:I

    .line 411
    iget v11, p1, Landroid/graphics/Point;->y:I

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 414
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 416
    :cond_2
    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 417
    iput v7, p1, Landroid/graphics/Point;->y:I

    .line 419
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->constrainTranslation(Landroid/graphics/Point;F)V

    .line 421
    iget v10, p1, Landroid/graphics/Point;->x:I

    iget v12, p1, Landroid/graphics/Point;->y:I

    const/16 v13, 0x190

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->startAnimTranslation(IIIII)V

    .line 424
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 425
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$3;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 432
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$4;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mAnimatorScale:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 112
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShadowMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setImageShowSize(II)V

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->drawHighresImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 556
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 559
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 595
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    .line 597
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 598
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getMaxScaleFactor()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getMaxScaleFactor()F

    move-result v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    .line 604
    :cond_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setScaleFactor(F)V

    .line 605
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    .line 606
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 607
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 608
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mStartFocusX:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 609
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mStartFocusY:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    .line 610
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 611
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 612
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 613
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setTranslation(Landroid/graphics/Point;)V

    .line 614
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 620
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 622
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 623
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalScale:F

    .line 624
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mStartFocusX:F

    .line 625
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mStartFocusY:F

    .line 626
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 632
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 634
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 635
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setScaleFactor(F)V

    .line 636
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 528
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 529
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 530
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 531
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    aget v4, v1, v3

    aput v4, p1, v3

    .line 532
    aget v1, v1, v2

    aput v1, p1, v2

    .line 533
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0, p1, v1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object p1

    .line 536
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FocusActivity;->getBitmapBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 537
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 538
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, p1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->calcScreenMapping()V

    .line 540
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mToOrig:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "touch view point "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " real image x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bing"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mActivity:Lcom/zui/gallery/filtershow/FocusActivity;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchPoint:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOrginPoint:[F

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/filtershow/FocusActivity;->updateTouchPoint([F[F)V

    :cond_0
    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 264
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bing"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 269
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->scaleInProgress()Z

    move-result v1

    .line 270
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    sget-object v3, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->scaleInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 277
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mFinishedScalingOperation:Z

    .line 280
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 283
    sget-object v5, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 284
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 285
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iput v2, v5, Landroid/graphics/Point;->y:I

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDate:J

    .line 287
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mShowOriginalDirection:I

    .line 288
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setOriginalTranslation(Landroid/graphics/Point;)V

    :cond_2
    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v0, v5, :cond_4

    .line 291
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    sget-object v7, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    if-ne v5, v7, :cond_4

    .line 292
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 293
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 295
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result v1

    cmpl-float v2, v1, v6

    if-lez v2, :cond_3

    .line 297
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 298
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 299
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getOriginalTranslation()Landroid/graphics/Point;

    move-result-object v1

    .line 300
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v5

    .line 301
    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, v5, Landroid/graphics/Point;->x:I

    .line 302
    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    .line 303
    invoke-direct {p0, v5}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setTranslation(Landroid/graphics/Point;)V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->enableComparison()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalDisabled:Z

    if-nez v1, :cond_4

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchShowOriginalDate:J

    sub-long/2addr v1, v7

    const-wide/16 v7, 0xc8

    cmp-long v1, v1, v7

    if-lez v1, :cond_4

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    :cond_4
    :goto_0
    if-eq v0, v4, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/4 p1, 0x4

    if-ne v0, p1, :cond_6

    .line 314
    :cond_5
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal$InteractionMode;

    .line 315
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 316
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouchDown:Landroid/graphics/Point;

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 317
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 318
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTouch:Landroid/graphics/Point;

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 319
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result p1

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_6

    .line 320
    invoke-virtual {p0, v6}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setScaleFactor(F)V

    .line 321
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->resetTranslation()V

    .line 325
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getScaleFactor()F

    move-result p1

    .line 326
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 327
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->constrainTranslation(Landroid/graphics/Point;F)V

    .line 328
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setTranslation(Landroid/graphics/Point;)V

    .line 330
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    return v4
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public resetTranslation()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 679
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 681
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    return-void
.end method

.method public scaleInProgress()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public setOriginalBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalImageBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setOriginalTranslation(Landroid/graphics/Point;)V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 674
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mOriginalTranslation:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 1

    .line 691
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleFactor:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 694
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleFactor:F

    .line 696
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->invalidate()V

    return-void
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1

    .line 255
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mGestureDetector:Landroid/view/GestureDetector;

    .line 256
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
