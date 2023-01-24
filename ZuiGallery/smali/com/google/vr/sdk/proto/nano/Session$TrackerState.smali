.class public final Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Session.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$TrackerState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;


# instance fields
.field private bitField0_:I

.field public gyroscopeBias:[D

.field public lastGyroscopeSample:[D

.field private lastGyroscopeTimestamp_:D

.field public lensOffset:[F

.field private magCalibrationTimeSinceEpochSeconds_:J

.field private magneticFieldStrength_:D

.field public magnetometerBias:[D

.field public q:[D

.field public rightLensOffset:[F

.field private timeSinceEpochSeconds_:J

.field private trackingInVrcore_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clear()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    .line 17
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    .line 21
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 577
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 5

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 151
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    const-wide/16 v1, 0x0

    .line 152
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 153
    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 154
    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 155
    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    const-wide/16 v3, 0x0

    .line 156
    iput-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 157
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 158
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    .line 159
    iput-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 160
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 161
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->cachedSize:I

    return-object p0
.end method

.method public final clearLastGyroscopeTimestamp()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 71
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearMagCalibrationTimeSinceEpochSeconds()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 131
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearMagneticFieldStrength()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 112
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearTimeSinceEpochSeconds()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearTrackingInVrcore()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 90
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 3

    .line 170
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 175
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 178
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 181
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 184
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 187
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    .line 190
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 267
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 269
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 273
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 276
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 277
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 280
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 284
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 287
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 291
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 294
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 298
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 301
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 302
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 305
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 306
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 309
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 313
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_7
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 316
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 317
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_8
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 320
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 321
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    :cond_9
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-eqz v1, :cond_a

    array-length v2, v1

    if-lez v2, :cond_a

    .line 324
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 328
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final getLastGyroscopeTimestamp()D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    return-wide v0
.end method

.method public final getMagCalibrationTimeSinceEpochSeconds()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    return-wide v0
.end method

.method public final getMagneticFieldStrength()D
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    return-wide v0
.end method

.method public final getTimeSinceEpochSeconds()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    return-wide v0
.end method

.method public final getTrackingInVrcore()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    return v0
.end method

.method public final hasLastGyroscopeTimestamp()Z
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMagCalibrationTimeSinceEpochSeconds()Z
    .locals 1

    .line 127
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMagneticFieldStrength()Z
    .locals 1

    .line 108
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTimeSinceEpochSeconds()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTrackingInVrcore()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_36

    const/16 v1, 0x10

    if-eq v0, v1, :cond_35

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v0, v2, :cond_31

    const/16 v2, 0x25

    if-eq v0, v2, :cond_2d

    const/16 v2, 0x31

    if-eq v0, v2, :cond_2c

    const/16 v2, 0x38

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x49

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x50

    if-eq v0, v2, :cond_29

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_25

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_21

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    const/16 v1, 0x19

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_11

    const/16 v1, 0x29

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x41

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    .line 343
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 513
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 514
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 515
    div-int/lit8 v0, v0, 0x8

    .line 516
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 517
    new-array v4, v0, [D

    if-eqz v2, :cond_3

    .line 519
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    .line 522
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 524
    :cond_4
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    .line 525
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 497
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 499
    new-array v2, v0, [D

    if-eqz v1, :cond_7

    .line 501
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_8

    .line 504
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 505
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 508
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 509
    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    goto/16 :goto_0

    .line 470
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 471
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 472
    div-int/lit8 v0, v0, 0x8

    .line 473
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_5

    :cond_a
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 474
    new-array v4, v0, [D

    if-eqz v2, :cond_b

    .line 476
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    if-ge v2, v0, :cond_c

    .line 479
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 481
    :cond_c
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 482
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 454
    :cond_d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_7

    :cond_e
    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    .line 456
    new-array v2, v0, [D

    if-eqz v1, :cond_f

    .line 458
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_10

    .line 461
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 462
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 465
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 466
    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    goto/16 :goto_0

    .line 404
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 405
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 406
    div-int/lit8 v0, v0, 0x8

    .line 407
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-nez v2, :cond_12

    move v2, v3

    goto :goto_9

    :cond_12
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 408
    new-array v4, v0, [D

    if-eqz v2, :cond_13

    .line 410
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_a
    if-ge v2, v0, :cond_14

    .line 413
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 415
    :cond_14
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 416
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 388
    :cond_15
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-nez v1, :cond_16

    move v1, v3

    goto :goto_b

    :cond_16
    array-length v1, v1

    :goto_b
    add-int/2addr v0, v1

    .line 390
    new-array v2, v0, [D

    if-eqz v1, :cond_17

    .line 392
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_c
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_18

    .line 395
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 396
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 399
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 400
    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    goto/16 :goto_0

    .line 366
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 367
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 368
    div-int/lit8 v0, v0, 0x8

    .line 369
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-nez v2, :cond_1a

    move v2, v3

    goto :goto_d

    :cond_1a
    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    .line 370
    new-array v4, v0, [D

    if-eqz v2, :cond_1b

    .line 372
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_e
    if-ge v2, v0, :cond_1c

    .line 375
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 377
    :cond_1c
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    .line 378
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 350
    :cond_1d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-nez v1, :cond_1e

    move v1, v3

    goto :goto_f

    :cond_1e
    array-length v1, v1

    :goto_f
    add-int/2addr v0, v1

    .line 352
    new-array v2, v0, [D

    if-eqz v1, :cond_1f

    .line 354
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    :goto_10
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_20

    .line 357
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 358
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 361
    :cond_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 362
    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    goto/16 :goto_0

    .line 540
    :cond_21
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 541
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-nez v1, :cond_22

    move v1, v3

    goto :goto_11

    :cond_22
    array-length v1, v1

    :goto_11
    add-int/2addr v0, v1

    .line 542
    new-array v2, v0, [F

    if-eqz v1, :cond_23

    .line 544
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_12
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_24

    .line 547
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 548
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 551
    :cond_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v2, v1

    .line 552
    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    goto/16 :goto_0

    .line 556
    :cond_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 557
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 558
    div-int/lit8 v0, v0, 0x4

    .line 559
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-nez v2, :cond_26

    move v2, v3

    goto :goto_13

    :cond_26
    array-length v2, v2

    :goto_13
    add-int/2addr v0, v2

    .line 560
    new-array v4, v0, [F

    if-eqz v2, :cond_27

    .line 562
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    :goto_14
    if-ge v2, v0, :cond_28

    .line 565
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 567
    :cond_28
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    .line 568
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 534
    :cond_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 535
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 529
    :cond_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 530
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 491
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 492
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 486
    :cond_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 487
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 421
    :cond_2d
    invoke-static {p1, v2}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-nez v1, :cond_2e

    move v1, v3

    goto :goto_15

    :cond_2e
    array-length v1, v1

    :goto_15
    add-int/2addr v0, v1

    .line 423
    new-array v2, v0, [F

    if-eqz v1, :cond_2f

    .line 425
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_30

    .line 428
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 429
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 432
    :cond_30
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v2, v1

    .line 433
    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    goto/16 :goto_0

    .line 437
    :cond_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 438
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 439
    div-int/lit8 v0, v0, 0x4

    .line 440
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-nez v2, :cond_32

    move v2, v3

    goto :goto_17

    :cond_32
    array-length v2, v2

    :goto_17
    add-int/2addr v0, v2

    .line 441
    new-array v4, v0, [F

    if-eqz v2, :cond_33

    .line 443
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_33
    :goto_18
    if-ge v2, v0, :cond_34

    .line 446
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 448
    :cond_34
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 449
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 382
    :cond_35
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 383
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    :cond_36
    return-object p0
.end method

.method public final setLastGyroscopeTimestamp(D)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 76
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    return-object p0
.end method

.method public final setMagCalibrationTimeSinceEpochSeconds(J)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 135
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 136
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    return-object p0
.end method

.method public final setMagneticFieldStrength(D)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 117
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    return-object p0
.end method

.method public final setTimeSinceEpochSeconds(J)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 47
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 48
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    return-object p0
.end method

.method public final setTrackingInVrcore(Z)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 95
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 200
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    .line 201
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 202
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 204
    aget-wide v3, v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 208
    iget-wide v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 211
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v4, 0x1a

    .line 212
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 214
    :goto_1
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 215
    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    .line 219
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v4, 0x22

    .line 220
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 221
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 222
    :goto_2
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 223
    aget v4, v4, v0

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    .line 227
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v4, 0x2a

    .line 228
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 229
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 230
    :goto_3
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 231
    aget-wide v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 234
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 235
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 237
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 238
    iget-boolean v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-eqz v0, :cond_7

    array-length v3, v0

    if-lez v3, :cond_7

    .line 241
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v3, 0x42

    .line 242
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 243
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 244
    :goto_4
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 245
    aget-wide v3, v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 248
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 249
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 251
    :cond_8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 252
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 254
    :cond_9
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-eqz v0, :cond_a

    array-length v1, v0

    if-lez v1, :cond_a

    .line 255
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x5a

    .line 256
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 257
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 258
    :goto_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    array-length v1, v0

    if-ge v2, v1, :cond_a

    .line 259
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 262
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
