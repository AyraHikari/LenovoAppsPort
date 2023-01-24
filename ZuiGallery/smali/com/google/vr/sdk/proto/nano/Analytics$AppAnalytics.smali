.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
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
    name = "AppAnalytics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;


# instance fields
.field private bitField0_:I

.field private fps_:F

.field public submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1271
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1272
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    .locals 2

    .line 1234
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    if-nez v0, :cond_1

    .line 1235
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    .line 1238
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    .line 1240
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1242
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
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

    .line 1391
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
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

    .line 1385
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    .locals 1

    const/4 v0, 0x0

    .line 1276
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    const/4 v0, 0x0

    .line 1277
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

    .line 1278
    invoke-static {}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    const/4 v0, 0x0

    .line 1279
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1280
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->cachedSize:I

    return-object p0
.end method

.method public final clearFps()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    .locals 1

    const/4 v0, 0x0

    .line 1256
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

    .line 1257
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

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

    .line 1078
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    .locals 4

    .line 1287
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1292
    array-length v1, v1

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    const/4 v1, 0x0

    .line 1293
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1294
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 1295
    iget-object v3, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 1289
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

    .line 1078
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 1322
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1323
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1324
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

    .line 1325
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 1328
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1329
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 1332
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final getFps()F
    .locals 1

    .line 1250
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

    return v0
.end method

.method public final hasFps()Z
    .locals 2

    .line 1253
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

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

    .line 1078
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    .locals 5
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

    .line 1344
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 1349
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1361
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1362
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1363
    new-array v3, v0, [Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    if-eqz v1, :cond_3

    .line 1366
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 1369
    new-instance v2, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    invoke-direct {v2}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;-><init>()V

    aput-object v2, v3, v1

    .line 1370
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1371
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1374
    :cond_4
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;-><init>()V

    aput-object v0, v3, v1

    .line 1375
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1376
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    goto :goto_0

    .line 1355
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

    .line 1356
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final setFps(F)Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1261
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    .line 1262
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

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

    .line 1306
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1307
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->fps_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1310
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics;->submitStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AppAnalytics$SubmitStatus;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1311
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1313
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1317
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
