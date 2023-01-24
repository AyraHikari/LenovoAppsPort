.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubmitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;


# instance fields
.field private bitField0_:I

.field private timestampNanoseconds_:J

.field private wasBlockedOnGpu_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1140
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1141
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 2

    .line 1087
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    if-nez v0, :cond_1

    .line 1088
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    .line 1091
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    .line 1093
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1095
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
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

    .line 1227
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
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

    .line 1221
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 3

    const/4 v0, 0x0

    .line 1145
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 1146
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    .line 1147
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

    const/4 v0, 0x0

    .line 1148
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1149
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->cachedSize:I

    return-object p0
.end method

.method public final clearTimestampNanoseconds()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1109
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    .line 1110
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    return-object p0
.end method

.method public final clearWasBlockedOnGpu()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 1

    const/4 v0, 0x0

    .line 1128
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

    .line 1129
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

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

    .line 1081
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 2

    .line 1156
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1158
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

    .line 1081
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 1178
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1179
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1180
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    .line 1181
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1183
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1184
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

    .line 1185
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final getTimestampNanoseconds()J
    .locals 2

    .line 1103
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    return-wide v0
.end method

.method public final getWasBlockedOnGpu()Z
    .locals 1

    .line 1122
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

    return v0
.end method

.method public final hasTimestampNanoseconds()Z
    .locals 2

    .line 1106
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWasBlockedOnGpu()Z
    .locals 1

    .line 1125
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

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

    .line 1081
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
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

    .line 1195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 1200
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1211
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

    .line 1212
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    goto :goto_0

    .line 1206
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    .line 1207
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final setTimestampNanoseconds(J)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1114
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    .line 1115
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    return-object p0
.end method

.method public final setWasBlockedOnGpu(Z)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1133
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    .line 1134
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

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

    .line 1167
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1168
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->timestampNanoseconds_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1170
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1171
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->wasBlockedOnGpu_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1173
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
