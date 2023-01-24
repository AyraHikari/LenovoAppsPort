.class public final Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public angleDegrees:Ljava/lang/Float;

.field public lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

.field public touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16367
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 16372
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v0, 0x0

    .line 16373
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    .line 16374
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    .line 16375
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 16376
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
    .locals 4

    .line 16383
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16387
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 16388
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v1, 0x0

    .line 16389
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 16390
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 16391
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16395
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_2

    .line 16396
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 16385
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

    .line 16339
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

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

    .line 16339
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

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

    .line 16339
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 16424
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 16425
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 16426
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 16427
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 16430
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16434
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 16436
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16438
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 16440
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
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

    .line 16450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    .line 16455
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 16488
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    goto :goto_0

    .line 16481
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-nez v0, :cond_3

    .line 16482
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    .line 16484
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 16462
    :cond_4
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 16463
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 16464
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_6

    .line 16467
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7

    .line 16470
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    aput-object v2, v3, v1

    .line 16471
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 16472
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16475
    :cond_7
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    aput-object v0, v3, v1

    .line 16476
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 16477
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    goto :goto_0

    :cond_8
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

    .line 16405
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 16406
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 16407
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 16409
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16413
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 16414
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 16416
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 16417
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 16419
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
