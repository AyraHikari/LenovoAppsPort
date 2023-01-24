.class Lcom/google/vr/sdk/widgets/video/deps/dU;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dU$a;,
        Lcom/google/vr/sdk/widgets/video/deps/dU$c;,
        Lcom/google/vr/sdk/widgets/video/deps/dU$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ec;

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/eg$a;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/ek;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/dh;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:[B

.field private j:Ljava/io/IOException;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

.field private l:Z

.field private m:Landroid/net/Uri;

.field private n:[B

.field private o:Ljava/lang/String;

.field private p:[B

.field private q:Lcom/google/vr/sdk/widgets/video/deps/fi;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ek;[Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/dV;Lcom/google/vr/sdk/widgets/video/deps/ec;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ek;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/dV;",
            "Lcom/google/vr/sdk/widgets/video/deps/ec;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->e:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->d:[Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->c:Lcom/google/vr/sdk/widgets/video/deps/ec;

    .line 5
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->g:Ljava/util/List;

    .line 6
    array-length p1, p2

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 7
    array-length p4, p2

    new-array p4, p4, [I

    const/4 p5, 0x0

    .line 8
    :goto_0
    array-length v0, p2

    if-ge p5, v0, :cond_0

    .line 9
    aget-object v0, p2, p5

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    aput-object v0, p1, p5

    .line 10
    aput p5, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 12
    invoke-interface {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/dV;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    const/4 p2, 0x3

    .line 13
    invoke-interface {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/dV;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 14
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    .line 15
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dU$c;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-direct {p1, p2, p4}, Lcom/google/vr/sdk/widgets/video/deps/dU$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/dU$a;
    .locals 9

    .line 113
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fy;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 114
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dU$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->d:[Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    aget-object p3, v0, p3

    iget-object v3, p3, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->i:[B

    move-object v0, p1

    move-object v2, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dU$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .line 115
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 118
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-array v1, v2, [B

    .line 120
    array-length v3, v0

    if-le v3, v2, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 121
    :goto_1
    array-length v4, v0

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->m:Landroid/net/Uri;

    .line 123
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->n:[B

    .line 124
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->o:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->p:[B

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->m:Landroid/net/Uri;

    .line 128
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->n:[B

    .line 129
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->o:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->p:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->j:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->k:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->e:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V

    :cond_0
    return-void

    .line 18
    :cond_1
    throw v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dX;JLcom/google/vr/sdk/widgets/video/deps/dU$b;)V
    .locals 31

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p4

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 32
    iput-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->k:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    iget-boolean v5, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->l:Z

    if-eqz v5, :cond_2

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->g:J

    goto :goto_1

    :cond_2
    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->f:J

    :goto_1
    sub-long v7, v7, p2

    .line 35
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 36
    :goto_2
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(J)V

    .line 37
    iget-object v3, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/fi;->g()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    .line 39
    :goto_3
    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->d:[Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    aget-object v8, v8, v3

    .line 40
    iget-object v9, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->e:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 41
    iput-object v8, v11, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->c:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 42
    iput-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->k:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    return-void

    .line 44
    :cond_4
    iget-object v9, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->e:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object v9

    .line 45
    iget-boolean v10, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->m:Z

    iput-boolean v10, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->l:Z

    if-eqz v0, :cond_6

    if-eqz v7, :cond_5

    goto :goto_5

    .line 61
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dX;->g()I

    move-result v1

    :goto_4
    move v4, v1

    move-object v1, v8

    goto :goto_7

    :cond_6
    :goto_5
    if-nez v0, :cond_7

    move-wide/from16 v12, p2

    goto :goto_6

    .line 48
    :cond_7
    iget-boolean v7, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->l:Z

    if-eqz v7, :cond_8

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->g:J

    goto :goto_6

    :cond_8
    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->f:J

    .line 49
    :goto_6
    iget-boolean v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-nez v7, :cond_9

    invoke-virtual {v9}, Lcom/google/vr/sdk/widgets/video/deps/eh;->a()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-ltz v7, :cond_9

    .line 50
    iget v1, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget-object v4, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_4

    .line 51
    :cond_9
    iget-object v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    iget-wide v14, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    sub-long/2addr v12, v14

    .line 52
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v12, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->e:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 53
    invoke-virtual {v12}, Lcom/google/vr/sdk/widgets/video/deps/ek;->e()Z

    move-result v12

    if-eqz v12, :cond_a

    if-nez v0, :cond_b

    :cond_a
    move v4, v5

    .line 54
    :cond_b
    invoke-static {v7, v10, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    iget v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    add-int/2addr v4, v7

    .line 55
    iget v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    if-ge v4, v7, :cond_c

    if-eqz v0, :cond_c

    .line 57
    iget-object v3, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->d:[Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    aget-object v8, v3, v1

    .line 58
    iget-object v3, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->e:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v3, v8}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object v3

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dX;->g()I

    move-result v4

    move-object v9, v3

    move v3, v1

    :cond_c
    move v1, v4

    goto :goto_4

    .line 62
    :goto_7
    iget v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    if-ge v4, v7, :cond_d

    .line 63
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cK;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cK;-><init>()V

    iput-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->j:Ljava/io/IOException;

    return-void

    .line 65
    :cond_d
    iget v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    sub-int v7, v4, v7

    .line 66
    iget-object v8, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_f

    .line 67
    iget-boolean v0, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-eqz v0, :cond_e

    .line 68
    iput-boolean v5, v11, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->b:Z

    goto :goto_8

    .line 69
    :cond_e
    iput-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->c:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 70
    iput-object v1, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->k:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    :goto_8
    return-void

    .line 72
    :cond_f
    iget-object v5, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    .line 73
    iget-boolean v7, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->e:Z

    if-eqz v7, :cond_11

    .line 74
    iget-object v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->g:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 75
    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->m:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 76
    iget-object v2, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->h:Ljava/lang/String;

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 77
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b()I

    move-result v4

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fi;->c()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v7

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/dU$a;

    move-result-object v0

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    return-void

    .line 80
    :cond_10
    iget-object v3, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->h:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->o:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 81
    iget-object v3, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->h:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->n:[B

    invoke-direct {v6, v7, v3, v8}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_9

    .line 83
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dU;->e()V

    .line 85
    :cond_12
    :goto_9
    iget-object v3, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->p:Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    if-eqz v3, :cond_13

    .line 87
    iget-object v2, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object v7, v3, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->a:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 88
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v14, v3, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->i:J

    iget-wide v7, v3, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->j:J

    const/16 v18, 0x0

    move-object v12, v2

    move-wide/from16 v16, v7

    invoke-direct/range {v12 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :cond_13
    move-object v10, v2

    .line 89
    iget-wide v2, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-wide v7, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    add-long/2addr v2, v7

    move-wide v15, v2

    .line 90
    iget v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->i:I

    iget v8, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->c:I

    add-int/2addr v7, v8

    move/from16 v20, v7

    .line 91
    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->c:Lcom/google/vr/sdk/widgets/video/deps/ec;

    invoke-virtual {v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/ec;->a(I)Lcom/google/vr/sdk/widgets/video/deps/gJ;

    move-result-object v22

    .line 92
    iget-object v7, v9, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 93
    new-instance v23, Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-object/from16 v9, v23

    iget-wide v7, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->i:J

    iget-wide v12, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->j:J

    const/16 v29, 0x0

    move-wide/from16 v25, v7

    move-wide/from16 v27, v12

    invoke-direct/range {v23 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 94
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/dX;

    move-object v7, v14

    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v12, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->g:Ljava/util/List;

    iget-object v13, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 95
    invoke-interface {v13}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b()I

    move-result v13

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fi;->c()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v14

    move-object v14, v0

    move-object/from16 p2, v7

    move-object/from16 p3, v8

    iget-wide v7, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->b:J

    add-long v17, v2, v7

    iget-boolean v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->h:Z

    move/from16 v21, v0

    iget-object v0, v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->f:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->n:[B

    move-object/from16 v25, v0

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/dU;->p:[B

    move-object/from16 v26, v0

    move-object v0, v11

    move-object v11, v1

    move/from16 v19, v4

    move-object/from16 v23, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v7 .. v26}, Lcom/google/vr/sdk/widgets/video/deps/dX;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/eg$a;Ljava/util/List;ILjava/lang/Object;JJIIZLcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/dX;Ljava/lang/String;[B[B)V

    move-object/from16 v1, v30

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;)V
    .locals 2

    .line 97
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dU$a;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dU$a;

    .line 99
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/dU$a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->i:[B

    .line 100
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dU$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dU$a;->i:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/dU$a;->g()[B

    move-result-object p1

    .line 102
    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->c(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(IJ)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fi;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->h:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;ZLjava/io/IOException;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 104
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->c(I)I

    move-result p1

    .line 106
    invoke-static {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Lcom/google/vr/sdk/widgets/video/deps/fi;ILjava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/dh;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    return-object v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->q:Lcom/google/vr/sdk/widgets/video/deps/fi;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU;->j:Ljava/io/IOException;

    return-void
.end method
