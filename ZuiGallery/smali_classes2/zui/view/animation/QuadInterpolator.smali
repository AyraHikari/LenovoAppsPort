.class public Lzui/view/animation/QuadInterpolator;
.super Ljava/lang/Object;
.source "QuadInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final IN:B = 0x0t

.field public static final INOUT:B = 0x2t

.field public static final OUT:B = 0x1t


# instance fields
.field _mode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-byte v0, p0, Lzui/view/animation/QuadInterpolator;->_mode:B

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 42
    iput-byte p1, p0, Lzui/view/animation/QuadInterpolator;->_mode:B

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFloatValue(F)F
    .locals 3

    .line 54
    iget-byte v0, p0, Lzui/view/animation/QuadInterpolator;->_mode:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    mul-float/2addr p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    :goto_0
    mul-float/2addr v0, p1

    return v0

    :cond_1
    const/high16 v1, -0x41000000    # -0.5f

    sub-float/2addr p1, v0

    sub-float v2, p1, v2

    mul-float/2addr p1, v2

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    return p1

    :cond_2
    neg-float v0, p1

    sub-float/2addr p1, v2

    goto :goto_0

    :cond_3
    mul-float/2addr p1, p1

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lzui/view/animation/QuadInterpolator;->getFloatValue(F)F

    move-result p1

    return p1
.end method
