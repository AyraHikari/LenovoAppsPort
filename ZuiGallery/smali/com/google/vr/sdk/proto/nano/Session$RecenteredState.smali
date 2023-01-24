.class public final Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Session.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecenteredState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Session$RecenteredState$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;


# instance fields
.field private applyDisplayFromSensorRotation_:Z

.field private bitField0_:I

.field public headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

.field private timestampNs_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 892
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 893
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clear()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    return-void
.end method

.method public static checkTypeOrThrow(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Type"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 2

    .line 816
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    if-nez v0, :cond_1

    .line 817
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 820
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 822
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 824
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
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

    .line 1017
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
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

    .line 1011
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 3

    const/4 v0, 0x0

    .line 897
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 898
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 899
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    const/4 v0, 0x0

    .line 900
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    const/4 v1, 0x1

    .line 901
    iput-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 902
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 903
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->cachedSize:I

    return-object p0
.end method

.method public final clearApplyDisplayFromSensorRotation()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1

    const/4 v0, 0x1

    .line 880
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 881
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    return-object p0
.end method

.method public final clearTimestampNs()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 838
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 839
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    return-object p0
.end method

.method public final clearType()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1

    .line 863
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v0, 0x0

    .line 864
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

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

    .line 780
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 2

    .line 910
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->clone()Lcom/google/vr/sdk/proto/nano/Session$Pose;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 912
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

    .line 780
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 941
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 942
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 943
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 944
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 946
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 947
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    .line 948
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 950
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 952
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 955
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 956
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getApplyDisplayFromSensorRotation()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    return v0
.end method

.method public final getTimestampNs()J
    .locals 2

    .line 832
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 852
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    return v0
.end method

.method public final hasApplyDisplayFromSensorRotation()Z
    .locals 1

    .line 877
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTimestampNs()Z
    .locals 2

    .line 835
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasType()Z
    .locals 1

    .line 860
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

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

    .line 780
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
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

    .line 966
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 971
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1001
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 1002
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    goto :goto_0

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-nez v0, :cond_3

    .line 995
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    .line 997
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 982
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    .line 983
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 985
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->checkTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    .line 986
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 989
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 977
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 978
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final setApplyDisplayFromSensorRotation(Z)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 885
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    .line 886
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    return-object p0
.end method

.method public final setTimestampNs(J)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 843
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    .line 844
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    return-object p0
.end method

.method public final setType(I)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 855
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    .line 856
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

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

    .line 924
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 925
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 927
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 928
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 931
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 933
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 934
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 936
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
