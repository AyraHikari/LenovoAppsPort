.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;


# instance fields
.field private batteryLevel:Ljava/lang/Integer;

.field private batteryLevelDelta:Ljava/lang/Integer;

.field private batteryTemperature:[F

.field private cpuTemperature:[F

.field private edsThreadFrameDropCount:Ljava/lang/Integer;

.field private gpuTemperature:[F

.field private intervalStartTimeSeconds:Ljava/lang/Integer;

.field private skinTemperature:Ljava/lang/Float;

.field private thermalWarningsShown:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4135
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 4140
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    .line 4141
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    .line 4142
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    .line 4143
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    .line 4144
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    .line 4145
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    .line 4146
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 4147
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 4148
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 4149
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4150
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    .line 4095
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_1

    .line 4096
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4098
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 4099
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 4101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4103
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 3

    .line 4157
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4161
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 4162
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 4164
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 4165
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 4167
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 4168
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 4159
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4089
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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

    .line 4089
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4089
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 4215
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4216
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4220
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 4222
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4224
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 4226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4228
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    .line 4230
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4232
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v4, 0x5

    .line 4234
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4236
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v4, 0x6

    .line 4238
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4240
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_6

    array-length v4, v1

    if-lez v4, :cond_6

    .line 4241
    array-length v4, v1

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 4243
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4245
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_7

    .line 4246
    array-length v4, v1

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 4248
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4250
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_8

    array-length v4, v1

    if-lez v4, :cond_8

    .line 4251
    array-length v4, v1

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 4253
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 6
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

    .line 4263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 4268
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x4d

    .line 4365
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4366
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 4367
    new-array v3, v0, [F

    if-eqz v2, :cond_2

    .line 4369
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3

    .line 4372
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 4373
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4376
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 4377
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    goto :goto_0

    .line 4381
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4382
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 4383
    div-int/lit8 v0, v0, 0x4

    .line 4384
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 4385
    new-array v4, v0, [F

    if-eqz v3, :cond_5

    .line 4387
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    if-ge v3, v0, :cond_6

    .line 4390
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4392
    :cond_6
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 4393
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x45

    .line 4332
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4333
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_5

    :cond_7
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 4334
    new-array v3, v0, [F

    if-eqz v2, :cond_8

    .line 4336
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_9

    .line 4339
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 4340
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4343
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 4344
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    goto/16 :goto_0

    .line 4348
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4349
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 4350
    div-int/lit8 v0, v0, 0x4

    .line 4351
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_7

    :cond_a
    array-length v3, v3

    :goto_7
    add-int/2addr v0, v3

    .line 4352
    new-array v4, v0, [F

    if-eqz v3, :cond_b

    .line 4354
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    if-ge v3, v0, :cond_c

    .line 4357
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4359
    :cond_c
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 4360
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x3d

    .line 4299
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4300
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_9

    :cond_d
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 4301
    new-array v3, v0, [F

    if-eqz v2, :cond_e

    .line 4303
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_f

    .line 4306
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 4307
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4310
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 4311
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    goto/16 :goto_0

    .line 4315
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4316
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 4317
    div-int/lit8 v0, v0, 0x4

    .line 4318
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_b

    :cond_10
    array-length v3, v3

    :goto_b
    add-int/2addr v0, v3

    .line 4319
    new-array v4, v0, [F

    if-eqz v3, :cond_11

    .line 4321
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    if-ge v3, v0, :cond_12

    .line 4324
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4326
    :cond_12
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 4327
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4294
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4290
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4286
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4282
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4278
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    goto/16 :goto_0

    .line 4274
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x15 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x3a -> :sswitch_5
        0x3d -> :sswitch_4
        0x42 -> :sswitch_3
        0x45 -> :sswitch_2
        0x4a -> :sswitch_1
        0x4d -> :sswitch_0
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
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

    .line 4177
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4180
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4181
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4183
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 4184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4186
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 4187
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4189
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 4190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4192
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 4193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4195
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 4196
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_6

    const/4 v3, 0x7

    .line 4197
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4200
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 4201
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_7

    const/16 v3, 0x8

    .line 4202
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4205
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    .line 4206
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v2, v0

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 4207
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4210
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
