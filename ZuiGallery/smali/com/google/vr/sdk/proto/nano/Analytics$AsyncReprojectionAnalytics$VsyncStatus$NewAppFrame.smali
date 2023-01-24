.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAppFrame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;


# instance fields
.field private bitField0_:I

.field private numSkippedAppFrames_:I

.field private sinceSubmitNanoseconds_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 356
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 2

    .line 302
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    if-nez v0, :cond_1

    .line 303
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    .line 306
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    .line 308
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 310
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
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

    .line 442
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
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

    .line 436
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 3

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 361
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

    .line 362
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 364
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->cachedSize:I

    return-object p0
.end method

.method public final clearNumSkippedAppFrames()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 1

    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    .line 344
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    return-object p0
.end method

.method public final clearSinceSubmitNanoseconds()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 2

    const-wide/16 v0, 0x0

    .line 324
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

    .line 325
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

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

    .line 296
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 2

    .line 371
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 373
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

    .line 296
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 393
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 394
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 395
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

    .line 396
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 399
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    .line 400
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final getNumSkippedAppFrames()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    return v0
.end method

.method public final getSinceSubmitNanoseconds()J
    .locals 2

    .line 318
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

    return-wide v0
.end method

.method public final hasNumSkippedAppFrames()Z
    .locals 1

    .line 340
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSinceSubmitNanoseconds()Z
    .locals 2

    .line 321
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

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

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
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

    .line 410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 415
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    .line 427
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

    .line 422
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final setNumSkippedAppFrames(I)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 348
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    .line 349
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    return-object p0
.end method

.method public final setSinceSubmitNanoseconds(J)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    .line 330
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

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

    .line 382
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 383
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->sinceSubmitNanoseconds_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 385
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 386
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->numSkippedAppFrames_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 388
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
