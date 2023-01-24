.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

.field private share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

.field private shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

.field private view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2344
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 2349
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 2350
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 2351
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 2352
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 2353
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2354
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    .locals 2

    .line 2361
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v1, :cond_0

    .line 2366
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 2368
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v1, :cond_1

    .line 2369
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 2371
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v1, :cond_2

    .line 2372
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 2374
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v1, :cond_3

    .line 2375
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 2363
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

    .line 1596
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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

    .line 1596
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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

    .line 1596
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 2401
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2402
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2404
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2406
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 2408
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2410
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 2412
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2414
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 2416
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

    .line 2426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 2431
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2458
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-nez v0, :cond_2

    .line 2459
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 2461
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2451
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-nez v0, :cond_4

    .line 2452
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 2454
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2444
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-nez v0, :cond_6

    .line 2445
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 2447
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2437
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-nez v0, :cond_8

    .line 2438
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 2440
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_9
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

    .line 2384
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2385
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2388
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2390
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 2391
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2393
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 2394
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2396
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
