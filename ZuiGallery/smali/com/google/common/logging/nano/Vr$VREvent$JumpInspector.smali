.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

.field private pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

.field private playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16108
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 16113
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 16114
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 16115
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 16116
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 16117
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 2

    .line 16124
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16128
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v1, :cond_0

    .line 16129
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 16131
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v1, :cond_1

    .line 16132
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 16134
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v1, :cond_2

    .line 16135
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 16126
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

    .line 14381
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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

    .line 14381
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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

    .line 14381
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 16158
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 16159
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 16161
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16163
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 16165
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16167
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 16169
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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

    .line 16179
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 16184
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 16204
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-nez v0, :cond_2

    .line 16205
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 16207
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 16197
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-nez v0, :cond_4

    .line 16198
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 16200
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 16190
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-nez v0, :cond_6

    .line 16191
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 16193
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
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

    .line 16144
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 16145
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 16147
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 16148
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 16150
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 16151
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 16153
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
