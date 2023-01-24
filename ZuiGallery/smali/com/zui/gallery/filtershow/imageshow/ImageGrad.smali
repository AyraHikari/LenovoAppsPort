.class public Lcom/zui/gallery/filtershow/imageshow/ImageGrad;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageGrad.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageGrad"


# instance fields
.field private mActiveHandle:I

.field private mEditorGrad:Lcom/zui/gallery/filtershow/editors/EditorGrad;

.field private mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

.field private mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

.field private mMinTouchDist:F

.field mPointsX:[F

.field mPointsY:[F

.field mToScr:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 38
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsX:[F

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsY:[F

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601b7

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mMinTouchDist:F

    .line 45
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/GradControl;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    const/4 p1, 0x0

    .line 46
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setShowReshapeHandles(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 34
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    .line 37
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    const/16 p2, 0x10

    new-array v0, p2, [F

    .line 38
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsX:[F

    new-array p2, p2, [F

    .line 39
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsY:[F

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0601b7

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mMinTouchDist:F

    .line 53
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/GradControl;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setShowReshapeHandles(Z)V

    return-void
.end method


# virtual methods
.method public computCenterLocations()V
    .locals 13

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getXPos1()[I

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getYPos1()[I

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getXPos2()[I

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getYPos2()[I

    move-result-object v3

    .line 182
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getSelectedPoint()I

    move-result v4

    .line 183
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getMask()[Z

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    move v9, v8

    .line 185
    :goto_0
    array-length v10, v5

    if-ge v9, v10, :cond_2

    if-eq v4, v9, :cond_1

    .line 186
    aget-boolean v10, v5, v9

    if-nez v10, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    aget v10, v0, v9

    aget v11, v2, v9

    add-int/2addr v10, v11

    div-int/2addr v10, v6

    int-to-float v10, v10

    aput v10, v7, v8

    .line 192
    aget v10, v1, v9

    aget v11, v3, v9

    add-int/2addr v10, v11

    div-int/2addr v10, v6

    int-to-float v10, v10

    const/4 v11, 0x1

    aput v10, v7, v11

    .line 193
    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 195
    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsX:[F

    aget v12, v7, v8

    aput v12, v10, v9

    .line 196
    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsY:[F

    aget v11, v7, v11

    aput v11, v10, v9

    goto :goto_2

    .line 187
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsX:[F

    const/high16 v11, -0x40800000    # -1.0f

    aput v11, v10, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public drawOtherPoints(Landroid/graphics/Canvas;)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->computCenterLocations()V

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsX:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 171
    aget v2, v1, v0

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    aget v1, v1, v0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsY:[F

    aget v3, v3, v0

    invoke-virtual {v2, p1, v1, v3}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintGrayPoint(Landroid/graphics/Canvas;FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->draw(Landroid/graphics/Canvas;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->drawOtherPoints(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 61
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 66
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->getCloseHandle(FF)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    if-ne v1, v3, :cond_5

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    move v7, v3

    .line 72
    :goto_0
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsX:[F

    array-length v9, v8

    if-ge v6, v9, :cond_3

    .line 73
    aget v9, v8, v6

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    aget v8, v8, v6

    sub-float v8, v1, v8

    float-to-double v8, v8

    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mPointsY:[F

    aget v10, v10, v6

    sub-float v10, v4, v10

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    cmpl-float v9, v5, v8

    if-lez v9, :cond_2

    move v7, v6

    move v5, v8

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    :cond_3
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mMinTouchDist:F

    cmpl-float v1, v5, v1

    if-lez v1, :cond_4

    move v7, v3

    :cond_4
    if-eq v7, v3, :cond_5

    .line 87
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1, v7}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setSelectedPoint(I)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->resetImageCaches(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    .line 89
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEditorGrad:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1, v4}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 90
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEditorGrad:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    .line 91
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->invalidate()V

    .line 95
    :cond_5
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    if-ne v1, v3, :cond_8

    .line 96
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    if-eq v0, v2, :cond_7

    goto :goto_2

    .line 102
    :cond_7
    iput v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    .line 110
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 113
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v4

    .line 114
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 113
    invoke-virtual {v3, v4, v5}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setScrImageInfo(Landroid/graphics/Matrix;Landroid/graphics/Rect;)V

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    goto :goto_3

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mActiveHandle:I

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v0, v3, v1, p1, v4}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->actionMove(IFFLcom/zui/gallery/filtershow/imageshow/Line;)V

    .line 124
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    goto :goto_3

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v0, v1, p1, v3}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->actionDown(FFLcom/zui/gallery/filtershow/imageshow/Line;)V

    .line 128
    :goto_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->invalidate()V

    .line 129
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEditorGrad:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    return v2
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorGrad;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEditorGrad:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    return-void
.end method

.method public setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V
    .locals 8

    .line 134
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 139
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getPoint1X()F

    move-result v2

    aput v2, v1, p1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getPoint1Y()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    new-array v2, v0, [F

    .line 140
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getPoint2X()F

    move-result v4

    aput v4, v2, p1

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getPoint2Y()F

    move-result v4

    aput v4, v2, v3

    .line 142
    aget v4, v1, p1

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 143
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v0

    int-to-float v4, v4

    .line 144
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v0

    int-to-float v0, v5

    .line 145
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    .line 147
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    sub-float v7, v0, v5

    invoke-virtual {v6, v4, v7}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setPoint1(FF)V

    .line 148
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mGradRep:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    add-float/2addr v0, v5

    invoke-virtual {v6, v4, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setPoint2(FF)V

    aput v4, v1, p1

    aput v7, v1, v3

    .line 151
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 152
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    aget v6, v1, p1

    aget v1, v1, v3

    invoke-virtual {v5, v6, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setPoint1(FF)V

    aput v4, v2, p1

    aput v0, v2, v3

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    aget p1, v2, p1

    aget v1, v2, v3

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setPoint2(FF)V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEditorGrad:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    aget v4, v1, p1

    aget v1, v1, v3

    invoke-virtual {v0, v4, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setPoint1(FF)V

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageGrad;->mEllipse:Lcom/zui/gallery/filtershow/imageshow/GradControl;

    aget p1, v2, p1

    aget v1, v2, v3

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->setPoint2(FF)V

    :goto_0
    return-void
.end method
