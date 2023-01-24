.class public Lcom/zui/gallery/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final DEF_RATE_ARRAY:[S

.field private static DEF_RATE_ARRAY_FLOAT:[F = null

.field private static final ROTATE_FACTOR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Paper"


# instance fields
.field private final SLIDE_RATE:F

.field private final SLIDE_RATE_ALBUMSET:F

.field private mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

.field private mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

.field private mMatrix:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 94
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY:[S

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY_FLOAT:[F

    return-void

    :array_0
    .array-data 2
        0x6s
        0x5s
        0x4s
        0x3s
        0x2s
        0x1s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/zui/gallery/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    .line 32
    new-instance v0, Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/zui/gallery/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 34
    iput-object v0, p0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lcom/zui/gallery/ui/Paper;->SLIDE_RATE:F

    const v0, 0x3d23d70a    # 0.04f

    .line 37
    iput v0, p0, Lcom/zui/gallery/ui/Paper;->SLIDE_RATE_ALBUMSET:F

    return-void
.end method

.method private getRate(I)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-gez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 125
    sget-object v2, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY:[S

    array-length v2, v2

    if-le v1, v2, :cond_1

    return v0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/Paper;->init()V

    .line 130
    sget-object v0, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY_FLOAT:[F

    aget p1, v0, p1

    return p1
.end method

.method private init()V
    .locals 6

    .line 101
    sget-object v0, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY_FLOAT:[F

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY:[S

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY_FLOAT:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 108
    :goto_0
    sget-object v4, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY:[S

    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 109
    aget-short v4, v4, v2

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    sget-object v2, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY:[S

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 114
    aget-short v2, v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 115
    sget-object v2, Lcom/zui/gallery/ui/Paper;->DEF_RATE_ARRAY_FLOAT:[F

    div-float v4, v1, v3

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/EdgeAnimation;->update()Z

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeAnimation;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public edgeReached(F)V
    .locals 1

    .line 49
    iget v0, p0, Lcom/zui/gallery/ui/Paper;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/EdgeAnimation;->onAbsorb(F)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/EdgeAnimation;->onAbsorb(F)V

    :goto_0
    return-void
.end method

.method public getTransform(Landroid/graphics/Rect;F)[F
    .locals 16

    move-object/from16 v0, p0

    .line 72
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v1

    .line 73
    iget-object v2, v0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v2

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, p2

    .line 78
    iget v4, v0, Lcom/zui/gallery/ui/Paper;->mWidth:I

    div-int/lit8 v5, v4, 0x4

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-int/lit8 v4, v4, 0x3

    .line 79
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v5, v4, v3

    mul-float/2addr v5, v1

    mul-float/2addr v3, v2

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    neg-float v1, v5

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    const/high16 v1, -0x3dcc0000    # -45.0f

    mul-float v5, v2, v1

    .line 86
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 87
    iget-object v8, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v10, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v11, v1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v6, v8

    invoke-static/range {v6 .. v12}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 88
    iget-object v3, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 89
    iget-object v11, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v13, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v9, v11

    invoke-static/range {v9 .. v15}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 90
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    return-object v1
.end method

.method public getTransformAlbumSet(Landroid/graphics/Rect;III)[F
    .locals 19

    move-object/from16 v0, p0

    .line 134
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v1

    .line 135
    iget-object v2, v0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v2

    .line 136
    iget-object v3, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 137
    iget-object v7, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v9, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v10, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v5, v7

    invoke-static/range {v5 .. v11}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 138
    iget-object v14, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v12, v14

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v12 .. v18}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    move/from16 v3, p4

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/4 v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 152
    iget-object v6, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    sub-float/2addr v1, v2

    mul-float v9, v1, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v6

    invoke-static/range {v4 .. v10}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 153
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    return-object v1
.end method

.method public getTransformNew(Landroid/graphics/Rect;III)[F
    .locals 19

    move-object/from16 v0, p0

    .line 157
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v1

    .line 158
    iget-object v2, v0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v2

    .line 159
    iget-object v3, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 160
    iget-object v7, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v9, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v10, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v5, v7

    invoke-static/range {v5 .. v11}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 161
    iget-object v14, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v12, v14

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-static/range {v12 .. v18}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    move/from16 v3, p4

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    .line 171
    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/Paper;->getRate(I)F

    move-result v4

    mul-float/2addr v3, v4

    .line 172
    iget-object v6, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    sub-float/2addr v1, v2

    mul-float v9, v1, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v6

    invoke-static/range {v4 .. v10}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 173
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    return-object v1
.end method

.method public getTransformNewForLabel(Landroid/graphics/Rect;III)[F
    .locals 19

    move-object/from16 v0, p0

    .line 178
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v1

    .line 179
    iget-object v2, v0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v2

    .line 180
    iget-object v3, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 181
    iget-object v7, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v9, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v10, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v5, v7

    invoke-static/range {v5 .. v11}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 182
    iget-object v14, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v12, v14

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v12 .. v18}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    move/from16 v3, p4

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    move/from16 v4, p2

    goto :goto_0

    :cond_0
    sub-int v4, p3, p2

    .line 191
    :goto_0
    invoke-direct {v0, v4}, Lcom/zui/gallery/ui/Paper;->getRate(I)F

    move-result v4

    mul-float/2addr v3, v4

    .line 192
    iget-object v6, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sub-float/2addr v1, v2

    mul-float v9, v1, v3

    const/4 v10, 0x0

    move-object v4, v6

    invoke-static/range {v4 .. v10}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 193
    iget-object v1, v0, Lcom/zui/gallery/ui/Paper;->mMatrix:[F

    return-object v1
.end method

.method public onRelease()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/EdgeAnimation;->onRelease()V

    .line 59
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/EdgeAnimation;->onRelease()V

    return-void
.end method

.method public overScroll(F)V
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v0

    .line 40
    iget v0, p0, Lcom/zui/gallery/ui/Paper;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationLeft:Lcom/zui/gallery/ui/EdgeAnimation;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/EdgeAnimation;->onPull(F)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/Paper;->mAnimationRight:Lcom/zui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/EdgeAnimation;->onPull(F)V

    :goto_0
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/zui/gallery/ui/Paper;->mWidth:I

    return-void
.end method
