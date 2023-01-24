.class public final Lcom/google/common/logging/nano/Vr$VREvent$Photos;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Photos;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private numPhotos:Ljava/lang/Integer;

.field private openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

.field private warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2805
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 2810
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    .line 2811
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 2812
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 2813
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2814
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    .locals 2

    .line 2821
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2825
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v1, :cond_0

    .line 2826
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 2828
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v1, :cond_1

    .line 2829
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 2823
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

    .line 2480
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

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

    .line 2480
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

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

    .line 2480
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 2852
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2853
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2855
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2857
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 2859
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2861
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 2863
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

    .line 2873
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 2878
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2895
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-nez v0, :cond_2

    .line 2896
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 2898
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2888
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-nez v0, :cond_4

    .line 2889
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 2891
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2884
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    goto :goto_0

    :cond_6
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

    .line 2838
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2839
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2841
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2842
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2844
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 2845
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2847
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
