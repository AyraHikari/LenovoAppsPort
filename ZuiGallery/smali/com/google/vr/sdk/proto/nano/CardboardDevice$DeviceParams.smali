.class public final Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
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
    name = "DeviceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams$ButtonType;,
        Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams$VerticalAlignmentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;


# instance fields
.field private bitField0_:I

.field public blueDistortionCoefficients:[F

.field public daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

.field public distortionCoefficients:[F

.field public greenDistortionCoefficients:[F

.field private hasMagnet_:Z

.field private interLensDistance_:F

.field public internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

.field public leftEyeFieldOfViewAngles:[F

.field private model_:Ljava/lang/String;

.field private primaryButton_:I

.field private screenToLensDistance_:F

.field private trayToLensDistance_:F

.field private vendor_:Ljava/lang/String;

.field private verticalAlignment_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 262
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-void
.end method

.method public static checkButtonTypeOrThrow(I)I
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

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ButtonType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static checkVerticalAlignmentTypeOrThrow(I)I
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

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum VerticalAlignmentType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 2

    .line 68
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    .line 72
    sput-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
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

    .line 684
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
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

    .line 678
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const-string v1, ""

    .line 267
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 269
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 270
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 271
    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 272
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 273
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 274
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 275
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    .line 276
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    .line 277
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    const/4 v0, 0x1

    .line 278
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 280
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 281
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 282
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->cachedSize:I

    return-object p0
.end method

.method public final clearHasMagnet()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 224
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearInterLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 154
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearModel()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const-string v0, ""

    .line 112
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearPrimaryButton()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 248
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x1

    .line 249
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    return-object p0
.end method

.method public final clearScreenToLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 135
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearTrayToLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 196
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearVendor()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearVerticalAlignment()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

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

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    .line 289
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 294
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 297
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 300
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 303
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v1, :cond_5

    .line 309
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 291
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

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 385
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 386
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 388
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 392
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 395
    iget v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 396
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 399
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 400
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v1, :cond_4

    array-length v4, v1

    if-lez v4, :cond_4

    .line 403
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 407
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 410
    iget v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 411
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :cond_5
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v1, :cond_6

    array-length v4, v1

    if-lez v4, :cond_6

    .line 414
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 418
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_7

    .line 421
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 425
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_7
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-eqz v1, :cond_8

    array-length v4, v1

    if-lez v4, :cond_8

    .line 428
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 432
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_8
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 435
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 436
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_9
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 439
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 440
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_a
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 443
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 444
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 446
    :cond_b
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v1, :cond_c

    const/16 v2, 0x6c1

    .line 448
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_c
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v1, :cond_d

    const v2, 0x30113

    .line 452
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public final getHasMagnet()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    return v0
.end method

.method public final getInterLensDistance()F
    .locals 1

    .line 147
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    return v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryButton()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    return v0
.end method

.method public final getScreenToLensDistance()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return v0
.end method

.method public final getTrayToLensDistance()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerticalAlignment()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    return v0
.end method

.method public final hasHasMagnet()Z
    .locals 1

    .line 220
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInterLensDistance()Z
    .locals 1

    .line 150
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasModel()Z
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrimaryButton()Z
    .locals 1

    .line 245
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScreenToLensDistance()Z
    .locals 1

    .line 131
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTrayToLensDistance()Z
    .locals 1

    .line 192
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVendor()Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVerticalAlignment()Z
    .locals 1

    .line 178
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
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

    .line 462
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 467
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 666
    :sswitch_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_1

    .line 667
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 659
    :sswitch_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_2

    .line 660
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 647
    :sswitch_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 648
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 650
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->checkButtonTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 651
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 654
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 635
    :sswitch_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 636
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 638
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->checkVerticalAlignmentTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 639
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 641
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 630
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 631
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x4d

    .line 598
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 599
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 600
    new-array v3, v0, [F

    if-eqz v2, :cond_4

    .line 602
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_5

    .line 605
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 606
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 609
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 610
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    goto/16 :goto_0

    .line 614
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 615
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 616
    div-int/lit8 v0, v0, 0x4

    .line 617
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 618
    new-array v4, v0, [F

    if-eqz v3, :cond_7

    .line 620
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v3, v0, :cond_8

    .line 623
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 625
    :cond_8
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    .line 626
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x45

    .line 565
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 566
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_5

    :cond_9
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 567
    new-array v3, v0, [F

    if-eqz v2, :cond_a

    .line 569
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_b

    .line 572
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 573
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 576
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 577
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    goto/16 :goto_0

    .line 581
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 582
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 583
    div-int/lit8 v0, v0, 0x4

    .line 584
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_7

    :cond_c
    array-length v3, v3

    :goto_7
    add-int/2addr v0, v3

    .line 585
    new-array v4, v0, [F

    if-eqz v3, :cond_d

    .line 587
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_8
    if-ge v3, v0, :cond_e

    .line 590
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 592
    :cond_e
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    .line 593
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x3d

    .line 532
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 533
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_9

    :cond_f
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 534
    new-array v3, v0, [F

    if-eqz v2, :cond_10

    .line 536
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_11

    .line 539
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 540
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 543
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 544
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    goto/16 :goto_0

    .line 548
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 549
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 550
    div-int/lit8 v0, v0, 0x4

    .line 551
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-nez v3, :cond_12

    move v3, v1

    goto :goto_b

    :cond_12
    array-length v3, v3

    :goto_b
    add-int/2addr v0, v3

    .line 552
    new-array v4, v0, [F

    if-eqz v3, :cond_13

    .line 554
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_c
    if-ge v3, v0, :cond_14

    .line 557
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 559
    :cond_14
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 560
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 526
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 527
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x2d

    .line 494
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 495
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_d

    :cond_15
    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    .line 496
    new-array v3, v0, [F

    if-eqz v2, :cond_16

    .line 498
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_e
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_17

    .line 501
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 502
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 505
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 506
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    goto/16 :goto_0

    .line 510
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 511
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 512
    div-int/lit8 v0, v0, 0x4

    .line 513
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-nez v3, :cond_18

    move v3, v1

    goto :goto_f

    :cond_18
    array-length v3, v3

    :goto_f
    add-int/2addr v0, v3

    .line 514
    new-array v4, v0, [F

    if-eqz v3, :cond_19

    .line 516
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_10
    if-ge v3, v0, :cond_1a

    .line 519
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 521
    :cond_1a
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 522
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 488
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 489
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 483
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 484
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 478
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 479
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 473
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 474
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0xa -> :sswitch_11
        0x12 -> :sswitch_10
        0x1d -> :sswitch_f
        0x25 -> :sswitch_e
        0x2a -> :sswitch_d
        0x2d -> :sswitch_c
        0x35 -> :sswitch_b
        0x3a -> :sswitch_a
        0x3d -> :sswitch_9
        0x42 -> :sswitch_8
        0x45 -> :sswitch_7
        0x4a -> :sswitch_6
        0x4d -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x360a -> :sswitch_1
        0x18089a -> :sswitch_0
    .end sparse-switch
.end method

.method public final setHasMagnet(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 228
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 229
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    return-object p0
.end method

.method public final setInterLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 158
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 159
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 120
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 121
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 118
    throw p1
.end method

.method public final setPrimaryButton(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 240
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 241
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final setScreenToLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 139
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 140
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return-object p0
.end method

.method public final setTrayToLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 200
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 201
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return-object p0
.end method

.method public final setVendor(Ljava/lang/String;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 98
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 99
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 96
    throw p1
.end method

.method public final setVerticalAlignment(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 173
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 174
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
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

    .line 318
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 321
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 324
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 325
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 327
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 328
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 331
    array-length v0, v0

    mul-int/2addr v0, v1

    const/16 v3, 0x2a

    .line 332
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 333
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 335
    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 339
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v0, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    .line 342
    array-length v0, v0

    mul-int/2addr v0, v1

    const/16 v3, 0x3a

    .line 343
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 344
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 345
    :goto_1
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 346
    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-eqz v0, :cond_7

    array-length v3, v0

    if-lez v3, :cond_7

    .line 350
    array-length v0, v0

    mul-int/2addr v0, v1

    const/16 v3, 0x42

    .line 351
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 352
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v2

    .line 353
    :goto_2
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 354
    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-eqz v0, :cond_8

    array-length v3, v0

    if-lez v3, :cond_8

    .line 358
    array-length v0, v0

    mul-int/2addr v0, v1

    const/16 v1, 0x4a

    .line 359
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 360
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 361
    :goto_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    array-length v1, v0

    if-ge v2, v1, :cond_8

    .line 362
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 365
    :cond_8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 366
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 368
    :cond_9
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 369
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 371
    :cond_a
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 372
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 374
    :cond_b
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v0, :cond_c

    const/16 v1, 0x6c1

    .line 375
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 377
    :cond_c
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v0, :cond_d

    const v1, 0x30113

    .line 378
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 380
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
