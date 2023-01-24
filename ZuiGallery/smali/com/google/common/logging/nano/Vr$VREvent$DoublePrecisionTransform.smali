.class public final Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private rotationQx:Ljava/lang/Double;

.field private rotationQy:Ljava/lang/Double;

.field private rotationQz:Ljava/lang/Double;

.field private scale:Ljava/lang/Double;

.field private translationX:Ljava/lang/Double;

.field private translationY:Ljava/lang/Double;

.field private translationZ:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1448
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 1453
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    .line 1454
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    .line 1455
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    .line 1456
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    .line 1457
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    .line 1458
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    .line 1459
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    .line 1460
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1461
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 2

    .line 1468
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1470
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

    .line 1408
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

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

    .line 1408
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

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

    .line 1408
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 1505
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1506
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1508
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1510
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1512
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 1516
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1518
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 1520
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1522
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 1524
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1526
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 1528
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1530
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 1532
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
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

    .line 1542
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    const/16 v1, 0x11

    if-eq v0, v1, :cond_6

    const/16 v1, 0x19

    if-eq v0, v1, :cond_5

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_3

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    const/16 v1, 0x39

    if-eq v0, v1, :cond_1

    .line 1547
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1577
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    goto :goto_0

    .line 1573
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    goto :goto_0

    .line 1569
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    goto :goto_0

    .line 1565
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    goto :goto_0

    .line 1561
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    goto :goto_0

    .line 1557
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    goto :goto_0

    .line 1553
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    goto :goto_0

    :cond_8
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

    .line 1479
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1480
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1486
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1488
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1489
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1491
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1492
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1494
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 1495
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1497
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 1498
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1500
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
