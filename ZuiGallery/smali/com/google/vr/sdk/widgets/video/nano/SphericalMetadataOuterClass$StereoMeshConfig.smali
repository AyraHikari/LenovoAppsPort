.class public final Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SphericalMetadataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StereoMeshConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;


# instance fields
.field public leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

.field public rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

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
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    .line 11
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    .line 12
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 32
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-nez v0, :cond_2

    .line 39
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-nez v0, :cond_4

    .line 35
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->leftEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;->rightEyeMesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
