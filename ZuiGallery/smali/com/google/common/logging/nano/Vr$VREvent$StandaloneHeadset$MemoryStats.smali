.class public final Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private availableMemoryKb:Ljava/lang/Long;

.field private freeMemoryKb:Ljava/lang/Long;

.field private timeSinceBootNs:Ljava/lang/Long;

.field private totalMemoryKb:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17387
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 17392
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->totalMemoryKb:Ljava/lang/Long;

    .line 17393
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->freeMemoryKb:Ljava/lang/Long;

    .line 17394
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->availableMemoryKb:Ljava/lang/Long;

    .line 17395
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->timeSinceBootNs:Ljava/lang/Long;

    .line 17396
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 17397
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;
    .locals 2

    .line 17404
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 17406
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

    .line 17356
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

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

    .line 17356
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

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

    .line 17356
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 17432
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 17433
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->totalMemoryKb:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 17435
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17437
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->freeMemoryKb:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 17439
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17441
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->availableMemoryKb:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 17443
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17445
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->timeSinceBootNs:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 17447
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

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

    .line 17457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 17462
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 17480
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->timeSinceBootNs:Ljava/lang/Long;

    goto :goto_0

    .line 17476
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->availableMemoryKb:Ljava/lang/Long;

    goto :goto_0

    .line 17472
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->freeMemoryKb:Ljava/lang/Long;

    goto :goto_0

    .line 17468
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->totalMemoryKb:Ljava/lang/Long;

    goto :goto_0

    :cond_5
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

    .line 17415
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->totalMemoryKb:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 17416
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 17418
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->freeMemoryKb:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 17419
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 17421
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->availableMemoryKb:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 17422
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 17424
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset$MemoryStats;->timeSinceBootNs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 17425
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 17427
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
