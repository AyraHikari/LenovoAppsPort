.class public final Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14271
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 14276
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    const/4 v0, 0x0

    .line 14277
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 14278
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 4

    .line 14285
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14289
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 14290
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    const/4 v1, 0x0

    .line 14291
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 14292
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 14293
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 14287
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

    .line 14136
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

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

    .line 14136
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

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

    .line 14136
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 14317
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 14318
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 14319
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 14320
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 14323
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

    .line 14335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 14340
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 14347
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 14348
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 14349
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v1, :cond_3

    .line 14352
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 14355
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;-><init>()V

    aput-object v2, v3, v1

    .line 14356
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 14357
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14360
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;-><init>()V

    aput-object v0, v3, v1

    .line 14361
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 14362
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

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

    .line 14304
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 14305
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 14306
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 14308
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14312
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
