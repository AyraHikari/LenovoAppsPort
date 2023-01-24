.class Lcom/google/vr/sdk/widgets/video/deps/aV;
.super Ljava/lang/Object;
.source "HeifAtomParsers.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "iloc"

    .line 154
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->a:I

    const-string v0, "iinf"

    .line 155
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->b:I

    const-string v0, "iref"

    .line 156
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->c:I

    const-string v0, "idat"

    .line 157
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->d:I

    const-string v0, "pitm"

    .line 158
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->e:I

    const-string v0, "iprp"

    .line 159
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->f:I

    const-string v0, "infe"

    .line 160
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->g:I

    const-string v0, "ipco"

    .line 161
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->h:I

    const-string v0, "ipma"

    .line 162
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->i:I

    const-string v0, "mime"

    .line 163
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->j:I

    const-string/jumbo v0, "url "

    .line 164
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->k:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x8

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 148
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v3

    shr-int/lit8 v4, v3, 0xc

    shr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    and-int/lit8 v3, v3, 0xf

    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v8

    :goto_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_17

    const-wide/16 v11, -0x1

    if-ge v2, v7, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v11

    int-to-long v11, v11

    goto :goto_2

    :cond_1
    if-ne v2, v7, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v11

    :cond_2
    :goto_2
    const/4 v13, -0x1

    const/4 v14, 0x1

    if-eq v2, v14, :cond_3

    if-ne v2, v7, :cond_4

    .line 19
    :cond_3
    invoke-virtual {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 20
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v13

    and-int/lit8 v13, v13, 0xf

    :cond_4
    move v15, v13

    .line 21
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v13

    if-nez v13, :cond_16

    const-wide/16 v19, 0x0

    const/4 v13, 0x4

    if-nez v6, :cond_5

    move-wide/from16 v21, v19

    goto :goto_4

    :cond_5
    if-ne v6, v13, :cond_6

    .line 27
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v16

    :goto_3
    move-wide/from16 v21, v16

    goto :goto_4

    :cond_6
    if-ne v6, v1, :cond_15

    .line 29
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v16

    goto :goto_3

    .line 31
    :goto_4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v9

    if-gt v9, v14, :cond_14

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_13

    if-eq v2, v14, :cond_7

    if-ne v2, v7, :cond_8

    :cond_7
    if-lez v3, :cond_8

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_8
    if-nez v4, :cond_9

    move/from16 v23, v8

    move-wide/from16 v7, v19

    goto :goto_7

    :cond_9
    if-ne v4, v13, :cond_a

    .line 40
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v16

    :goto_6
    move/from16 v23, v8

    move-wide/from16 v7, v16

    goto :goto_7

    :cond_a
    const/16 v14, 0x8

    if-ne v4, v14, :cond_12

    .line 42
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v16

    goto :goto_6

    :goto_7
    if-eqz v5, :cond_11

    if-ne v5, v13, :cond_f

    .line 47
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v14

    if-nez v15, :cond_b

    add-long v16, v21, v7

    move/from16 v24, v13

    move-object/from16 v13, p1

    move-object/from16 v25, v0

    move v8, v14

    move v0, v15

    const/4 v7, 0x1

    move-wide v14, v11

    move/from16 v18, v8

    .line 52
    invoke-virtual/range {v13 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(JJI)Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    move-object/from16 v8, p1

    move v14, v7

    goto :goto_9

    :cond_b
    move-object/from16 v25, v0

    move/from16 v24, v13

    move v13, v14

    move v0, v15

    const/4 v14, 0x1

    if-ne v0, v14, :cond_d

    const-wide/32 v15, 0x7fffffff

    cmp-long v15, v7, v15

    if-gtz v15, :cond_c

    move v15, v14

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 54
    :goto_8
    invoke-static {v15}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    long-to-int v7, v7

    move-object/from16 v8, p1

    .line 55
    invoke-virtual {v8, v11, v12, v7, v13}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->b(JII)Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    :goto_9
    add-int/lit8 v1, v1, 0x1

    move v15, v0

    move/from16 v8, v23

    move/from16 v13, v24

    move-object/from16 v0, v25

    const/4 v7, 0x2

    goto :goto_5

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 57
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Construction method 2 is not supported yet"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_e
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const/16 v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected construction method: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/16 v0, 0x8

    if-ne v5, v0, :cond_10

    .line 49
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Large extent lengths are not supported yet"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_10
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw v0

    .line 45
    :cond_11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Container length extents are not supported yet"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_12
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw v0

    :cond_13
    move-object/from16 v25, v0

    move v1, v7

    move/from16 v23, v8

    const/16 v0, 0x8

    move-object/from16 v8, p1

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v23

    move v1, v0

    move-object/from16 v0, v25

    goto/16 :goto_1

    .line 33
    :cond_14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Multiple extents are not supported"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_15
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw v0

    .line 23
    :cond_16
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Data references outside the current file are not supported"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-void
.end method

.method public static b(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x8

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 64
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x4

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v1

    .line 71
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v4

    int-to-long v5, v1

    .line 74
    invoke-virtual {p1, v5, v6, v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(JII)Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Unsupported iref box version"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x8

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 80
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v2

    .line 84
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v3

    .line 85
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v4

    .line 86
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v5

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v5

    .line 87
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aV;->g:I

    if-ne v4, v6, :cond_4

    const/4 v4, 0x2

    if-ne v5, v4, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v4

    .line 91
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v10

    .line 92
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v9

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    move-result-object v8

    .line 94
    sget v5, Lcom/google/vr/sdk/widgets/video/deps/aV;->j:I

    if-ne v9, v5, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v5, v3, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    goto :goto_2

    .line 98
    :cond_1
    sget v2, Lcom/google/vr/sdk/widgets/video/deps/aV;->k:I

    if-ne v9, v2, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    :cond_2
    :goto_2
    int-to-long v6, v4

    move-object v5, p1

    .line 100
    invoke-virtual/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(JLjava/lang/String;II)Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    goto :goto_3

    .line 89
    :cond_3
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Expected infe box version to be 2"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v3, v3, -0xc

    .line 102
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static d(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x8

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    if-lez v2, :cond_9

    .line 109
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v2

    .line 110
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    .line 111
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aV;->h:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    sub-int/2addr v2, v0

    :goto_0
    if-lez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v3

    .line 115
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v4

    add-int/lit8 v6, v3, -0x8

    .line 116
    new-array v7, v6, [B

    .line 117
    invoke-virtual {p0, v7, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 118
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/aX$c;

    invoke-direct {v6, v4, v7}, Lcom/google/vr/sdk/widgets/video/deps/aX$c;-><init>(I[B)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v2, v3

    goto :goto_0

    .line 121
    :cond_1
    sget v2, Lcom/google/vr/sdk/widgets/video/deps/aV;->i:I

    if-ne v3, v2, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 123
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v3

    .line 124
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->b(I)I

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_0

    const/4 v7, 0x1

    if-ge v3, v7, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v8

    int-to-long v8, v8

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v8

    .line 128
    :goto_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v10

    move v11, v5

    :goto_3
    if-ge v11, v10, :cond_7

    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v12

    const v13, 0x8000

    and-int/2addr v13, v12

    if-eqz v13, :cond_3

    move v13, v7

    goto :goto_4

    :cond_3
    move v13, v5

    :goto_4
    and-int/lit16 v12, v12, 0x7fff

    goto :goto_6

    .line 135
    :cond_4
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v12

    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    move v13, v5

    :goto_5
    and-int/lit8 v12, v12, 0x7f

    :goto_6
    if-lez v12, :cond_6

    add-int/lit8 v12, v12, -0x1

    .line 139
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/vr/sdk/widgets/video/deps/aX$c;

    invoke-virtual {p1, v8, v9, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a(JLcom/google/vr/sdk/widgets/video/deps/aX$c;Z)Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 143
    :cond_8
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Unexpected box in iprp"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-void
.end method

.method public static e(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V
    .locals 2

    .line 150
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x8

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a([B)Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    return-void
.end method
