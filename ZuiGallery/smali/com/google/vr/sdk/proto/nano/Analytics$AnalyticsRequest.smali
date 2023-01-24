.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
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
    name = "AnalyticsRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;


# instance fields
.field private bitField0_:I

.field private prevSampleTimestampNanoseconds_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
    .locals 2

    .line 17
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    .line 21
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
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

    .line 125
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
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

    .line 119
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
    .locals 2

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->cachedSize:I

    return-object p0
.end method

.method public final clearPrevSampleTimestampNanoseconds()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
    .locals 2

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

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
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
    .locals 2

    .line 66
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
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
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 85
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 86
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 87
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

    .line 88
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final getPrevSampleTimestampNanoseconds()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

    return-wide v0
.end method

.method public final hasPrevSampleTimestampNanoseconds()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

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

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
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

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 103
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

    .line 110
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final setPrevSampleTimestampNanoseconds(J)Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;
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
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    .line 45
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

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

    .line 77
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 78
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AnalyticsRequest;->prevSampleTimestampNanoseconds_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
