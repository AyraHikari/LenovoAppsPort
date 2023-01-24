.class public final Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

.field private powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17521
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 17526
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    .line 17527
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    .line 17528
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 17529
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;
    .locals 2

    .line 17536
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17540
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    if-eqz v1, :cond_0

    .line 17541
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    .line 17543
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    if-eqz v1, :cond_1

    .line 17544
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 17538
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

    .line 17203
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

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

    .line 17203
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

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

    .line 17203
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 17564
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 17565
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 17567
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17569
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 17571
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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

    .line 17581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 17586
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 17599
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    if-nez v0, :cond_2

    .line 17600
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    .line 17602
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 17592
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    if-nez v0, :cond_4

    .line 17593
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    .line 17595
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
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

    .line 17553
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->powerState:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$PowerState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 17554
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17556
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->memoryStats:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 17557
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17559
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
