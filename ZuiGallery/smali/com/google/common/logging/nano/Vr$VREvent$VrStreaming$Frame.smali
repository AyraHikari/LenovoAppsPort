.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;


# instance fields
.field private decodeEndTimeUsec:Ljava/lang/Long;

.field private decodeStartTimeUsec:Ljava/lang/Long;

.field private framePresentTimeUsec:Ljava/lang/Long;

.field private poseId:Ljava/lang/Integer;

.field private poseSendTimeUsec:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16642
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 16647
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseId:Ljava/lang/Integer;

    .line 16648
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseSendTimeUsec:Ljava/lang/Long;

    .line 16649
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->framePresentTimeUsec:Ljava/lang/Long;

    .line 16650
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeStartTimeUsec:Ljava/lang/Long;

    .line 16651
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeEndTimeUsec:Ljava/lang/Long;

    .line 16652
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 16653
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;
    .locals 2

    .line 16614
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    if-nez v0, :cond_1

    .line 16615
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 16617
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    .line 16618
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    .line 16620
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16622
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;
    .locals 2

    .line 16660
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 16662
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

    .line 16608
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

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

    .line 16608
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

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

    .line 16608
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 16691
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 16692
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 16694
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16696
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseSendTimeUsec:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 16698
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16700
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->framePresentTimeUsec:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 16702
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16704
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeStartTimeUsec:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 16706
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16708
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeEndTimeUsec:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 16710
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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

    .line 16720
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 16725
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 16747
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeEndTimeUsec:Ljava/lang/Long;

    goto :goto_0

    .line 16743
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeStartTimeUsec:Ljava/lang/Long;

    goto :goto_0

    .line 16739
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->framePresentTimeUsec:Ljava/lang/Long;

    goto :goto_0

    .line 16735
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseSendTimeUsec:Ljava/lang/Long;

    goto :goto_0

    .line 16731
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseId:Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    return-object p0
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

    .line 16671
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 16672
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 16674
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->poseSendTimeUsec:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 16675
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 16677
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->framePresentTimeUsec:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 16678
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 16680
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeStartTimeUsec:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 16681
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 16683
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->decodeEndTimeUsec:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 16684
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 16686
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
