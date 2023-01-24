.class public Lcom/zui/gallery/filtershow/crop/CropObject;
.super Ljava/lang/Object;
.source "CropObject.java"


# static fields
.field public static final BOTTOM_LEFT:I = 0x9

.field public static final BOTTOM_RIGHT:I = 0xc

.field public static final MOVE_BLOCK:I = 0x10

.field public static final MOVE_BOTTOM:I = 0x8

.field public static final MOVE_LEFT:I = 0x1

.field public static final MOVE_NONE:I = 0x0

.field public static final MOVE_RIGHT:I = 0x4

.field public static final MOVE_TOP:I = 0x2

.field public static final TOP_LEFT:I = 0x3

.field public static final TOP_RIGHT:I = 0x6


# instance fields
.field private mAspectHeight:F

.field private mAspectWidth:F

.field public mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

.field private mFixAspectRatio:Z

.field private mFixAspectRatio2:Z

.field private mMinSideSize:F

.field private mMovingEdges:I

.field private mRotation:F

.field private mTouchTolerance:F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectWidth:F

    .line 29
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectHeight:F

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 31
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio2:Z

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    .line 33
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 34
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMinSideSize:F

    .line 50
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    .line 53
    new-instance v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;

    rem-int/lit16 p3, p3, 0x168

    int-to-float p3, p3

    invoke-direct {v0, p3, p1, p2}, Lcom/zui/gallery/filtershow/crop/BoundedRect;-><init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectWidth:F

    .line 29
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectHeight:F

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 31
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio2:Z

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    .line 33
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 34
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMinSideSize:F

    .line 50
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    .line 57
    new-instance v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;

    rem-int/lit16 p3, p3, 0x168

    int-to-float p3, p3

    invoke-direct {v0, p3, p1, p2}, Lcom/zui/gallery/filtershow/crop/BoundedRect;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    return-void
.end method

.method private calculateSelectedEdge(FF)I
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 291
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 292
    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 293
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 294
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 298
    iget v5, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_0

    add-float/2addr v5, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float v5, p2, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    add-float/2addr v1, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float/2addr p2, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 307
    :goto_0
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v2, v3, v1

    if-gtz v2, :cond_2

    add-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float v1, p1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    cmpg-float v1, v3, v4

    if-gez v1, :cond_2

    or-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 310
    :cond_2
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v2, v4, v1

    if-gtz v2, :cond_3

    add-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    or-int/lit8 p2, p2, 0x8

    :cond_3
    :goto_1
    return p2
.end method

.method public static checkBlock(I)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkCorner(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkEdge(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static checkValid(I)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 166
    invoke-static {p0}, Lcom/zui/gallery/filtershow/crop/CropObject;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/zui/gallery/filtershow/crop/CropObject;->checkEdge(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-static {p0}, Lcom/zui/gallery/filtershow/crop/CropObject;->checkCorner(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static fixEdgeToCorner(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    or-int/lit8 p0, p0, 0x1

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    or-int/lit8 p0, p0, 0x8

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    or-int/lit8 p0, p0, 0x4

    :cond_3
    return p0
.end method

.method private static fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 4

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 321
    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    iget p2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    add-float/2addr p2, p0

    add-float/2addr p2, p3

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 324
    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    iget p2, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    add-float/2addr v2, p0

    add-float/2addr v2, p3

    invoke-direct {p1, v0, p2, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 327
    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr p2, v1

    add-float/2addr p2, p3

    iget p3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v0, p2, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 330
    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget p3, p0, Landroid/graphics/RectF;->left:F

    .line 331
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr p3, v2

    add-float/2addr p3, p2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v0, v1, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public clearSelectState()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    return-void
.end method

.method public getInnerBounds()Landroid/graphics/RectF;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getInnerBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->setToInner(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getOuterBounds()Landroid/graphics/RectF;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getOuter()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOuterBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->setToOuter(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getSelectState()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    return v0
.end method

.method public hasSelectedEdge()Z
    .locals 1

    .line 148
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFixedAspect()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    return v0
.end method

.method public isFixedAspect2()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio2:Z

    return v0
.end method

.method public moveCurrentSelection(FF)Z
    .locals 10

    .line 209
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 214
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMinSideSize:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    move v2, v3

    .line 220
    :cond_1
    iget v3, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->moveInner(FF)V

    return v5

    :cond_2
    and-int/lit8 v4, v3, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 229
    iget v7, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, p1

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_4

    .line 232
    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v9

    :cond_4
    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_5

    .line 235
    iget v7, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v2

    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    :cond_5
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_6

    .line 239
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, p2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v2

    .line 243
    :cond_6
    iget-boolean p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    if-eqz p2, :cond_9

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 244
    iget v2, v0, Landroid/graphics/RectF;->left:F

    aput v2, p2, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    aput v2, p2, v5

    new-array v2, p1, [F

    .line 247
    iget v4, v0, Landroid/graphics/RectF;->right:F

    aput v4, v2, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    aput v4, v2, v5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/16 v4, 0xc

    if-ne v3, v4, :cond_8

    .line 251
    :cond_7
    iget v4, v0, Landroid/graphics/RectF;->top:F

    aput v4, p2, v5

    .line 252
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v5

    :cond_8
    new-array v4, p1, [F

    .line 254
    aget v8, p2, v1

    aget v9, v2, v1

    sub-float/2addr v8, v9

    aput v8, v4, v1

    aget p2, p2, v5

    aget v2, v2, v5

    sub-float/2addr p2, v2

    aput p2, v4, v5

    new-array p1, p1, [F

    aput v7, p1, v1

    aput v6, p1, v5

    .line 260
    invoke-static {v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->normalize([F)[F

    move-result-object p2

    .line 261
    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->scalarProjection([F[F)F

    move-result p1

    .line 262
    aget v1, p2, v1

    mul-float/2addr v1, p1

    .line 263
    aget p2, p2, v5

    mul-float/2addr p1, p2

    .line 264
    invoke-static {v0, v3, v1, p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 266
    iget-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->fixedAspectResizeInner(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    .line 269
    iget p2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v7

    iput p2, v0, Landroid/graphics/RectF;->left:F

    :cond_a
    if-eqz v8, :cond_b

    .line 272
    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v6

    iput p2, v0, Landroid/graphics/RectF;->top:F

    :cond_b
    if-eqz v9, :cond_c

    .line 275
    iget p2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v7

    iput p2, v0, Landroid/graphics/RectF;->right:F

    :cond_c
    if-eqz p1, :cond_d

    .line 278
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v6

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 280
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->resizeInner(Landroid/graphics/RectF;)V

    :goto_1
    return v5
.end method

.method public resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public resetFix(Z)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetFix222: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interdex"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio2:Z

    return-void
.end method

.method public rotateOuter(I)V
    .locals 1

    .line 93
    rem-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mRotation:F

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->setRotation(F)V

    .line 95
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropObject;->clearSelectState()V

    return-void
.end method

.method public selectEdge(FF)Z
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->calculateSelectedEdge(FF)I

    move-result p1

    .line 199
    iget-boolean p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    if-eqz p2, :cond_0

    .line 200
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->fixEdgeToCorner(I)I

    move-result p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    move-result p1

    return p1
.end method

.method public selectEdge(I)Z
    .locals 1

    .line 183
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->checkValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->checkCorner(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad corner selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_1
    :goto_0
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMovingEdges:I

    const/4 p1, 0x1

    return p1

    .line 185
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad edge selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInnerAspectRatio(FF)Z
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 103
    invoke-static {v0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropMath;->fixAspectRatioContained(Landroid/graphics/RectF;FF)V

    .line 104
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMinSideSize:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 108
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectWidth:F

    .line 109
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectHeight:F

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 111
    iget-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->setInner(Landroid/graphics/RectF;)V

    .line 112
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropObject;->clearSelectState()V

    return p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and Height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInnerAspectRatio2(Landroid/graphics/RectF;FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    .line 120
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectWidth:F

    .line 121
    iput p3, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mAspectHeight:F

    const/4 p2, 0x1

    .line 122
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 123
    iget-object p3, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mBoundedRect:Lcom/zui/gallery/filtershow/crop/BoundedRect;

    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->setInner(Landroid/graphics/RectF;)V

    return p2

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and Height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIsFixedAspect(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    return-void
.end method

.method public setMinInnerSideSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 139
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mMinSideSize:F

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min dide must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTouchTolerance(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 132
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mTouchTolerance:F

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tolerance must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsetAspectRatio()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 144
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropObject;->clearSelectState()V

    return-void
.end method

.method public wouldSelectEdge(FF)I
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->calculateSelectedEdge(FF)I

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x10

    if-eq p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
