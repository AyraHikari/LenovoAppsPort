.class public final Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private framesPerBuffer:Ljava/lang/Integer;

.field private numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private renderingMode:Ljava/lang/Integer;

.field private renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5914
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 5919
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    .line 5920
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    .line 5921
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    .line 5922
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5923
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5924
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5925
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5926
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5927
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cachedSize:I

    return-void
.end method

.method private mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 6
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

    .line 6080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    const/16 v1, 0x10

    if-eq v0, v1, :cond_12

    const/16 v1, 0x18

    if-eq v0, v1, :cond_11

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 6085
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6170
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6171
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 6172
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_3

    .line 6175
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 6178
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v2, v3, v1

    .line 6179
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6180
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6183
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v1

    .line 6184
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6185
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto :goto_0

    .line 6150
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6151
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 6152
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_7

    .line 6155
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 6158
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v2, v3, v1

    .line 6159
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6160
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6163
    :cond_8
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v1

    .line 6164
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6165
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 6130
    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6131
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 6132
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_b

    .line 6135
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_c

    .line 6138
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v2, v3, v1

    .line 6139
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6140
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6143
    :cond_c
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v1

    .line 6144
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6145
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 6110
    :cond_d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6111
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_7

    :cond_e
    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    .line 6112
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_f

    .line 6115
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_10

    .line 6118
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v2, v3, v1

    .line 6119
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6120
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6123
    :cond_10
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v1

    .line 6124
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6125
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 6105
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 6101
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 6091
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 6093
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    goto :goto_9

    .line 5870
    :cond_14
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum RenderingMode"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6093
    :cond_15
    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6095
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6096
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :cond_16
    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 5

    .line 5934
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5938
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 5939
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 5940
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 5941
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 5942
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5946
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 5947
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 5948
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 5949
    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    .line 5950
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5954
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    .line 5955
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 5956
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 5957
    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    .line 5958
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5962
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_7

    array-length v3, v1

    if-lez v3, :cond_7

    .line 5963
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5964
    :goto_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 5965
    aget-object v3, v1, v2

    if-eqz v3, :cond_6

    .line 5966
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-object v0

    :catch_0
    move-exception v0

    .line 5936
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

    .line 5846
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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

    .line 5846
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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

    .line 5846
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 6023
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6024
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6026
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6028
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 6030
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6032
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 6034
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6036
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    .line 6037
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 6038
    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    .line 6041
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6045
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    .line 6046
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 6047
    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    .line 6050
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6054
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    .line 6055
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 6056
    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    const/4 v4, 0x6

    .line 6059
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6063
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    .line 6064
    :goto_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v1

    if-ge v2, v3, :cond_a

    .line 6065
    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    const/4 v3, 0x7

    .line 6068
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
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

    .line 5846
    invoke-direct {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object p1

    return-object p1
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

    .line 5977
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5978
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5980
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5981
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5983
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 5984
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5986
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 5987
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 5988
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 5990
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5994
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 5995
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 5996
    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 5998
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6002
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 6003
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 6004
    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x6

    .line 6006
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6010
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    .line 6011
    :goto_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 6012
    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v2, 0x7

    .line 6014
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6018
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
