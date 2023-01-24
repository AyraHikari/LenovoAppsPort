.class public Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;
.super Ljava/lang/Object;
.source "ProjectionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/libraries/video/ProjectionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubMesh"
.end annotation


# instance fields
.field private final mode:I

.field private final textureCoordBuffer:[F

.field private final vertexBuffer:[F

.field private final vertexIndices:[I


# direct methods
.method public constructor <init>([F[F[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexBuffer:[F

    .line 3
    iput-object p2, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->textureCoordBuffer:[F

    .line 4
    iput-object p3, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexIndices:[I

    .line 5
    iput p4, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->mode:I

    return-void
.end method

.method private expandBuffer([FI)[F
    .locals 9

    .line 13
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexIndices:[I

    array-length v0, v0

    mul-int v1, v0, p2

    .line 14
    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int v4, v3, p2

    .line 17
    iget-object v5, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexIndices:[I

    aget v5, v5, v3

    mul-int/2addr v5, p2

    move v6, v2

    :goto_1
    if-ge v6, p2, :cond_0

    add-int v7, v4, v6

    add-int v8, v5, v6

    .line 19
    aget v8, p1, v8

    aput v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->mode:I

    return v0
.end method

.method public getTextureCoordBuffer()[F
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->textureCoordBuffer:[F

    return-object v0
.end method

.method public getTextureCoords()[F
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->textureCoordBuffer:[F

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->expandBuffer([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertexBuffer()[F
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexBuffer:[F

    return-object v0
.end method

.method public getVertexIndices()[I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexIndices:[I

    return-object v0
.end method

.method public getVertices()[F
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->vertexBuffer:[F

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;->expandBuffer([FI)[F

    move-result-object v0

    return-object v0
.end method
