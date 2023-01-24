.class public Lzui/view/animation/ElasticInterpolator;
.super Ljava/lang/Object;
.source "ElasticInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final IN:B = 0x0t

.field public static final INOUT:B = 0x2t

.field public static final OUT:B = 0x1t

.field private static final PI:F = 3.1415927f


# instance fields
.field _mode:B

.field protected param_a:F

.field protected param_p:F

.field protected setA:Z

.field protected setP:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-byte v0, p0, Lzui/view/animation/ElasticInterpolator;->_mode:B

    .line 53
    iput-boolean v0, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    .line 54
    iput-boolean v0, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 45
    iput-byte p1, p0, Lzui/view/animation/ElasticInterpolator;->_mode:B

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDeepFloatValue(F)F
    .locals 13

    .line 73
    iget v0, p0, Lzui/view/animation/ElasticInterpolator;->param_a:F

    .line 74
    iget v1, p0, Lzui/view/animation/ElasticInterpolator;->param_p:F

    .line 76
    iget-byte v2, p0, Lzui/view/animation/ElasticInterpolator;->_mode:B

    const/high16 v3, 0x41200000    # 10.0f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x40800000    # 4.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    const v9, 0x40c90fdb

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_d

    const/4 v11, 0x1

    const/high16 v12, -0x3ee00000    # -10.0f

    if-eq v2, v11, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    return p1

    :cond_0
    cmpl-float v2, p1, v8

    if-nez v2, :cond_1

    return v8

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    return v10

    .line 88
    :cond_2
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    if-nez v2, :cond_3

    const v1, 0x3ee66667    # 0.45000002f

    .line 89
    :cond_3
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    if-eqz v2, :cond_5

    cmpg-float v2, v0, v10

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    div-float v2, v1, v9

    div-float v4, v10, v0

    float-to-double v4, v4

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    goto :goto_1

    :cond_5
    :goto_0
    div-float v2, v1, v5

    move v0, v10

    :goto_1
    cmpg-float v4, p1, v10

    if-gez v4, :cond_6

    const/high16 v4, -0x41000000    # -0.5f

    sub-float/2addr p1, v10

    mul-float/2addr v3, p1

    float-to-double v10, v3

    .line 91
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v0, v3

    sub-float/2addr p1, v2

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, v4

    return v0

    :cond_6
    sub-float/2addr p1, v10

    mul-float/2addr v12, p1

    float-to-double v3, v12

    .line 92
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v2

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    add-float/2addr v0, v10

    return v0

    :cond_7
    cmpl-float v2, p1, v8

    if-nez v2, :cond_8

    return v8

    :cond_8
    cmpl-float v2, p1, v10

    if-nez v2, :cond_9

    return v10

    .line 83
    :cond_9
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    if-nez v2, :cond_a

    move v1, v4

    .line 84
    :cond_a
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    if-eqz v2, :cond_c

    cmpg-float v2, v0, v10

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    div-float v2, v1, v9

    div-float v3, v10, v0

    float-to-double v3, v3

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    goto :goto_3

    :cond_c
    :goto_2
    div-float v2, v1, v5

    move v0, v10

    :goto_3
    mul-float/2addr v12, p1

    float-to-double v3, v12

    .line 86
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v2

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v10

    return v0

    :cond_d
    cmpl-float v2, p1, v8

    if-nez v2, :cond_e

    return v8

    :cond_e
    cmpl-float v2, p1, v10

    if-nez v2, :cond_f

    return v10

    .line 78
    :cond_f
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    if-nez v2, :cond_10

    move v1, v4

    .line 79
    :cond_10
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    if-eqz v2, :cond_12

    cmpg-float v2, v0, v10

    if-gez v2, :cond_11

    goto :goto_4

    :cond_11
    div-float v2, v1, v9

    div-float v4, v10, v0

    float-to-double v4, v4

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    goto :goto_5

    :cond_12
    :goto_4
    div-float v2, v1, v5

    move v0, v10

    :goto_5
    sub-float/2addr p1, v10

    mul-float/2addr v3, p1

    float-to-double v3, v3

    .line 81
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v2

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    neg-float p1, v0

    return p1
.end method


# virtual methods
.method public a(F)Lzui/view/animation/ElasticInterpolator;
    .locals 0

    .line 57
    iput p1, p0, Lzui/view/animation/ElasticInterpolator;->param_a:F

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    return-object p0
.end method

.method public getInterpolation(F)F
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lzui/view/animation/ElasticInterpolator;->getDeepFloatValue(F)F

    move-result p1

    return p1
.end method

.method public p(F)Lzui/view/animation/ElasticInterpolator;
    .locals 0

    .line 63
    iput p1, p0, Lzui/view/animation/ElasticInterpolator;->param_p:F

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    return-object p0
.end method
