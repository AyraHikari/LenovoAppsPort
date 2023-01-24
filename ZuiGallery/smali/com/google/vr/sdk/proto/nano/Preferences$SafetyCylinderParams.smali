.class public final Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Preferences.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafetyCylinderParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;


# instance fields
.field private bitField0_:I

.field private collisionSphereRadius_:F

.field private enterEventRadius_:F

.field private exitEventRadius_:F

.field public innerFogColor:[F

.field private innerRadius_:F

.field public outerFogColor:[F

.field private outerRadius_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 728
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 729
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clear()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 2

    .line 612
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-nez v0, :cond_1

    .line 613
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 616
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 618
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 620
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
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

    .line 948
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
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

    .line 942
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 2

    const/4 v0, 0x0

    .line 733
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v0, 0x0

    .line 734
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 735
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 736
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 737
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    .line 738
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    .line 739
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 740
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    const/4 v0, 0x0

    .line 741
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 742
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->cachedSize:I

    return-object p0
.end method

.method public final clearCollisionSphereRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 634
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 635
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearEnterEventRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 697
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 698
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearExitEventRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 716
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 717
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearInnerRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 653
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 654
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearOuterRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 672
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 673
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

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

    .line 606
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 3

    .line 749
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 754
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 757
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 751
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

    .line 606
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 796
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 797
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 798
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 799
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 802
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 803
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 806
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 807
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 809
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 810
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 812
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 814
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 815
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 817
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 819
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 820
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 821
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 824
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 825
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final getCollisionSphereRadius()F
    .locals 1

    .line 628
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    return v0
.end method

.method public final getEnterEventRadius()F
    .locals 1

    .line 691
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    return v0
.end method

.method public final getExitEventRadius()F
    .locals 1

    .line 710
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    return v0
.end method

.method public final getInnerRadius()F
    .locals 1

    .line 647
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    return v0
.end method

.method public final getOuterRadius()F
    .locals 1

    .line 666
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    return v0
.end method

.method public final hasCollisionSphereRadius()Z
    .locals 2

    .line 631
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEnterEventRadius()Z
    .locals 1

    .line 694
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExitEventRadius()Z
    .locals 1

    .line 713
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInnerRadius()Z
    .locals 1

    .line 650
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOuterRadius()Z
    .locals 1

    .line 669
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 606
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
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

    .line 835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0xd

    if-eq v0, v1, :cond_15

    const/16 v1, 0x15

    if-eq v0, v1, :cond_14

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_13

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    const/16 v1, 0x25

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x35

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    .line 840
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 932
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 933
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto :goto_0

    .line 927
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 928
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto :goto_0

    .line 895
    :cond_3
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 896
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 897
    new-array v3, v0, [F

    if-eqz v1, :cond_5

    .line 899
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_6

    .line 902
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v3, v1

    .line 903
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 906
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v1

    .line 907
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    goto :goto_0

    .line 911
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 912
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 913
    div-int/lit8 v0, v0, 0x4

    .line 914
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 915
    new-array v4, v0, [F

    if-eqz v3, :cond_9

    .line 917
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    if-ge v3, v0, :cond_a

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 922
    :cond_a
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    .line 923
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 862
    :cond_b
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_5

    :cond_c
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 864
    new-array v3, v0, [F

    if-eqz v1, :cond_d

    .line 866
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_e

    .line 869
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v3, v1

    .line 870
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 873
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v1

    .line 874
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    goto/16 :goto_0

    .line 878
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 879
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 880
    div-int/lit8 v0, v0, 0x4

    .line 881
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_7

    :cond_10
    array-length v3, v3

    :goto_7
    add-int/2addr v0, v3

    .line 882
    new-array v4, v0, [F

    if-eqz v3, :cond_11

    .line 884
    iget-object v5, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_8
    if-ge v3, v0, :cond_12

    .line 887
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 889
    :cond_12
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    .line 890
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 856
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 857
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto/16 :goto_0

    .line 851
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 852
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto/16 :goto_0

    .line 846
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 847
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto/16 :goto_0

    :cond_16
    return-object p0
.end method

.method public final setCollisionSphereRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 639
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 640
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    return-object p0
.end method

.method public final setEnterEventRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 702
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 703
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    return-object p0
.end method

.method public final setExitEventRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 721
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 722
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    return-object p0
.end method

.method public final setInnerRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 658
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 659
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    return-object p0
.end method

.method public final setOuterRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 677
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 678
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

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

    .line 766
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 767
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 769
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 770
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 772
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 773
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v2

    .line 776
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 777
    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 781
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    array-length v1, v0

    if-ge v2, v1, :cond_4

    const/4 v1, 0x5

    .line 782
    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 785
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 786
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 788
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 789
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 791
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
