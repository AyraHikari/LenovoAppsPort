.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5764
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 5769
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 5770
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5771
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 2

    .line 5778
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5782
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v1, :cond_0

    .line 5783
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 5780
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

    .line 5447
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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

    .line 5447
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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

    .line 5447
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 5800
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5801
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 5803
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
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

    .line 5813
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 5818
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5824
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-nez v0, :cond_2

    .line 5825
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 5827
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
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

    .line 5792
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5793
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5795
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
