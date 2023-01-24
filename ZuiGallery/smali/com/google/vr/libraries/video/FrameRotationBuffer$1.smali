.class synthetic Lcom/google/vr/libraries/video/FrameRotationBuffer$1;
.super Ljava/lang/Object;
.source "FrameRotationBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/libraries/video/FrameRotationBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$vr$libraries$video$MotionCoordinateSystem:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->values()[Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/vr/libraries/video/FrameRotationBuffer$1;->$SwitchMap$com$google$vr$libraries$video$MotionCoordinateSystem:[I

    :try_start_0
    sget-object v1, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->FLIP_XY:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    invoke-virtual {v1}, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/vr/libraries/video/FrameRotationBuffer$1;->$SwitchMap$com$google$vr$libraries$video$MotionCoordinateSystem:[I

    sget-object v1, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->FLIP_YZ:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    invoke-virtual {v1}, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
