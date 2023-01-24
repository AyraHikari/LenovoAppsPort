.class public final Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;


# instance fields
.field private gConfigKey:Ljava/lang/String;

.field private stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14164
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 14169
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    .line 14170
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    .line 14171
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 14172
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    .locals 2

    .line 14145
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-nez v0, :cond_1

    .line 14146
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 14148
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 14149
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 14151
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14153
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    .locals 2

    .line 14179
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 14181
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

    .line 14139
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

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

    .line 14139
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

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

    .line 14139
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 14201
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 14202
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 14204
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14206
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 14208
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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

    .line 14218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 14223
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 14233
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    goto :goto_0

    .line 14229
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object p0
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

    .line 14190
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14191
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14193
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 14194
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14196
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
