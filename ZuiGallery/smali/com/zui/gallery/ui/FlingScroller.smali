.class Lcom/zui/gallery/ui/FlingScroller;
.super Ljava/lang/Object;
.source "FlingScroller.java"


# static fields
.field private static final DECELERATED_FACTOR:I = 0x4

.field private static final FLING_DURATION_PARAM:F = 50.0f

.field private static final TAG:Ljava/lang/String; = "FlingController"


# instance fields
.field private mCosAngle:D

.field private mCurrV:D

.field private mCurrX:I

.field private mCurrY:I

.field private mDistance:I

.field private mDuration:I

.field private mFinalX:I

.field private mFinalY:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mSinAngle:D

.field private mStartX:I

.field private mStartY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getV(F)D
    .locals 6

    .line 138
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mDistance:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 139
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget p1, p0, Lcom/zui/gallery/ui/FlingScroller;->mDuration:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getX(F)I
    .locals 6

    .line 117
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartX:I

    int-to-double v0, v0

    iget v2, p0, Lcom/zui/gallery/ui/FlingScroller;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-double v2, p1

    iget-wide v4, p0, Lcom/zui/gallery/ui/FlingScroller;->mCosAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 118
    iget-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCosAngle:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartX:I

    iget v1, p0, Lcom/zui/gallery/ui/FlingScroller;->mMaxX:I

    if-gt v0, v1, :cond_0

    .line 119
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 120
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCosAngle:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartX:I

    iget v1, p0, Lcom/zui/gallery/ui/FlingScroller;->mMinX:I

    if-lt v0, v1, :cond_1

    .line 121
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private getY(F)I
    .locals 6

    .line 127
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartY:I

    int-to-double v0, v0

    iget v2, p0, Lcom/zui/gallery/ui/FlingScroller;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-double v2, p1

    iget-wide v4, p0, Lcom/zui/gallery/ui/FlingScroller;->mSinAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 128
    iget-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mSinAngle:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartY:I

    iget v1, p0, Lcom/zui/gallery/ui/FlingScroller;->mMaxY:I

    if-gt v0, v1, :cond_0

    .line 129
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mSinAngle:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartY:I

    iget v1, p0, Lcom/zui/gallery/ui/FlingScroller;->mMinY:I

    if-lt v0, v1, :cond_1

    .line 131
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public computeScrollOffset(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float v1, v0, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    .line 110
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    .line 111
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/FlingScroller;->getX(F)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrX:I

    .line 112
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/FlingScroller;->getY(F)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrY:I

    .line 113
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/FlingScroller;->getV(F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrV:D

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartX:I

    .line 79
    iput p2, p0, Lcom/zui/gallery/ui/FlingScroller;->mStartY:I

    .line 80
    iput p5, p0, Lcom/zui/gallery/ui/FlingScroller;->mMinX:I

    .line 81
    iput p7, p0, Lcom/zui/gallery/ui/FlingScroller;->mMinY:I

    .line 82
    iput p6, p0, Lcom/zui/gallery/ui/FlingScroller;->mMaxX:I

    .line 83
    iput p8, p0, Lcom/zui/gallery/ui/FlingScroller;->mMaxY:I

    int-to-double p1, p3

    int-to-double p3, p4

    .line 85
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p5

    div-double/2addr p3, p5

    .line 86
    iput-wide p3, p0, Lcom/zui/gallery/ui/FlingScroller;->mSinAngle:D

    div-double/2addr p1, p5

    .line 87
    iput-wide p1, p0, Lcom/zui/gallery/ui/FlingScroller;->mCosAngle:D

    .line 97
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 p3, 0x4049000000000000L    # 50.0

    mul-double/2addr p1, p3

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/ui/FlingScroller;->mDuration:I

    int-to-double p1, p1

    mul-double/2addr p5, p1

    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    div-double/2addr p5, p1

    const-wide p1, 0x408f400000000000L    # 1000.0

    div-double/2addr p5, p1

    .line 100
    invoke-static {p5, p6}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/ui/FlingScroller;->mDistance:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 103
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/FlingScroller;->getX(F)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/FlingScroller;->mFinalX:I

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/FlingScroller;->getY(F)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/FlingScroller;->mFinalY:I

    return-void
.end method

.method public getCurrVelocityX()I
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/zui/gallery/ui/FlingScroller;->mCosAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrVelocityY()I
    .locals 4

    .line 73
    iget-wide v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/zui/gallery/ui/FlingScroller;->mSinAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrX:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mCurrY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mDuration:I

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mFinalX:I

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/zui/gallery/ui/FlingScroller;->mFinalY:I

    return v0
.end method
