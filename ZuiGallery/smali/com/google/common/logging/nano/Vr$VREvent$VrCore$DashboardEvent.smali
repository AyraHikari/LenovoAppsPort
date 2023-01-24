.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private clientTimestamp:Ljava/lang/Long;

.field private dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

.field private eventType:Ljava/lang/Integer;

.field private sessionId:Ljava/lang/String;

.field private worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8373
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 8378
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->eventType:Ljava/lang/Integer;

    .line 8379
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clientTimestamp:Ljava/lang/Long;

    .line 8380
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->sessionId:Ljava/lang/String;

    .line 8381
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 8382
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    .line 8383
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    .line 8384
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8385
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->cachedSize:I

    return-void
.end method

.method private mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;
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

    .line 8468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    const/16 v2, 0x32

    if-eq v0, v1, :cond_9

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    .line 8473
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8511
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    if-nez v0, :cond_2

    .line 8512
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    .line 8514
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8504
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    if-nez v0, :cond_4

    .line 8505
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    .line 8507
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8497
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_6

    .line 8498
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 8500
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8493
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 8489
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clientTimestamp:Ljava/lang/Long;

    goto :goto_0

    .line 8479
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 8481
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    goto :goto_1

    .line 8173
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum DashboardEventType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8481
    :cond_b
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->eventType:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8483
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8484
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;
    .locals 2

    .line 8392
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8396
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_0

    .line 8397
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 8399
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    if-eqz v1, :cond_1

    .line 8400
    invoke-virtual {v1}, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->clone()Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    .line 8402
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    if-eqz v1, :cond_2

    .line 8403
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 8394
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

    .line 8149
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

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

    .line 8149
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

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

    .line 8149
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 8435
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8436
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 8438
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8440
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 8442
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8444
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->sessionId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 8446
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8448
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 8450
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8452
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 8454
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8456
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 8458
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
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

    .line 8149
    invoke-direct {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

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

    .line 8412
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8413
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8415
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 8416
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8418
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 8419
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8421
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldApp:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8422
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8424
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->worldAppMemoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 8425
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8427
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->dismissDetails:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent$DashboardDismissDetails;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 8428
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8430
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
