.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

.field private sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16788
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 16793
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    .line 16794
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    .line 16795
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 16796
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;
    .locals 4

    .line 16803
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16807
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    if-eqz v1, :cond_0

    .line 16808
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    .line 16810
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 16811
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    const/4 v1, 0x0

    .line 16812
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 16813
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 16814
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 16805
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

    .line 16507
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

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

    .line 16507
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

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

    .line 16507
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 16841
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 16842
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 16844
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16846
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 16847
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 16848
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 16851
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5
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

    .line 16863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 16868
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 16882
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 16883
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 16884
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    if-eqz v1, :cond_3

    .line 16887
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 16890
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;-><init>()V

    aput-object v2, v3, v1

    .line 16891
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 16892
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16895
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;-><init>()V

    aput-object v0, v3, v1

    .line 16896
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 16897
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    goto :goto_0

    .line 16874
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    if-nez v0, :cond_6

    .line 16875
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    .line 16877
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
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

    .line 16825
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->sessionInfo:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$SessionInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 16826
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 16828
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 16829
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->frame:[Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming$Frame;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 16830
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 16832
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16836
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
