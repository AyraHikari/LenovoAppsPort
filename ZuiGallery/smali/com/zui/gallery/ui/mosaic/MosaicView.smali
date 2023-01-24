.class public Lcom/zui/gallery/ui/mosaic/MosaicView;
.super Landroid/view/View;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MosaicView"


# instance fields
.field private hasMosaiced:Z

.field private mActivity:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

.field private mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

.field private mEraserDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

.field private mInverseViewMatrix:Landroid/graphics/Matrix;

.field private mListener:Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMoasicBitmap:Landroid/graphics/Bitmap;

.field private mMosaicDrawSate:Lcom/zui/gallery/ui/mosaic/DrawState;

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPenId:I

.field private mValidRect:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewWidth:I

.field private offsetX:I

.field private offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 26
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mPenId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 26
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mPenId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 26
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mPenId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 26
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mPenId:I

    return-void
.end method

.method private initTwoDrawState()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMosaicDrawSate:Lcom/zui/gallery/ui/mosaic/DrawState;

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/zui/gallery/ui/mosaic/MosaicState;

    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Lcom/zui/gallery/ui/mosaic/MosaicState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMosaicDrawSate:Lcom/zui/gallery/ui/mosaic/DrawState;

    .line 103
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/DrawState;->setPenWidth(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mEraserDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/zui/gallery/ui/mosaic/EraserState;

    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Lcom/zui/gallery/ui/mosaic/EraserState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mEraserDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    .line 107
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/DrawState;->setPenWidth(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    iput-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    iput-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public getPenWidth()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/DrawState;->getPenWidth()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public init(Lcom/zui/gallery/ui/mosaic/MosaicActivity;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mActivity:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    .line 72
    invoke-virtual {p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mActivity:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060357

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 77
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mActivity:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 79
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewWidth:I

    .line 80
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewHeight:I

    .line 81
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 82
    iput-object p3, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 83
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewWidth:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetX:I

    .line 84
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewHeight:I

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetY:I

    if-gtz p1, :cond_1

    .line 86
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetX:I

    if-lez p1, :cond_2

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetX:I

    add-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetY:I

    add-int/2addr v2, v3

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetX:I

    add-int/2addr v3, v4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->offsetY:I

    add-int/2addr p3, v4

    invoke-virtual {p1, v1, v2, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 92
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object p4, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mListener:Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;

    .line 95
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->initTwoDrawState()V

    .line 96
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->setPenState(I)V

    .line 97
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 115
    iget v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewWidth:I

    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewHeight:I

    iget-object v3, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewWidth:I

    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mViewHeight:I

    iget-object v4, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 117
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 130
    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 133
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 134
    iget-object v4, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mValidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/mosaic/DrawState;->mouseMove(Landroid/graphics/Point;)V

    .line 160
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->invalidate()V

    goto :goto_0

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/mosaic/DrawState;->mouseUp(Landroid/graphics/Point;)V

    .line 164
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->invalidate()V

    goto :goto_0

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/mosaic/DrawState;->mouseDown(Landroid/graphics/Point;)V

    .line 146
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->invalidate()V

    .line 148
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mPenId:I

    if-ne p1, v3, :cond_5

    .line 149
    iput-boolean v3, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->hasMosaiced:Z

    .line 151
    :cond_5
    iget-boolean p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->hasMosaiced:Z

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mListener:Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;

    if-eqz p1, :cond_6

    .line 153
    invoke-interface {p1}, Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;->onChange()V

    :cond_6
    :goto_0
    return v3
.end method

.method public saveBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMoasicBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setPenState(I)V
    .locals 1

    .line 175
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mPenId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMosaicDrawSate:Lcom/zui/gallery/ui/mosaic/DrawState;

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 181
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mEraserDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPenWidth(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/mosaic/DrawState;->setPenWidth(I)V

    :cond_0
    return-void
.end method

.method public syncEraser()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mEraserDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMosaicDrawSate:Lcom/zui/gallery/ui/mosaic/DrawState;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/mosaic/DrawState;->getPenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/DrawState;->setPenWidth(I)V

    return-void
.end method

.method public syncMosaic()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mMosaicDrawSate:Lcom/zui/gallery/ui/mosaic/DrawState;

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicView;->mEraserDrawState:Lcom/zui/gallery/ui/mosaic/DrawState;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/mosaic/DrawState;->getPenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/DrawState;->setPenWidth(I)V

    return-void
.end method
