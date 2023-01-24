.class public final Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
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
    name = "AsyncReprojectionAnalytics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;


# instance fields
.field private bitField0_:I

.field private fps_:F

.field private totalMissedVsyncs_:I

.field public vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 941
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 942
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 2

    .line 885
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-nez v0, :cond_1

    .line 886
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 889
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 891
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 893
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
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

    .line 1074
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
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

    .line 1068
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    const/4 v0, 0x0

    .line 946
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 947
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    const/4 v0, 0x0

    .line 948
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 949
    invoke-static {}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->emptyArray()[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 951
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->cachedSize:I

    return-object p0
.end method

.method public final clearFps()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    const/4 v0, 0x0

    .line 926
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 927
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    return-object p0
.end method

.method public final clearTotalMissedVsyncs()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    const/4 v0, 0x0

    .line 907
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 908
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

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

    .line 289
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 4

    .line 958
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 963
    array-length v1, v1

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    const/4 v1, 0x0

    .line 964
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 965
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 966
    iget-object v3, v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 960
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

    .line 289
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 996
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 997
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 998
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 999
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1002
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 1003
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 1006
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 1007
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 1010
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final getFps()F
    .locals 1

    .line 920
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    return v0
.end method

.method public final getTotalMissedVsyncs()I
    .locals 1

    .line 901
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    return v0
.end method

.method public final hasFps()Z
    .locals 1

    .line 923
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTotalMissedVsyncs()Z
    .locals 2

    .line 904
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

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

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
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

    .line 1022
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 1027
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1044
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1046
    new-array v3, v0, [Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    if-eqz v1, :cond_3

    .line 1049
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 1052
    new-instance v2, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    invoke-direct {v2}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;-><init>()V

    aput-object v2, v3, v1

    .line 1053
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1054
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1057
    :cond_4
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;-><init>()V

    aput-object v0, v3, v1

    .line 1058
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1059
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    goto :goto_0

    .line 1038
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 1039
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    goto :goto_0

    .line 1033
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 1034
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final setFps(F)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 931
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 932
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    return-object p0
.end method

.method public final setTotalMissedVsyncs(I)Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 912
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 913
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

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

    .line 977
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 978
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 980
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 981
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 984
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics;->vsyncStatus:[Lcom/google/vr/sdk/proto/nano/Analytics$AsyncReprojectionAnalytics$VsyncStatus;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 985
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 987
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
