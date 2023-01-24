.class public Lcom/google/vrtoolkit/cardboard/SensorReadingStats;
.super Ljava/lang/Object;
.source "SensorReadingStats.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private numAxes:I

.field private sampleBuf:[[F

.field private sampleBufSize:I

.field private samplesAdded:I

.field private writePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleBufSize",
            "numAxes"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    .line 54
    iput p2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x0

    aput p1, v0, p2

    .line 62
    const-class p1, F

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numAxes is invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sampleBufSize is invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addSample([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 71
    array-length v0, p1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-lt v0, v1, :cond_1

    .line 74
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    aget-object v1, v1, v2

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget p1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "values.length is less than # of axes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAverage(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->statsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 108
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    :goto_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    aget-object v2, v2, v1

    aget v2, v2, p1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float p1, v2

    div-float/2addr v0, p1

    return v0

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "axis must be between 0 and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Average not available. Not enough samples."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxAbsoluteDeviation()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    :goto_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge v1, v2, :cond_0

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->getMaxAbsoluteDeviation(I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMaxAbsoluteDeviation(I)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 122
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge p1, v0, :cond_1

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->getAverage(I)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_0
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    if-ge v2, v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    aget-object v3, v3, v2

    aget v3, v3, p1

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "axis must be between 0 and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    .line 86
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    return-void
.end method

.method public statsAvailable()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
