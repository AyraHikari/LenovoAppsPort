.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
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
    name = "MissedVsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 583
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 584
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
    .locals 2

    .line 570
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    if-nez v0, :cond_1

    .line 571
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    .line 574
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    .line 576
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 578
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
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

    .line 631
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
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

    .line 625
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 589
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->cachedSize:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

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

    .line 564
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
    .locals 2

    .line 596
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 598
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

    .line 564
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    move-result-object v0

    return-object v0
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

    .line 564
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
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

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method
