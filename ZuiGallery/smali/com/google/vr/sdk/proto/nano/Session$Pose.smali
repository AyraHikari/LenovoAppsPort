.class public final Lcom/google/vr/sdk/proto/nano/Session$Pose;
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
    name = "Pose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$Pose;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$Pose;


# instance fields
.field public p:[F

.field public q:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 613
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->clear()Lcom/google/vr/sdk/proto/nano/Session$Pose;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$Pose;
    .locals 2

    .line 593
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-nez v0, :cond_1

    .line 594
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$Pose;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$Pose;

    .line 597
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$Pose;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$Pose;

    .line 599
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 601
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$Pose;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$Pose;
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

    .line 776
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$Pose;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$Pose;
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

    .line 770
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$Pose;
    .locals 1

    .line 617
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    .line 618
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 620
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->cachedSize:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->clone()Lcom/google/vr/sdk/proto/nano/Session$Pose;

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

    .line 587
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->clone()Lcom/google/vr/sdk/proto/nano/Session$Pose;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$Pose;
    .locals 3

    .line 627
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 632
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 635
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 629
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

    .line 587
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->clone()Lcom/google/vr/sdk/proto/nano/Session$Pose;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 665
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 667
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 671
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 674
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 678
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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

    .line 587
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$Pose;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$Pose;
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

    .line 688
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0xd

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 693
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 733
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 734
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 735
    new-array v3, v0, [F

    if-eqz v1, :cond_3

    .line 737
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 740
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v3, v1

    .line 741
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 744
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v1

    .line 745
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    goto :goto_0

    .line 749
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 750
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 751
    div-int/lit8 v0, v0, 0x4

    .line 752
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 753
    new-array v4, v0, [F

    if-eqz v3, :cond_7

    .line 755
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v3, v0, :cond_8

    .line 758
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 760
    :cond_8
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    .line 761
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 700
    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 701
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 702
    new-array v3, v0, [F

    if-eqz v1, :cond_b

    .line 704
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_c

    .line 707
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v3, v1

    .line 708
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 711
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v1

    .line 712
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    goto/16 :goto_0

    .line 716
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 717
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 718
    div-int/lit8 v0, v0, 0x4

    .line 719
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    if-nez v3, :cond_e

    move v3, v2

    goto :goto_7

    :cond_e
    array-length v3, v3

    :goto_7
    add-int/2addr v0, v3

    .line 720
    new-array v4, v0, [F

    if-eqz v3, :cond_f

    .line 722
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    if-ge v3, v0, :cond_10

    .line 725
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 727
    :cond_10
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    .line 728
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :cond_11
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

    .line 644
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 645
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v2, 0xa

    .line 646
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 647
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v1

    .line 648
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->q:[F

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 649
    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 653
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v2, 0x12

    .line 654
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 655
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 656
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$Pose;->p:[F

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 657
    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 660
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
