.class public final Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CardboardDevice.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaydreamInternalParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;


# instance fields
.field public alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

.field private bitField0_:I

.field private sensorOrientationIndependentOfDisplay_:Z

.field private useRotationalAlignmentCorrection_:Z

.field private version_:I

.field public vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1165
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1166
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 2

    .line 1087
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_1

    .line 1088
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 1091
    sput-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
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

    .line 1329
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
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

    .line 1323
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 2

    const/4 v0, 0x0

    .line 1170
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 1171
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1172
    invoke-static {}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;->emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 1173
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 1174
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    .line 1176
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1177
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->cachedSize:I

    return-object p0
.end method

.method public final clearSensorOrientationIndependentOfDisplay()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 1150
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    .line 1151
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearUseRotationalAlignmentCorrection()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 1132
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearVersion()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 1109
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1110
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

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
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 4

    .line 1184
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1189
    array-length v1, v1

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v1, 0x0

    .line 1190
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1191
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 1192
    iget-object v3, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-eqz v1, :cond_2

    .line 1197
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 1186
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
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 1231
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1232
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1233
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1234
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1236
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 1237
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1238
    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 1241
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1246
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 1247
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1249
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1250
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    .line 1251
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1253
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 1255
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final getSensorOrientationIndependentOfDisplay()Z
    .locals 1

    .line 1144
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    return v0
.end method

.method public final getUseRotationalAlignmentCorrection()Z
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    return v0
.end method

.method public final getVersion()I
    .locals 1

    .line 1103
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    return v0
.end method

.method public final hasSensorOrientationIndependentOfDisplay()Z
    .locals 1

    .line 1147
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUseRotationalAlignmentCorrection()Z
    .locals 1

    .line 1128
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVersion()Z
    .locals 2

    .line 1106
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

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

    .line 1081
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
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

    .line 1265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 1270
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-nez v0, :cond_2

    .line 1312
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1306
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    .line 1307
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 1301
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 1302
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 1282
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1283
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1284
    new-array v3, v0, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v1, :cond_7

    .line 1287
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 1290
    new-instance v2, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v2, v3, v1

    .line 1291
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1292
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1295
    :cond_8
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v0, v3, v1

    .line 1296
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1297
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    goto/16 :goto_0

    .line 1276
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1277
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method

.method public final setSensorOrientationIndependentOfDisplay(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1155
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 1156
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    return-object p0
.end method

.method public final setUseRotationalAlignmentCorrection(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1136
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 1137
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    return-object p0
.end method

.method public final setVersion(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
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
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 1115
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

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

    .line 1206
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1207
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1210
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1211
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 1213
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 1218
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1220
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1221
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1223
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    .line 1224
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1226
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
