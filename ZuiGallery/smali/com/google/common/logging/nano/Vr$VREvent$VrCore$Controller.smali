.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private availableFirmware:Ljava/lang/String;

.field private axis:Ljava/lang/Integer;

.field private batteryLevel:Ljava/lang/Integer;

.field private firmware:Ljava/lang/String;

.field private hardwareRevision:Ljava/lang/String;

.field private isConnected:Ljava/lang/Boolean;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private otaRetries:Ljava/lang/Integer;

.field private sampleCount:Ljava/lang/Integer;

.field private sensorType:Ljava/lang/Integer;

.field private softwareRevision:Ljava/lang/String;

.field private totalControllerLagCount:Ljava/lang/Integer;

.field private xRailCount:Ljava/lang/Integer;

.field private yRailCount:Ljava/lang/Integer;

.field private zRailCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7881
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 7886
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    .line 7887
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    .line 7888
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    .line 7889
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    .line 7890
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    .line 7891
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    .line 7892
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    .line 7893
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    .line 7894
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    .line 7895
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    .line 7896
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    .line 7897
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    .line 7898
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    .line 7899
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    .line 7900
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    .line 7901
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    .line 7902
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7903
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->cachedSize:I

    return-void
.end method

.method private mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    .locals 6
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

    .line 8047
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 8052
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8130
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    goto :goto_0

    .line 8126
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    goto :goto_0

    .line 8122
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    goto :goto_0

    .line 8112
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 8114
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v2, :cond_2

    if-eq v4, v1, :cond_2

    const/4 v1, 0x3

    if-ne v4, v1, :cond_1

    goto :goto_1

    .line 7809
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ControllerAxis"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8114
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8116
    :catch_0
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8117
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 8102
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 8104
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v4, v2, :cond_4

    if-ne v4, v1, :cond_3

    goto :goto_2

    .line 7782
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum SensorType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8104
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 8106
    :catch_1
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8107
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 8098
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8094
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8090
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8086
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8082
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    goto/16 :goto_0

    .line 8078
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8074
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    goto/16 :goto_0

    .line 8070
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    goto/16 :goto_0

    .line 8066
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    goto/16 :goto_0

    .line 8062
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    goto/16 :goto_0

    .line 8058
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x30 -> :sswitch_a
        0x3a -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x60 -> :sswitch_4
        0x68 -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    .locals 2

    .line 7910
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7912
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7761
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

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

    .line 7761
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7761
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 7974
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7975
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 7977
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7979
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 7981
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7983
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 7985
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7987
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 7989
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7991
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 7993
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7995
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 7997
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7999
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 8001
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8003
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 8005
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8007
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 8009
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8011
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 8013
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8015
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 8017
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8019
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 8021
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8023
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 8025
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8027
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 8029
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8031
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 8033
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8035
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 8037
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
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

    .line 7761
    invoke-direct {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
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

    .line 7921
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7922
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7924
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7925
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7927
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7928
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7930
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 7931
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7933
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 7934
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7936
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 7937
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7939
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 7940
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7942
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 7943
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7945
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 7946
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7948
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 7949
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7951
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 7952
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7954
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 7955
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7957
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 7958
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7960
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 7961
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7963
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 7964
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7966
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 7967
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7969
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
