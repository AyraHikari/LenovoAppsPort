.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VsyncStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;,
        Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;,
        Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;


# instance fields
.field private bitField0_:I

.field private missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

.field private newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

.field private oneof_Status_:I

.field private reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

.field private timestampNanoseconds_:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 744
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, -0x1

    .line 294
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 745
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 2

    .line 638
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    if-nez v0, :cond_1

    .line 639
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    .line 642
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    .line 644
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 646
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
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

    .line 878
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
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

    .line 872
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 2

    const/4 v0, 0x0

    .line 749
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 750
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

    const/4 v0, -0x1

    .line 751
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v1, 0x0

    .line 752
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    .line 753
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 754
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    .line 755
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 756
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    .line 757
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 758
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->cachedSize:I

    return-object p0
.end method

.method public final clearTimestampNanoseconds()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 2

    const-wide/16 v0, 0x0

    .line 660
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

    .line 661
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

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

    .line 292
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 2

    .line 765
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    if-eqz v1, :cond_2

    .line 776
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 767
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

    .line 292
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 802
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 803
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 804
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

    .line 805
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 807
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    .line 809
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 811
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 812
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    .line 813
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 815
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x4

    .line 816
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    .line 817
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getMissedVsync()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;
    .locals 2

    .line 721
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNewAppFrame()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;
    .locals 1

    .line 673
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReusedAppFrame()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;
    .locals 2

    .line 697
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTimestampNanoseconds()J
    .locals 2

    .line 654
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

    return-wide v0
.end method

.method public final hasMissedVsync()Z
    .locals 2

    .line 728
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNewAppFrame()Z
    .locals 1

    .line 680
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasReusedAppFrame()Z
    .locals 2

    .line 704
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTimestampNanoseconds()Z
    .locals 2

    .line 657
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

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

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 3
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

    .line 827
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 832
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    if-nez v0, :cond_2

    .line 860
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    const/4 v0, 0x2

    .line 863
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    goto :goto_0

    .line 851
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    if-nez v0, :cond_4

    .line 852
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 855
    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    goto :goto_0

    .line 843
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    if-nez v0, :cond_6

    .line 844
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    .line 846
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    const/4 v0, 0x0

    .line 847
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    goto :goto_0

    .line 838
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

    .line 839
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final setMissedVsync(Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 732
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    :cond_0
    const/4 p1, 0x0

    .line 733
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    return-object p0

    .line 736
    :cond_1
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 737
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 738
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    return-object p0
.end method

.method public final setNewAppFrame(Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 684
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-nez p1, :cond_0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    :cond_0
    const/4 p1, 0x0

    .line 685
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    return-object p0

    .line 688
    :cond_1
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v0, 0x0

    .line 689
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 690
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    return-object p0
.end method

.method public final setReusedAppFrame(Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 708
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    :cond_0
    const/4 p1, 0x0

    .line 709
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    return-object p0

    .line 712
    :cond_1
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 713
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    .line 714
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    return-object p0
.end method

.method public final setTimestampNanoseconds(J)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 665
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    .line 666
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

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

    .line 785
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 786
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->timestampNanoseconds_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 788
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->newAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$NewAppFrame;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 791
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 792
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->reusedAppFrame:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$ReusedAppFrame;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 794
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->oneof_Status_:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    .line 795
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->missedVsync:Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus$MissedVsync;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 797
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
