.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field private lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field private standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field private upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5609
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 5614
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5615
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5616
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5617
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5618
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5619
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 2

    .line 5626
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5630
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_0

    .line 5631
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5633
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_1

    .line 5634
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5636
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_2

    .line 5637
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5639
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_3

    .line 5640
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 5628
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

    .line 5578
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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

    .line 5578
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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

    .line 5578
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 5666
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5667
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 5669
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5671
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 5673
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5675
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 5677
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5679
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 5681
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
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

    .line 5691
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 5696
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5723
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_2

    .line 5724
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5726
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5716
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_4

    .line 5717
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5719
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5709
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_6

    .line 5710
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5712
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5702
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_8

    .line 5703
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5705
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_9
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

    .line 5649
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5650
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5652
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5653
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5655
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 5656
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5658
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 5659
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5661
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
