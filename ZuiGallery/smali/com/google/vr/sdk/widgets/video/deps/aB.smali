.class final Lcom/google/vr/sdk/widgets/video/deps/aB;
.super Lcom/google/vr/sdk/widgets/video/deps/aE;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final b:I = 0x2

.field private static final c:I = 0x7

.field private static final d:I = 0x8

.field private static final e:I = 0xa

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:[I


# instance fields
.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aE;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 26
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v8

    .line 28
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v2, v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 29
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v5, p2

    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 32
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->j:Z

    if-nez v4, :cond_1

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 34
    invoke-virtual {v1, v4, v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 35
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a([B)Landroid/util/Pair;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 38
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v6, "audio/mp4a-latm"

    .line 39
    invoke-static/range {v5 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 41
    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->j:Z

    goto :goto_0

    .line 42
    :cond_1
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->k:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    if-ne v2, v3, :cond_3

    .line 43
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v10

    .line 44
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v2, v1, v10}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 45
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v7, p2

    invoke-interface/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/aE$a;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->i:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 6
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->k:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    .line 9
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/aB;->h:[I

    aget v10, v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "audio/mpeg"

    .line 10
    invoke-static/range {v4 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    .line 11
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 12
    iput-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->j:Z

    goto :goto_3

    :cond_0
    const/4 v6, 0x7

    if-eq v3, v6, :cond_3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne v3, v1, :cond_2

    goto :goto_3

    .line 21
    :cond_2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aE$a;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->k:I

    const/16 v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aE$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    :goto_0
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->k:I

    if-ne v3, v6, :cond_4

    const-string v3, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string v3, "audio/g711-mlaw"

    :goto_1
    move-object v7, v3

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    move v13, v5

    goto :goto_2

    :cond_5
    move v13, v4

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 17
    invoke-static/range {v6 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    .line 18
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 19
    iput-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->j:Z

    .line 22
    :goto_3
    iput-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aB;->i:Z

    goto :goto_4

    :cond_6
    move-object/from16 v1, p1

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :goto_4
    return v2
.end method
