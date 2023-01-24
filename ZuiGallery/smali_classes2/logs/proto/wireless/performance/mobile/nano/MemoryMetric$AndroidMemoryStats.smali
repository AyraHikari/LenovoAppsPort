.class public final Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MemoryMetric.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private availableMemoryKb:Ljava/lang/Integer;

.field private dalvikPrivateDirtyKb:Ljava/lang/Integer;

.field private dalvikPssKb:Ljava/lang/Integer;

.field private nativePrivateDirtyKb:Ljava/lang/Integer;

.field private nativePssKb:Ljava/lang/Integer;

.field private otherGraphicsPssKb:Ljava/lang/Integer;

.field private otherPrivateDirtyKb:Ljava/lang/Integer;

.field private otherPssKb:Ljava/lang/Integer;

.field private summaryCodeKb:Ljava/lang/Integer;

.field private summaryGraphicsKb:Ljava/lang/Integer;

.field private summaryJavaHeapKb:Ljava/lang/Integer;

.field private summaryPrivateOtherKb:Ljava/lang/Integer;

.field private summaryStackKb:Ljava/lang/Integer;

.field private summarySystemKb:Ljava/lang/Integer;

.field private totalMemoryMb:Ljava/lang/Integer;

.field private totalPrivateCleanKb:Ljava/lang/Integer;

.field private totalSharedDirtyKb:Ljava/lang/Integer;

.field private totalSwappablePssKb:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPssKb:Ljava/lang/Integer;

    .line 431
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePssKb:Ljava/lang/Integer;

    .line 432
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPssKb:Ljava/lang/Integer;

    .line 433
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPrivateDirtyKb:Ljava/lang/Integer;

    .line 434
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePrivateDirtyKb:Ljava/lang/Integer;

    .line 435
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPrivateDirtyKb:Ljava/lang/Integer;

    .line 436
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalPrivateCleanKb:Ljava/lang/Integer;

    .line 437
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSharedDirtyKb:Ljava/lang/Integer;

    .line 438
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSwappablePssKb:Ljava/lang/Integer;

    .line 439
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherGraphicsPssKb:Ljava/lang/Integer;

    .line 440
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryJavaHeapKb:Ljava/lang/Integer;

    .line 441
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryCodeKb:Ljava/lang/Integer;

    .line 442
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryStackKb:Ljava/lang/Integer;

    .line 443
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryGraphicsKb:Ljava/lang/Integer;

    .line 444
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryPrivateOtherKb:Ljava/lang/Integer;

    .line 445
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summarySystemKb:Ljava/lang/Integer;

    .line 446
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->availableMemoryKb:Ljava/lang/Integer;

    .line 447
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalMemoryMb:Ljava/lang/Integer;

    .line 448
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 449
    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->clone()Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

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

    .line 352
    invoke-virtual {p0}, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->clone()Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

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

    .line 352
    invoke-virtual {p0}, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->clone()Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;
    .locals 2

    .line 456
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 526
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 527
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPssKb:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 529
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePssKb:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 533
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    :cond_1
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPssKb:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 537
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPrivateDirtyKb:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 541
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    :cond_3
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePrivateDirtyKb:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 545
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_4
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPrivateDirtyKb:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 549
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_5
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalPrivateCleanKb:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 553
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_6
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSharedDirtyKb:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 557
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_7
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSwappablePssKb:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 561
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_8
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherGraphicsPssKb:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 565
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_9
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryJavaHeapKb:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 569
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    :cond_a
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryCodeKb:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 573
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_b
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryStackKb:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 577
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    :cond_c
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryGraphicsKb:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 581
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_d
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryPrivateOtherKb:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 585
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_e
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summarySystemKb:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_f
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->availableMemoryKb:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    .line 593
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_10
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalMemoryMb:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    .line 597
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
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

    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 612
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 686
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalMemoryMb:Ljava/lang/Integer;

    goto :goto_0

    .line 682
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->availableMemoryKb:Ljava/lang/Integer;

    goto :goto_0

    .line 678
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summarySystemKb:Ljava/lang/Integer;

    goto :goto_0

    .line 674
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryPrivateOtherKb:Ljava/lang/Integer;

    goto :goto_0

    .line 670
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryGraphicsKb:Ljava/lang/Integer;

    goto :goto_0

    .line 666
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryStackKb:Ljava/lang/Integer;

    goto :goto_0

    .line 662
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryCodeKb:Ljava/lang/Integer;

    goto :goto_0

    .line 658
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryJavaHeapKb:Ljava/lang/Integer;

    goto :goto_0

    .line 654
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherGraphicsPssKb:Ljava/lang/Integer;

    goto :goto_0

    .line 650
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSwappablePssKb:Ljava/lang/Integer;

    goto :goto_0

    .line 646
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSharedDirtyKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 642
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalPrivateCleanKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 638
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPrivateDirtyKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 634
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePrivateDirtyKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 630
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPrivateDirtyKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 626
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPssKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 622
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePssKb:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 618
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPssKb:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x10 -> :sswitch_10
        0x18 -> :sswitch_f
        0x20 -> :sswitch_e
        0x28 -> :sswitch_d
        0x30 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x58 -> :sswitch_7
        0x60 -> :sswitch_6
        0x68 -> :sswitch_5
        0x70 -> :sswitch_4
        0x78 -> :sswitch_3
        0x80 -> :sswitch_2
        0x88 -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch
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

    .line 467
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPssKb:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 468
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 470
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePssKb:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 471
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 473
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPssKb:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 476
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->dalvikPrivateDirtyKb:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 477
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 479
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->nativePrivateDirtyKb:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 480
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 482
    :cond_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherPrivateDirtyKb:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 483
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 485
    :cond_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalPrivateCleanKb:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 486
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 488
    :cond_6
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSharedDirtyKb:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 489
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 491
    :cond_7
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalSwappablePssKb:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 492
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 494
    :cond_8
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->otherGraphicsPssKb:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 495
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 497
    :cond_9
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryJavaHeapKb:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 498
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 500
    :cond_a
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryCodeKb:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 501
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 503
    :cond_b
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryStackKb:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 504
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 506
    :cond_c
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryGraphicsKb:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 507
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 509
    :cond_d
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summaryPrivateOtherKb:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 510
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 512
    :cond_e
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->summarySystemKb:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 513
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 515
    :cond_f
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->availableMemoryKb:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 516
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 518
    :cond_10
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryMetric$AndroidMemoryStats;->totalMemoryMb:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 519
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 521
    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
