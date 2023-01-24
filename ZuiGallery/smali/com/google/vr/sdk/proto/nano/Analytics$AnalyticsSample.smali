.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsSample"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;


# instance fields
.field public appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

.field public asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

.field private bitField0_:I

.field private timestampNanoseconds_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    .locals 2

    .line 135
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    .line 139
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    .line 141
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 143
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
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

    .line 285
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
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

    .line 279
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    .locals 2

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 183
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    .line 184
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 185
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->cachedSize:I

    return-object p0
.end method

.method public final clearTimestampNanoseconds()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    .locals 2

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

    .line 158
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

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

    .line 129
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    .locals 2

    .line 192
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 194
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

    .line 129
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 223
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 224
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 225
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

    .line 226
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 230
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 234
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final getTimestampNanoseconds()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

    return-wide v0
.end method

.method public final hasTimestampNanoseconds()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

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

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    .locals 2
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
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 249
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-nez v0, :cond_4

    .line 261
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 255
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

    .line 256
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final setTimestampNanoseconds(J)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 162
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    .line 163
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

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

    .line 209
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 210
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->timestampNanoseconds_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 213
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsSample;->appAnalytics:Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 216
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 218
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
