.class public final Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Preferences.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperPrefs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;


# instance fields
.field private bitField0_:I

.field private captureEnabled_:Z

.field private dEPRECATEDGvrPlatformLibraryEnabled_:Z

.field private dEPRECATEDHeadTrackingServiceEnabled_:Z

.field private developerLoggingEnabled_:Z

.field private forceUndistortedRendering_:Z

.field private frameTrackerEnabled_:Z

.field private motophoPatchEnabled_:Z

.field private performanceHudEnabled_:Z

.field private performanceMonitoringEnabled_:Z

.field public safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

.field private sensorLoggingEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 394
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clear()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    .line 185
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    .line 189
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    .line 191
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 193
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
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

    .line 602
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
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

    .line 596
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 399
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 400
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 401
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 402
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 403
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 404
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 405
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 406
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 407
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 409
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 410
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 411
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->cachedSize:I

    return-object p0
.end method

.method public final clearCaptureEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    .line 360
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDEPRECATEDGvrPlatformLibraryEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 322
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDEPRECATEDHeadTrackingServiceEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 341
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDeveloperLoggingEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 265
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearForceUndistortedRendering()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 284
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearFrameTrackerEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 382
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearMotophoPatchEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 246
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearPerformanceHudEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 303
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearPerformanceMonitoringEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 208
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearSensorLoggingEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 227
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

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

    .line 179
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    .line 418
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 420
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

    .line 179
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 470
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 471
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 472
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 473
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 476
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 477
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 480
    iget-boolean v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 481
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 484
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 485
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 488
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 489
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 492
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 493
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 496
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 497
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_6
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 500
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 501
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_7
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 504
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    .line 505
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_8
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 509
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_9
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 512
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 513
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final getCaptureEnabled()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    return v0
.end method

.method public final getDEPRECATEDGvrPlatformLibraryEnabled()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    return v0
.end method

.method public final getDEPRECATEDHeadTrackingServiceEnabled()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    return v0
.end method

.method public final getDeveloperLoggingEnabled()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    return v0
.end method

.method public final getForceUndistortedRendering()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    return v0
.end method

.method public final getFrameTrackerEnabled()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    return v0
.end method

.method public final getMotophoPatchEnabled()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    return v0
.end method

.method public final getPerformanceHudEnabled()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    return v0
.end method

.method public final getPerformanceMonitoringEnabled()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    return v0
.end method

.method public final getSensorLoggingEnabled()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    return v0
.end method

.method public final hasCaptureEnabled()Z
    .locals 1

    .line 356
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDEPRECATEDGvrPlatformLibraryEnabled()Z
    .locals 1

    .line 318
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDEPRECATEDHeadTrackingServiceEnabled()Z
    .locals 1

    .line 337
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeveloperLoggingEnabled()Z
    .locals 1

    .line 261
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasForceUndistortedRendering()Z
    .locals 1

    .line 280
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFrameTrackerEnabled()Z
    .locals 1

    .line 378
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMotophoPatchEnabled()Z
    .locals 1

    .line 242
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPerformanceHudEnabled()Z
    .locals 1

    .line 299
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPerformanceMonitoringEnabled()Z
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSensorLoggingEnabled()Z
    .locals 1

    .line 223
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

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

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
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

    .line 523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 528
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 586
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 587
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 579
    :sswitch_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 574
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    .line 575
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 569
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 570
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 564
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 565
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 559
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 560
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 554
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 555
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 549
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 550
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 544
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 545
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 539
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 540
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 534
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 535
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x52 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setCaptureEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 365
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    return-object p0
.end method

.method public final setDEPRECATEDGvrPlatformLibraryEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 326
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 327
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    return-object p0
.end method

.method public final setDEPRECATEDHeadTrackingServiceEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 345
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 346
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    return-object p0
.end method

.method public final setDeveloperLoggingEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 269
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 270
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    return-object p0
.end method

.method public final setForceUndistortedRendering(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 288
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 289
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    return-object p0
.end method

.method public final setFrameTrackerEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 386
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 387
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    return-object p0
.end method

.method public final setMotophoPatchEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 250
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 251
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    return-object p0
.end method

.method public final setPerformanceHudEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 307
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 308
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    return-object p0
.end method

.method public final setPerformanceMonitoringEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 213
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    return-object p0
.end method

.method public final setSensorLoggingEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 231
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 232
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

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

    .line 432
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 433
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 435
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 436
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 438
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 439
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 441
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 442
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 444
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 445
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 447
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 448
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 450
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 451
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 453
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 454
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 456
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 457
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 459
    :cond_8
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 460
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 462
    :cond_9
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 463
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 465
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
