.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13037
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13042
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    const/4 v0, 0x0

    .line 13043
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 13044
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 4

    .line 13051
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13055
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 13056
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    const/4 v1, 0x0

    .line 13057
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 13058
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 13059
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 13053
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

    .line 12439
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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

    .line 12439
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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

    .line 12439
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 13083
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 13084
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 13085
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 13086
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    .line 13089
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    .line 13101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 13106
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 13113
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 13114
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 13115
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v1, :cond_3

    .line 13118
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 13121
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v2, v3, v1

    .line 13122
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 13123
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13126
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v0, v3, v1

    .line 13127
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 13128
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    goto :goto_0

    :cond_5
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

    .line 13070
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 13071
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 13072
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 13074
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13078
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
