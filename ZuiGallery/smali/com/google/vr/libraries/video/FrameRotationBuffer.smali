.class public Lcom/google/vr/libraries/video/FrameRotationBuffer;
.super Ljava/lang/Object;
.source "FrameRotationBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameRotationBuffer"


# instance fields
.field private final coordinateSystem:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

.field private final deviceTransform:[F

.field private final outputTransform:[F

.field private final recenterTransform:[F

.field private final rotations:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tempTransform:[F


# direct methods
.method public constructor <init>(Lcom/google/vr/libraries/video/MotionCoordinateSystem;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->deviceTransform:[F

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->recenterTransform:[F

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->outputTransform:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->tempTransform:[F

    .line 6
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->rotations:Ljava/util/NavigableMap;

    .line 7
    iput-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->coordinateSystem:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    .line 8
    iget-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->outputTransform:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->recenterTransform:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private static angleAxisToMatrix(Ljava/util/Vector;[F)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    .line 43
    invoke-virtual {p0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 44
    invoke-static {v1, v2, p0}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    float-to-double v4, v3

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v8, v4

    const/4 v7, 0x0

    div-float v9, v1, v3

    div-float v10, v2, v3

    div-float v11, p0, v3

    move-object v6, p1

    .line 47
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_0
    return-void
.end method

.method private computeRecenterTransform(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->tempTransform:[F

    invoke-static {p1, v0}, Lcom/google/vr/libraries/video/FrameRotationBuffer;->angleAxisToMatrix(Ljava/util/Vector;[F)V

    .line 34
    iget-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->recenterTransform:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 35
    iget-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->tempTransform:[F

    const/16 v1, 0xa

    aget v2, p1, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/16 v3, 0x8

    aget v4, p1, v3

    aget p1, p1, v3

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 36
    iget-object v2, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->recenterTransform:[F

    iget-object v4, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->tempTransform:[F

    aget v5, v4, v1

    div-float/2addr v5, p1

    aput v5, v2, v0

    .line 37
    aget v0, v4, v3

    div-float/2addr v0, p1

    const/4 v5, 0x2

    aput v0, v2, v5

    .line 38
    aget v0, v4, v3

    neg-float v0, v0

    div-float/2addr v0, p1

    aput v0, v2, v3

    .line 39
    aget v0, v4, v1

    div-float/2addr v0, p1

    aput v0, v2, v1

    return-void
.end method

.method private transformRotationForOutputCoordinateSystem([FLjava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/Vector<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/google/vr/libraries/video/FrameRotationBuffer$1;->$SwitchMap$com$google$vr$libraries$video$MotionCoordinateSystem:[I

    iget-object v1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->coordinateSystem:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    invoke-virtual {v1}, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    aget v0, p1, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 30
    aget v0, p1, v3

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    aget p1, p1, v2

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    aget v0, p1, v1

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 26
    aget v0, p1, v3

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 27
    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getTransform(J)[F
    .locals 6

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->rotations:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->outputTransform:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 20
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->rotations:Ljava/util/NavigableMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/SortedMap;->clear()V

    .line 21
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    iget-object p2, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->deviceTransform:[F

    invoke-static {p1, p2}, Lcom/google/vr/libraries/video/FrameRotationBuffer;->angleAxisToMatrix(Ljava/util/Vector;[F)V

    .line 22
    iget-object v0, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->outputTransform:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->recenterTransform:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->deviceTransform:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 23
    iget-object p1, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->outputTransform:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRotation(J[F)V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 12
    invoke-direct {p0, p3, v0}, Lcom/google/vr/libraries/video/FrameRotationBuffer;->transformRotationForOutputCoordinateSystem([FLjava/util/Vector;)V

    .line 13
    iget-object p3, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->rotations:Ljava/util/NavigableMap;

    invoke-interface {p3}, Ljava/util/NavigableMap;->size()I

    move-result p3

    if-nez p3, :cond_0

    .line 14
    invoke-direct {p0, v0}, Lcom/google/vr/libraries/video/FrameRotationBuffer;->computeRecenterTransform(Ljava/util/Vector;)V

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/google/vr/libraries/video/FrameRotationBuffer;->rotations:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
