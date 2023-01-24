.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

.field private fileExtension:Ljava/lang/String;

.field private imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

.field private videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14475
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 14480
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    .line 14481
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 14482
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 14483
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 14484
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 14485
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->cachedSize:I

    return-void
.end method

.method public static checkAudioCodecOrThrow(I)I
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

    .line 14411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum AudioCodec"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    .locals 2

    .line 14492
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14496
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v1, :cond_0

    .line 14497
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 14499
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v1, :cond_1

    .line 14500
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 14502
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v1, :cond_2

    .line 14503
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 14494
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

    .line 14384
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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

    .line 14384
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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

    .line 14384
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 14529
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 14530
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 14532
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14534
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 14536
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14538
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 14540
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14542
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 14544
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
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

    .line 14554
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 14559
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 14583
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-nez v0, :cond_2

    .line 14584
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 14586
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14576
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-nez v0, :cond_4

    .line 14577
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 14579
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14569
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-nez v0, :cond_6

    .line 14570
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 14572
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14565
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    goto :goto_0

    :cond_8
    return-object p0
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

    .line 14512
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14513
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14515
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 14516
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 14518
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 14519
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 14521
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 14522
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 14524
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
