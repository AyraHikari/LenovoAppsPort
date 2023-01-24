.class public Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageTinyPlanet.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageTinyPlanet"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentX:F

.field private mCurrentY:F

.field mDestRect:Landroid/graphics/RectF;

.field private mEditorTinyPlanet:Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

.field mInScale:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mStartAngle:F

.field private mTinyPlanetRep:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

.field private mTouchCenterX:F

.field private mTouchCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 36
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 37
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 38
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 39
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 40
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 41
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 79
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 36
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 37
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 38
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 39
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 40
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 41
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 46
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    .line 48
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 84
    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;)Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    return-object p0
.end method

.method protected static angleFor(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 88
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private display(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 156
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 157
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v3

    mul-float v5, v1, v2

    cmpl-float v6, v4, v5

    if-lez v6, :cond_0

    div-float/2addr v5, v3

    move v4, v1

    goto :goto_0

    :cond_0
    div-float/2addr v4, v2

    move v5, v0

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    sub-float v3, v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 168
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    sub-float v3, v1, v4

    div-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 169
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mDestRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected getCurrentTouchAngle()F
    .locals 5

    .line 92
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    sub-float/2addr v0, v1

    .line 96
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    sub-float/2addr v2, v3

    .line 97
    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    sub-float/2addr v4, v1

    .line 98
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    sub-float/2addr v1, v3

    .line 100
    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->angleFor(FF)F

    move-result v0

    .line 101
    invoke-static {v4, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->angleFor(FF)F

    move-result v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v1, v0

    float-to-double v0, v1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 143
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->display(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 109
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 110
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 111
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 112
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 113
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    return v4

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->getCurrentTouchAngle()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setAngle(F)V

    goto :goto_0

    .line 119
    :cond_2
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 120
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 121
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getAngle()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->invalidate()V

    .line 129
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->commitLocalRepresentation()V

    return v4
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/BasicEditor;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    return-void
.end method

.method public setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    return-void
.end method
