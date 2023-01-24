.class public final Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Phone.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;


# instance fields
.field private bitField0_:I

.field private bottomBezelHeight_:F

.field public dEPRECATEDGyroBias:[F

.field private xPpi_:F

.field private yPpi_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->clear()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 2

    .line 17
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    .line 21
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
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

    .line 244
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
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

    .line 238
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 99
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 100
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 101
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->cachedSize:I

    return-object p0
.end method

.method public final clearBottomBezelHeight()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 78
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    return-object p0
.end method

.method public final clearXPpi()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    return-object p0
.end method

.method public final clearYPpi()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 59
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

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

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 3

    .line 110
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 115
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 112
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

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 146
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 148
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 149
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 152
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 153
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 156
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 157
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 160
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 164
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getBottomBezelHeight()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    return v0
.end method

.method public final getXPpi()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    return v0
.end method

.method public final getYPpi()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

    return v0
.end method

.method public final hasBottomBezelHeight()Z
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasXPpi()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasYPpi()Z
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
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

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    .line 179
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 201
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 203
    new-array v3, v0, [F

    if-eqz v1, :cond_3

    .line 205
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 208
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v3, v1

    .line 209
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v1

    .line 213
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    goto :goto_0

    .line 217
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 219
    div-int/lit8 v0, v0, 0x4

    .line 220
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 221
    new-array v4, v0, [F

    if-eqz v3, :cond_7

    .line 223
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v3, v0, :cond_8

    .line 226
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 228
    :cond_8
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    .line 229
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 195
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 196
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    goto/16 :goto_0

    .line 190
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 191
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    goto/16 :goto_0

    .line 185
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 186
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final setBottomBezelHeight(F)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 83
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    return-object p0
.end method

.method public final setXPpi(F)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 45
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    return-object p0
.end method

.method public final setYPpi(F)Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 64
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

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

    .line 124
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->xPpi_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 128
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->yPpi_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 130
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 131
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 134
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x22

    .line 135
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 136
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 138
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
