.class public Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.super Landroid/view/View;
.source "ImageShow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;
    }
.end annotation


# static fields
.field private static final EDGE_BOTTOM:I = 0x4

.field private static final EDGE_LEFT:I = 0x1

.field private static final EDGE_RIGHT:I = 0x3

.field private static final EDGE_TOP:I = 0x2

.field private static final ENABLE_ZOOMED_COMPARISON:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "ImageShow"

.field private static UNVEIL_HORIZONTAL:I = 0x1

.field private static UNVEIL_VERTICAL:I = 0x2

.field public static change:Z = false

.field public static isMirrorDirectionHorizontal:Z = false

.field private static final mAnimationSnapDelay:I = 0xc8

.field private static final mAnimationZoomDelay:I = 0x190

.field private static sMask:Landroid/graphics/Bitmap;


# instance fields
.field private final SEND_EMPTY_MESSAGE_FLAG:I

.field private mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private mAnimatorScale:Landroid/animation/ValueAnimator;

.field private mAnimatorTranslateX:Landroid/animation/ValueAnimator;

.field private mAnimatorTranslateY:Landroid/animation/ValueAnimator;

.field protected mBackgroundColor:I

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mCurrentEdgeEffect:I

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDidStartAnimation:Z

.field private mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

.field private mEdgeSize:I

.field private mFinishedScalingOperation:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field protected mImageBounds:Landroid/graphics/Rect;

.field mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mOriginalDisabled:Z

.field mOriginalScale:F

.field private mOriginalText:Ljava/lang/String;

.field private mOriginalTextMargin:I

.field private mOriginalTextSize:I

.field mOriginalTranslation:Landroid/graphics/Point;

.field protected mPaint:Landroid/graphics/Paint;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mShadow:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowDrawn:Z

.field private mShadowMargin:I

.field private mShowOriginalDirection:I

.field mStartFocusX:F

.field mStartFocusY:F

.field protected mTextPadding:I

.field protected mTextSize:I

.field private mTouch:Landroid/graphics/Point;

.field private mTouchDown:Landroid/graphics/Point;

.field private mTouchShowOriginal:Z

.field private mTouchShowOriginalDate:J

.field private final mTouchShowOriginalDelayMin:J

.field private mZoomIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 182
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 77
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    const-wide/16 v2, 0x0

    .line 82
    iput-wide v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    const-wide/16 v2, 0xc8

    .line 83
    iput-wide v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 84
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 88
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowBounds:Landroid/graphics/Rect;

    const/16 v2, 0xf

    .line 90
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    .line 91
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowDrawn:Z

    .line 93
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    .line 94
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    .line 95
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 100
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 101
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    .line 105
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 110
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    const/16 v2, 0x64

    .line 111
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeSize:I

    .line 115
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 116
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    .line 117
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    .line 119
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentX:F

    .line 120
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentY:F

    .line 127
    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 132
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mDidStartAnimation:Z

    const/4 v1, 0x1

    .line 139
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->SEND_EMPTY_MESSAGE_FLAG:I

    .line 152
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 687
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->setupImageShow(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 76
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 77
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    const-wide/16 v1, 0xc8

    .line 83
    iput-wide v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 84
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 88
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowBounds:Landroid/graphics/Rect;

    const/16 v1, 0xf

    .line 90
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    .line 91
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowDrawn:Z

    .line 93
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    .line 94
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    .line 95
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 100
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 101
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    .line 105
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 110
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    const/16 v1, 0x64

    .line 111
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeSize:I

    .line 115
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 116
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    .line 117
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentX:F

    .line 120
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentY:F

    .line 127
    sget-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    .line 130
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 132
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mDidStartAnimation:Z

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->SEND_EMPTY_MESSAGE_FLAG:I

    .line 152
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 687
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 177
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->setupImageShow(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 76
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 77
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 79
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 80
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    .line 81
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    const-wide/16 v0, 0xc8

    .line 83
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 84
    iput p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 88
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowBounds:Landroid/graphics/Rect;

    const/16 v0, 0xf

    .line 90
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    .line 91
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowDrawn:Z

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    .line 94
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    .line 95
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 100
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    .line 105
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    .line 110
    iput p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    const/16 v0, 0x64

    .line 111
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeSize:I

    .line 115
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 116
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    .line 117
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentX:F

    .line 120
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentY:F

    .line 127
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 132
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mDidStartAnimation:Z

    const/4 p3, 0x1

    .line 139
    iput p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->SEND_EMPTY_MESSAGE_FLAG:I

    .line 152
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 687
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 172
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->setupImageShow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/imageshow/ImageShow;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->applyTranslationConstraints()V

    return-void
.end method

.method private applyTranslationConstraints()V
    .locals 8

    .line 835
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    .line 836
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v1

    .line 837
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 838
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 839
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->constrainTranslation(Landroid/graphics/Point;F)V

    .line 841
    iget v0, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v0, :cond_0

    iget v0, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v0, :cond_1

    .line 842
    :cond_0
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    const/16 v7, 0xc8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->startAnimTranslation(IIIII)V

    :cond_1
    return-void
.end method

.method private computeImageBounds(II)Landroid/graphics/Rect;
    .locals 6

    int-to-float p1, p1

    int-to-float p2, p2

    .line 558
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 557
    invoke-static {p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scale(FFFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 562
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 563
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    .line 564
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v3, v2

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    add-int/2addr v3, v4

    float-to-int v5, v0

    add-int/2addr v5, v4

    add-float/2addr p1, v2

    float-to-int p1, p1

    sub-int/2addr p1, v4

    add-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p2, v4

    invoke-direct {v1, v3, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private constrainTranslation(Landroid/graphics/Point;F)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 925
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    .line 926
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    return-void

    .line 930
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 931
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 933
    :cond_1
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v2

    .line 934
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v3, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 935
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mBitmapRect:Landroid/graphics/RectF;

    .line 944
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 946
    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 947
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    .line 948
    :goto_1
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v1

    .line 949
    :goto_2
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v1

    .line 951
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x2

    if-lez v7, :cond_7

    if-eqz v2, :cond_6

    if-nez v4, :cond_6

    .line 953
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    .line 954
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, p2

    float-to-int v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x3

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    .line 957
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    .line 958
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, p2

    float-to-int v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    move v1, v3

    goto :goto_4

    .line 962
    :cond_7
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    .line 963
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    mul-int/2addr v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    .line 964
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v4, v2

    sub-float/2addr v4, v3

    div-float/2addr v4, p2

    float-to-int v2, v4

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 967
    :cond_8
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    .line 969
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 970
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x4

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_b

    if-nez v6, :cond_b

    .line 973
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 974
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 978
    :cond_a
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    .line 979
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    mul-int/2addr v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v8

    .line 980
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    div-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_b
    move v9, v1

    .line 983
    :goto_5
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    if-eq p1, v9, :cond_e

    if-eqz p1, :cond_c

    if-eqz v9, :cond_d

    .line 985
    :cond_c
    iput v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    .line 986
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 988
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeSize:I

    invoke-virtual {p1, p2, v0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :cond_e
    if-eqz v9, :cond_f

    .line 991
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_f
    return-void
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static createShader(Landroid/graphics/Bitmap;)Landroid/graphics/Shader;
    .locals 3

    .line 149
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method private drawHighresImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 365
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->originalImageToScreen()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 367
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 368
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 369
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 370
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPartialBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    .line 372
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 373
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 374
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 571
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowDrawn:Z

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    add-int/2addr v3, v4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    add-int/2addr p2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 574
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 575
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    .line 576
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowDrawn:Z

    :cond_0
    return-void
.end method

.method private setupImageShow(Landroid/content/Context;)V
    .locals 2

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06028a

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTextSize:I

    const v1, 0x7f060289

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTextPadding:I

    const v1, 0x7f060287

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    const v1, 0x7f060288

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    const v1, 0x7f050047

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    const v1, 0x7f1001cb

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    const v1, 0x7f0701f9

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 195
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 196
    move-object v1, p1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 197
    sget-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->sMask:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f070357

    .line 198
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->sMask:Landroid/graphics/Bitmap;

    .line 201
    :cond_0
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    const p1, 0x7f060180

    .line 202
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeSize:I

    return-void
.end method

.method private startAnimTranslation(IIIII)V
    .locals 3

    if-ne p1, p2, :cond_0

    if-ne p3, p4, :cond_0

    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 806
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 808
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    new-array p2, v0, [I

    aput p3, p2, v2

    aput p4, p2, p1

    .line 809
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    .line 810
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 811
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 812
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShow$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$2;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 821
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShow$3;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$3;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 830
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateX:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 831
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorTranslateY:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method actionDown()V
    .locals 4

    const-string/jumbo v0, "wangcanbabababa"

    const-string v1, "actionDown is called"

    .line 699
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method actionUp()V
    .locals 2

    const-string/jumbo v0, "wangcanbabababa"

    const-string v1, "actionUp is called"

    .line 706
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 707
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 708
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method

.method public attach()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->addObserver(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    .line 207
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->bindAsImageLoadListener()V

    .line 208
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetGeometryImages(Z)V

    return-void
.end method

.method public bindAsImageLoadListener()V
    .locals 1

    .line 655
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->addListener(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    return-void
.end method

.method public clearCaptionEffect()V
    .locals 1

    .line 223
    move-object v0, p0

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->clearCaptionEffect()V

    return-void
.end method

.method public destoryView()V
    .locals 0

    return-void
.end method

.method public detach()V
    .locals 1

    .line 212
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->removeObserver(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    .line 214
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->unBindAsImageLoadListener()V

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    return-void
.end method

.method public didFinishScalingOperation()Z
    .locals 2

    .line 1101
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public drawCompareImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 581
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->showsOriginal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-nez v2, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_7

    .line 587
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    if-nez v2, :cond_2

    .line 588
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 589
    sget v2, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    goto :goto_0

    .line 591
    :cond_1
    sget v2, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 597
    :cond_2
    :goto_0
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v3, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v2, v3, :cond_3

    .line 598
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 599
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    goto :goto_2

    .line 601
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 602
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v1, :cond_4

    .line 604
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    move v2, v3

    .line 608
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 610
    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v5, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    if-ne v4, v5, :cond_5

    .line 611
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_6

    .line 612
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 616
    :cond_5
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_6

    .line 617
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 622
    invoke-virtual {v0, p2, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 624
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x1000000

    .line 625
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 626
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 636
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    .line 637
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 638
    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 639
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v2, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 640
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 642
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 643
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 644
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 643
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 646
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, -0x1

    .line 647
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 649
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 648
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 651
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawImageAndAnimate(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 401
    invoke-virtual {v3, v2, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    .line 406
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 408
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v4, v4, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 409
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 410
    iget-object v8, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onGoingNewLookAnimation()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    .line 413
    iget-boolean v9, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mDidStartAnimation:Z

    if-eqz v9, :cond_3

    .line 415
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v9

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->equals(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 417
    iput-boolean v5, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mDidStartAnimation:Z

    .line 418
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetAnimBitmap()V

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    .line 423
    iput-boolean v8, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mDidStartAnimation:Z

    :cond_4
    :goto_0
    if-eqz v7, :cond_f

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 430
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviousImage()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_5

    return-void

    .line 436
    :cond_5
    invoke-virtual {v3, v7, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->computeImageToScreen(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Matrix;

    move-result-object v9

    .line 437
    new-instance v10, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v10, v4, v4, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 438
    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 439
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 440
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 441
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    .line 442
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 445
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentLookAnimation()I

    move-result v13

    const/4 v14, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v13, v8, :cond_7

    .line 447
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getMaskScale()F

    move-result v3

    cmpl-float v10, v3, v4

    if-ltz v10, :cond_6

    .line 449
    sget-object v8, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 450
    sget-object v12, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    .line 451
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v10, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->hintTouchPoint(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v10

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, v14

    int-to-float v5, v5

    .line 453
    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v13

    div-float/2addr v5, v13

    mul-float/2addr v3, v5

    .line 455
    iget v5, v10, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v8, v3

    sub-float/2addr v5, v8

    .line 456
    iget v8, v10, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v12, v3

    sub-float/2addr v8, v12

    .line 459
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 460
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    div-float/2addr v15, v3

    invoke-virtual {v10, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 461
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    neg-float v12, v5

    iget-object v13, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    neg-float v13, v8

    iget-object v14, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 462
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v10, v12

    .line 463
    iget-object v12, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 464
    iget-object v13, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v10, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 465
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->reset()V

    .line 466
    invoke-static/range {p2 .. p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->createShader(Landroid/graphics/Bitmap;)Landroid/graphics/Shader;

    move-result-object v2

    .line 467
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 468
    iget-object v10, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 470
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 471
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 472
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 473
    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 475
    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->sMask:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    move v5, v8

    :goto_1
    move v8, v5

    goto/16 :goto_3

    .line 478
    :cond_7
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentLookAnimation()I

    move-result v2

    if-ne v2, v14, :cond_8

    .line 480
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviousImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 481
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviousImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 480
    invoke-direct {v0, v2, v4}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->computeImageBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 482
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviousImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 483
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviousImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 482
    invoke-direct {v0, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->computeImageBounds(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 484
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 485
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimFraction()F

    move-result v4

    sub-float v4, v15, v4

    mul-float/2addr v4, v15

    .line 486
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimFraction()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 487
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimRotationValue()F

    move-result v2

    invoke-virtual {v1, v2, v12, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 488
    invoke-virtual {v1, v4, v4, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    .line 489
    :cond_8
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentLookAnimation()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    .line 491
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v2, :cond_d

    .line 493
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 495
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 499
    invoke-static {v2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object v2

    .line 501
    iget-object v4, v2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_b

    iget-object v2, v2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 532
    :cond_9
    sget-boolean v2, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->isMirrorDirectionHorizontal:Z

    if-eqz v2, :cond_a

    .line 533
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimRotationValue()F

    move-result v2

    invoke-virtual {v1, v2, v15, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    :cond_a
    if-nez v2, :cond_d

    .line 535
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimRotationValue()F

    move-result v2

    invoke-virtual {v1, v15, v2, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    .line 512
    :cond_b
    :goto_2
    sget-boolean v2, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->isMirrorDirectionHorizontal:Z

    if-eqz v2, :cond_c

    .line 513
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimRotationValue()F

    move-result v2

    invoke-virtual {v1, v2, v15, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    :cond_c
    if-nez v2, :cond_d

    .line 515
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getAnimRotationValue()F

    move-result v2

    invoke-virtual {v1, v15, v2, v12, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_d
    :goto_3
    if-eqz v8, :cond_e

    .line 543
    invoke-direct {v0, v1, v11}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 544
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 547
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 549
    :cond_f
    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 550
    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 553
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected enableComparison()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;
    .locals 1

    .line 239
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentX()F
    .locals 1

    .line 1109
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .line 1113
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentY:F

    return v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 392
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 384
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 388
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 278
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method protected getImageToScreenMatrix(Z)Landroid/graphics/Matrix;
    .locals 5

    .line 250
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v1

    .line 256
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 254
    invoke-static {v1, p1, v2, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getImageToScreenMatrix(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;

    move-result-object p1

    .line 257
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v1

    .line 258
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    .line 259
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 260
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object p1
.end method

.method protected getScreenToImageMatrix(Z)Landroid/graphics/Matrix;
    .locals 1

    .line 271
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object p1

    .line 272
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 283
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 286
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasModifications()Z
    .locals 1

    .line 159
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasModifications()Z

    move-result v0

    return v0
.end method

.method public imageLoaded()V
    .locals 0

    .line 669
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->updateImage()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 854
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mZoomIn:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mZoomIn:Z

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 858
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mZoomIn:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 859
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getMaxScaleFactor()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 862
    :goto_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v4

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_3

    .line 863
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 864
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 867
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v2, v5, v1

    .line 866
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    .line 870
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 871
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 872
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object p1

    .line 873
    iget v9, p1, Landroid/graphics/Point;->x:I

    .line 874
    iget v11, p1, Landroid/graphics/Point;->y:I

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 876
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 877
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 879
    :cond_2
    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 880
    iput v7, p1, Landroid/graphics/Point;->y:I

    .line 882
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->constrainTranslation(Landroid/graphics/Point;F)V

    .line 884
    iget v10, p1, Landroid/graphics/Point;->x:I

    iget v12, p1, Landroid/graphics/Point;->y:I

    const/16 v13, 0x190

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->startAnimTranslation(IIIII)V

    .line 887
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 888
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$4;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 895
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow$5;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 917
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mAnimatorScale:Landroid/animation/ValueAnimator;

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

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 292
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 294
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 296
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 294
    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setImageShowSize(II)V

    .line 298
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 300
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLoadingVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 301
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getLoadedPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getLoadedPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getLoadedPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->equals(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getLoadedPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 304
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->stopLoadingIndicator()V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->stopLoadingIndicator()V

    .line 311
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShadowDrawn:Z

    .line 315
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 316
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPartialImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 318
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onGoingNewLookAnimation()Z

    move-result v4

    if-eqz v2, :cond_5

    if-eqz v4, :cond_4

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawImageAndAnimate(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 321
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawImageAndAnimate(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 326
    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawHighresImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 327
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->drawCompareImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 331
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 334
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 337
    :cond_6
    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    const/high16 v1, 0x43340000    # 180.0f

    .line 338
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_8

    const/high16 v1, 0x42b40000    # 90.0f

    .line 340
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 341
    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_8
    if-ne v3, v1, :cond_9

    const/high16 v1, 0x43870000    # 270.0f

    .line 343
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 344
    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    :cond_9
    :goto_3
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    if-eqz v1, :cond_a

    .line 347
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mEdgeEffect:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 349
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 350
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_4

    .line 352
    :cond_b
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentEdgeEffect:I

    .line 354
    :goto_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isCaptionDeleteClicked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 355
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 356
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentPanel()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_c

    .line 357
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setCaptionDeleteClicked(Landroid/content/Context;Z)V

    .line 358
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->refreshCaptionSelectState()V

    :cond_c
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1012
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 1015
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

.method protected onMeasure(II)V
    .locals 0

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 234
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNewValue(I)V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1049
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentPanel()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    return v1

    .line 1053
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v2

    .line 1056
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    .line 1057
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getMaxScaleFactor()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1058
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getMaxScaleFactor()F

    move-result v2

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2

    move v2, v3

    .line 1063
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 1064
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    .line 1065
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 1066
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 1067
    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mStartFocusX:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    .line 1068
    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mStartFocusY:F

    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    .line 1069
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 1070
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1071
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 1072
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setTranslation(Landroid/graphics/Point;)V

    .line 1073
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1079
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1081
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalTranslation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1082
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalScale:F

    .line 1083
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mStartFocusX:F

    .line 1084
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mStartFocusY:F

    .line 1085
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 1092
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    .line 1094
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 1095
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 1096
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 715
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 719
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 720
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->scaleInProgress()Z

    move-result v1

    .line 721
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 722
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    sget-object v3, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->SCALE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->scaleInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 728
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mFinishedScalingOperation:Z

    .line 731
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const-wide/16 v5, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez v0, :cond_2

    .line 734
    sget-object v8, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    .line 735
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iput v1, v8, Landroid/graphics/Point;->x:I

    .line 736
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iput v2, v8, Landroid/graphics/Point;->y:I

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 738
    iput v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 739
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setOriginalTranslation(Landroid/graphics/Point;)V

    .line 741
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v8

    cmpg-float v8, v8, v3

    if-gtz v8, :cond_2

    .line 742
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    .line 747
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    sget-object v9, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    if-ne v8, v9, :cond_4

    .line 748
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iput v1, v8, Landroid/graphics/Point;->x:I

    .line 749
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 751
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_3

    .line 755
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 756
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 757
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalTranslation()Landroid/graphics/Point;

    move-result-object v1

    .line 758
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v5

    .line 759
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int p1, v6

    iput p1, v5, Landroid/graphics/Point;->x:I

    .line 760
    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    .line 761
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setTranslation(Landroid/graphics/Point;)V

    .line 762
    iput-boolean v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->enableComparison()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mOriginalDisabled:Z

    if-nez v1, :cond_4

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v1, v8

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 767
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    :cond_4
    :goto_0
    if-eq v0, v4, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/4 p1, 0x4

    if-ne v0, p1, :cond_7

    .line 774
    :cond_5
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mInteractionMode:Lcom/zui/gallery/filtershow/imageshow/ImageShow$InteractionMode;

    .line 775
    iput-boolean v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 776
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 777
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouchDown:Landroid/graphics/Point;

    iput v7, p1, Landroid/graphics/Point;->y:I

    .line 778
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 779
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mTouch:Landroid/graphics/Point;

    iput v7, p1, Landroid/graphics/Point;->y:I

    .line 780
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_6

    .line 781
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setScaleFactor(F)V

    .line 782
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetTranslation()V

    .line 785
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    :cond_7
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p1

    .line 790
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v0

    .line 791
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->constrainTranslation(Landroid/graphics/Point;F)V

    .line 792
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setTranslation(Landroid/graphics/Point;)V

    .line 793
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return v4
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public resetImageCaches(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V
    .locals 0

    .line 380
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePreview()V

    return-void
.end method

.method public resetParameter()V
    .locals 0

    return-void
.end method

.method public saveImage(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/zui/gallery/filtershow/tools/SaveImage;->saveImage(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V

    return-void
.end method

.method public scaleInProgress()Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public setmCurrentPotin(FF)V
    .locals 1

    .line 1117
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentX:F

    .line 1118
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mCurrentY:F

    .line 1119
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentPoint(FF)V

    return-void
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1

    .line 227
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 228
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public unBindAsImageLoadListener()V
    .locals 1

    .line 660
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->removeListener(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    return-void
.end method

.method public updateImage()V
    .locals 0

    .line 665
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->invalidate()V

    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
