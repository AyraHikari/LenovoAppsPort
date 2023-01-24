.class public final Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SphericalMetadataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vertex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;


# instance fields
.field public u:F

.field public v:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->x:F

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->y:F

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->z:F

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->u:F

    .line 14
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->v:F

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 35
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 36
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    .line 38
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->x:F

    .line 39
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1

    const/4 v1, 0x2

    .line 42
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->y:F

    .line 43
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->z:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 45
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_2

    const/4 v1, 0x3

    .line 46
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->z:F

    .line 47
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->u:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 49
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    const/4 v1, 0x4

    .line 50
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->u:F

    .line 51
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->v:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 54
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->v:F

    .line 55
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x15

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x25

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    .line 60
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->v:F

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->u:F

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->z:F

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->y:F

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->x:F

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 20
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->x:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 21
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->y:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    .line 23
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->y:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 24
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->z:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x3

    .line 26
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->z:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 27
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->u:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 28
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x4

    .line 29
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->u:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 30
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->v:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 32
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->v:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 33
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
