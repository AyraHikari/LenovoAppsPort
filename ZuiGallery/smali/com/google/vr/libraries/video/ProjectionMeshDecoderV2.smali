.class public Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;
.super Ljava/lang/Object;
.source "ProjectionMeshDecoderV2.java"


# static fields
.field private static final INITIAL_DECOMPRESS_SIZE:I = 0x186a0

.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_MESH_COUNT:I = 0x2

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I

.field private static final TYPE_MESH:I

.field private static final TYPE_MSHP:I

.field private static final TYPE_PROJ:I

.field private static final TYPE_RAW:I

.field private static final TYPE_YTMP:I


# instance fields
.field private error:Z

.field private meshCount:I

.field private scene:Lcom/google/vr/libraries/video/ProjectionScene;

.field private sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/libraries/video/ProjectionScene;",
            ">;"
        }
    .end annotation
.end field

.field private ytmpParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ytmp"

    .line 186
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_YTMP:I

    const-string v0, "mshp"

    .line 187
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_MSHP:I

    const-string v0, "raw "

    .line 188
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_RAW:I

    const-string v0, "dfl8"

    .line 189
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_DFL8:I

    const-string v0, "mesh"

    .line 190
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_MESH:I

    const-string v0, "proj"

    .line 191
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_PROJ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->sceneList:Ljava/util/List;

    return-void
.end method

.method private static decodeZigZag(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method static inflate([BII[I)[B
    .locals 5

    .line 165
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 166
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/Inflater;->setInput([BII)V

    const p0, 0x186a0

    new-array p1, p0, [B

    const/4 p2, 0x0

    move v2, p2

    :cond_0
    sub-int v3, p0, v2

    .line 172
    :try_start_0
    invoke-virtual {v0, p1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    add-int/2addr v2, v3

    .line 173
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 175
    invoke-static {p1}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->resizeBuffer([B)[B

    move-result-object p0

    .line 176
    array-length p1, p0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, p1

    move-object p1, p0

    move p0, v4

    :cond_1
    if-nez v3, :cond_0

    .line 181
    aput v2, p3, p2

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isProj(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/4 v2, 0x4

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 16
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 18
    sget p1, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_PROJ:I

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isVertexInvalid(IIIIII)Z
    .locals 0

    .line 164
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p0, p5, :cond_1

    if-lt p4, p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private parseMesh(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 24

    move-object/from16 v0, p0

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v7

    const/4 v8, 0x1

    const/16 v1, 0x2710

    if-le v7, v1, :cond_0

    .line 93
    iput-boolean v8, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    .line 95
    :cond_0
    new-array v9, v7, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_1

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->A()F

    move-result v2

    aput v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v11

    const/16 v1, 0x7d00

    if-le v11, v1, :cond_2

    .line 101
    iput-boolean v8, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    :cond_2
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 103
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    int-to-double v1, v7

    mul-double/2addr v1, v12

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v6, v1

    .line 110
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/gz;

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    const/16 v4, 0x8

    mul-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    mul-int/lit8 v1, v11, 0x3

    .line 112
    new-array v3, v1, [F

    mul-int/lit8 v1, v11, 0x2

    .line 113
    new-array v2, v1, [F

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ge v1, v11, :cond_4

    .line 115
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->decodeZigZag(I)I

    move-result v22

    add-int v16, v16, v22

    .line 116
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->decodeZigZag(I)I

    move-result v22

    add-int v17, v17, v22

    .line 117
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->decodeZigZag(I)I

    move-result v22

    add-int v18, v18, v22

    .line 118
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->decodeZigZag(I)I

    move-result v22

    add-int v19, v19, v22

    .line 119
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->decodeZigZag(I)I

    move-result v22

    add-int v20, v20, v22

    move/from16 v22, v1

    move/from16 v1, v16

    move-object v12, v2

    move/from16 v2, v17

    move-object v13, v3

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 p1, v5

    move/from16 v5, v20

    move/from16 v23, v6

    move v6, v7

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->isVertexInvalid(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iput-boolean v8, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    :cond_3
    mul-int/lit8 v1, v22, 0x3

    add-int/lit8 v2, v1, 0x0

    .line 124
    aget v3, v9, v16

    aput v3, v13, v2

    add-int/lit8 v2, v1, 0x1

    .line 125
    aget v3, v9, v17

    aput v3, v13, v2

    add-int/2addr v1, v10

    .line 126
    aget v2, v9, v18

    aput v2, v13, v1

    mul-int/lit8 v1, v22, 0x2

    add-int/lit8 v2, v1, 0x0

    .line 128
    aget v3, v9, v19

    aput v3, v12, v2

    add-int/2addr v1, v8

    .line 129
    aget v2, v9, v20

    aput v2, v12, v1

    add-int/lit8 v1, v22, 0x1

    move-object/from16 v5, p1

    move-object v2, v12

    move-object v3, v13

    move/from16 v6, v23

    const/16 v4, 0x8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    goto :goto_1

    :cond_4
    move-object v12, v2

    move-object v13, v3

    move-object/from16 p1, v5

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    const/16 v1, 0x20

    .line 132
    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    const/16 v3, 0x8

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    .line 134
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    .line 135
    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    const v4, 0x1f400

    if-le v1, v4, :cond_5

    .line 137
    iput-boolean v8, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    :cond_5
    int-to-double v4, v11

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 139
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 140
    new-array v5, v1, [I

    const/4 v6, 0x0

    const/16 v21, 0x0

    :goto_2
    if-ge v6, v1, :cond_7

    .line 143
    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->decodeZigZag(I)I

    move-result v7

    add-int v7, v21, v7

    if-lt v7, v11, :cond_6

    .line 145
    iput-boolean v8, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    .line 147
    :cond_6
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v21, v7

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    if-eq v3, v8, :cond_9

    if-eq v3, v10, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x6

    goto :goto_3

    :cond_9
    const/4 v1, 0x5

    .line 155
    :goto_3
    new-instance v2, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    invoke-direct {v2}, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;-><init>()V

    .line 156
    new-instance v3, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;

    invoke-direct {v3, v13, v12, v5, v1}, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;-><init>([F[F[II)V

    .line 157
    invoke-virtual {v2, v3}, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;->addSubMesh(Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;)V

    .line 158
    iget v1, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->meshCount:I

    if-nez v1, :cond_a

    .line 159
    iget-object v1, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    invoke-virtual {v1, v2}, Lcom/google/vr/libraries/video/ProjectionScene;->setLeftMesh(Lcom/google/vr/libraries/video/ProjectionScene$Mesh;)V

    goto :goto_4

    :cond_a
    if-ne v1, v8, :cond_b

    .line 161
    iget-object v1, v0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    invoke-virtual {v1, v2}, Lcom/google/vr/libraries/video/ProjectionScene;->setRightMesh(Lcom/google/vr/libraries/video/ProjectionScene$Mesh;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private parseProj(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/libraries/video/ProjectionScene;
    .locals 5

    const/16 v0, 0x8

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 20
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    if-nez v1, :cond_5

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 23
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    .line 27
    sget v4, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_YTMP:I

    if-eq v3, v4, :cond_1

    sget v4, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_MSHP:I

    if-ne v3, v4, :cond_4

    .line 28
    :cond_1
    iget-boolean v3, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->ytmpParsed:Z

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int v3, v1, v0

    .line 30
    invoke-direct {p0, p1, v3}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->parseYtmp(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/libraries/video/ProjectionScene;

    move-result-object v3

    .line 31
    iget-boolean v4, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    if-eqz v4, :cond_3

    return-object v2

    :cond_3
    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method private parseRawYtmpData(Lcom/google/vr/sdk/widgets/video/deps/gA;II)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->meshCount:I

    .line 73
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 74
    new-instance v1, Lcom/google/vr/libraries/video/ProjectionScene;

    invoke-direct {v1, p3}, Lcom/google/vr/libraries/video/ProjectionScene;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    :goto_0
    if-ge v0, p2, :cond_3

    .line 75
    iget-boolean p3, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    if-nez p3, :cond_3

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 77
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 79
    iput-boolean v1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 82
    sget v3, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_MESH:I

    if-ne v2, v3, :cond_2

    .line 83
    iget v2, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->meshCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 84
    iput-boolean v1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    return-void

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->parseMesh(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 87
    iget v2, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->meshCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->meshCount:I

    :cond_2
    add-int/2addr v0, p3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseYtmp(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/libraries/video/ProjectionScene;
    .locals 6

    .line 44
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    const/4 v1, 0x3

    .line 45
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 48
    invoke-direct {p0, v0}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->readFromCache(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 51
    sget v3, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_RAW:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->parseRawYtmpData(Lcom/google/vr/sdk/widgets/video/deps/gA;II)V

    .line 53
    iput-boolean v4, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->ytmpParsed:Z

    goto :goto_0

    .line 54
    :cond_1
    sget v3, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->TYPE_DFL8:I

    if-ne v2, v3, :cond_3

    new-array v2, v4, [I

    .line 56
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v5

    .line 57
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p1

    sub-int/2addr p2, p1

    .line 58
    invoke-static {v3, v5, p2, v2}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->inflate([BII[I)[B

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 61
    :cond_2
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v3, 0x0

    aget v5, v2, v3

    invoke-direct {p2, p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([BI)V

    .line 62
    aget p1, v2, v3

    invoke-direct {p0, p2, p1, v0}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->parseRawYtmpData(Lcom/google/vr/sdk/widgets/video/deps/gA;II)V

    .line 63
    iput-boolean v4, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->ytmpParsed:Z

    goto :goto_0

    .line 65
    :cond_3
    iput-boolean v4, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    .line 66
    :goto_0
    iget-boolean p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    if-eqz p1, :cond_4

    return-object v1

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    invoke-virtual {p1}, Lcom/google/vr/libraries/video/ProjectionScene;->getLeftMesh()Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 69
    iget-object p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->sceneList:Ljava/util/List;

    iget-object p2, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    return-object p1

    :cond_5
    return-object v1
.end method

.method private readFromCache(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->sceneList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->sceneList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/libraries/video/ProjectionScene;

    invoke-virtual {v2}, Lcom/google/vr/libraries/video/ProjectionScene;->getCrc()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->sceneList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/libraries/video/ProjectionScene;

    iput-object p1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static resizeBuffer([B)[B
    .locals 3

    .line 183
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 184
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public decode([B)Lcom/google/vr/libraries/video/ProjectionScene;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->error:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->ytmpParsed:Z

    .line 8
    iput-object v0, p0, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->scene:Lcom/google/vr/libraries/video/ProjectionScene;

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 10
    invoke-direct {p0, v0}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->isProj(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0, v0}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->parseProj(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/libraries/video/ProjectionScene;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/vr/libraries/video/ProjectionMeshDecoderV2;->parseYtmp(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/libraries/video/ProjectionScene;

    move-result-object p1

    return-object p1
.end method
