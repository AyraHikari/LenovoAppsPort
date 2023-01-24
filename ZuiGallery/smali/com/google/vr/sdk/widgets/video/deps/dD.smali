.class public Lcom/google/vr/sdk/widgets/video/deps/dD;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dD$b;,
        Lcom/google/vr/sdk/widgets/video/deps/dD$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fK;

.field private final c:[I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fi;

.field private final e:I

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final g:J

.field private final h:I

.field private i:Lcom/google/vr/sdk/widgets/video/deps/dF;

.field private j:I

.field private k:Ljava/io/IOException;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fK;Lcom/google/vr/sdk/widgets/video/deps/dF;I[ILcom/google/vr/sdk/widgets/video/deps/fi;ILcom/google/vr/sdk/widgets/video/deps/fv;JIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->b:Lcom/google/vr/sdk/widgets/video/deps/fK;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-object/from16 v3, p4

    .line 4
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->c:[I

    .line 5
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    move/from16 v9, p6

    .line 6
    iput v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->e:I

    move-object/from16 v3, p7

    .line 7
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    move/from16 v3, p3

    .line 8
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->j:I

    move-wide/from16 v4, p8

    .line 9
    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->g:J

    move/from16 v4, p10

    .line 10
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->h:I

    .line 11
    invoke-virtual/range {p2 .. p3}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide v10

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dD;->b()Ljava/util/ArrayList;

    move-result-object v12

    .line 13
    invoke-interface/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/fi;->e()I

    move-result v2

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    const/4 v2, 0x0

    move v13, v2

    .line 14
    :goto_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    array-length v2, v2

    if-ge v13, v2, :cond_0

    .line 15
    invoke-interface {v1, v13}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b(I)I

    move-result v2

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 16
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    move-object v2, v15

    move-wide v3, v10

    move/from16 v5, p6

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;-><init>(JILcom/google/vr/sdk/widgets/video/deps/dK;ZZ)V

    aput-object v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dD$b;Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;II)Lcom/google/vr/sdk/widgets/video/deps/dm;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v10, p6

    .line 132
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 133
    invoke-virtual {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(I)J

    move-result-wide v6

    .line 134
    invoke-virtual {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v2

    .line 135
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dK;->e:Ljava/lang/String;

    .line 136
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    if-nez v4, :cond_0

    .line 137
    invoke-virtual {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b(I)J

    move-result-wide v8

    .line 138
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iget-wide v13, v2, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    .line 139
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/dK;->f()Ljava/lang/String;

    move-result-object v17

    move-object v11, v4

    move-wide v15, v2

    invoke-direct/range {v11 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 140
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/dw;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/dw;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJIILcom/google/vr/sdk/widgets/video/deps/m;)V

    return-object v13

    :cond_0
    const/4 v4, 0x1

    move/from16 v5, p7

    move v8, v4

    move v11, v8

    :goto_0
    if-ge v8, v5, :cond_2

    add-int v9, v10, v8

    .line 143
    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v9

    .line 144
    invoke-virtual {v2, v9, v3}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Lcom/google/vr/sdk/widgets/video/deps/dJ;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v2, v9

    goto :goto_0

    :cond_2
    :goto_1
    add-int v5, v10, v11

    sub-int/2addr v5, v4

    .line 150
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b(I)J

    move-result-wide v8

    .line 151
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    iget-wide v14, v2, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    .line 152
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/dK;->f()Ljava/lang/String;

    move-result-object v18

    move-object v12, v4

    move-wide/from16 v16, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 153
    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dK;->f:J

    neg-long v12, v1

    .line 154
    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/ds;

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/ds;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJIIJLcom/google/vr/sdk/widgets/video/deps/dn;)V

    return-object v15
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dD$b;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/dJ;Lcom/google/vr/sdk/widgets/video/deps/dJ;)Lcom/google/vr/sdk/widgets/video/deps/dm;
    .locals 8

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dK;->e:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 125
    invoke-virtual {p5, p6, v0}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Lcom/google/vr/sdk/widgets/video/deps/dJ;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p6

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p6

    .line 129
    :goto_0
    new-instance p6, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-virtual {p5, v0}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, p5, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    iget-wide v5, p5, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 130
    invoke-virtual {p5}, Lcom/google/vr/sdk/widgets/video/deps/dK;->f()Ljava/lang/String;

    move-result-object v7

    move-object v1, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 131
    new-instance p5, Lcom/google/vr/sdk/widgets/video/deps/du;

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/du;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/dn;)V

    return-object p5
.end method

.method private b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/dK;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->j:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 117
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private c()J
    .locals 7

    .line 120
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->g:J

    add-long/2addr v3, v5

    :goto_0
    mul-long/2addr v3, v1

    return-wide v3

    .line 122
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/dv;",
            ">;)I"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->k:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fi;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(JLjava/util/List;)I

    move-result p1

    return p1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->b:Lcom/google/vr/sdk/widgets/video/deps/fK;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fK;->d()V

    return-void

    .line 32
    :cond_0
    throw v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dF;I)V
    .locals 4

    .line 19
    :try_start_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 20
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->j:I

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide p1

    .line 22
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dD;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 25
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(JLcom/google/vr/sdk/widgets/video/deps/dK;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/cK; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->k:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;)V
    .locals 2

    .line 91
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/du;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/du;

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/du;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 94
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    aget-object p1, v0, p1

    .line 95
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dn;->b()Lcom/google/vr/sdk/widgets/video/deps/az;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dC;

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ao;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dC;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao;)V

    iput-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/dv;JLcom/google/vr/sdk/widgets/video/deps/do;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    .line 38
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->k:Ljava/io/IOException;

    if-eqz v5, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 40
    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/dv;->g:J

    sub-long/2addr v5, v2

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    .line 41
    :goto_0
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v7, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(J)V

    .line 42
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 43
    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a()I

    move-result v6

    aget-object v7, v5, v6

    .line 44
    iget-object v5, v7, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    if-eqz v5, :cond_5

    .line 45
    iget-object v5, v7, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 48
    iget-object v6, v7, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/dn;->c()[Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v6

    const/4 v8, 0x0

    if-nez v6, :cond_2

    .line 49
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/dK;->c()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v6

    move-object v12, v6

    goto :goto_1

    :cond_2
    move-object v12, v8

    .line 50
    :goto_1
    iget-object v6, v7, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    if-nez v6, :cond_3

    .line 51
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/dK;->d()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v5

    move-object v13, v5

    goto :goto_2

    :cond_3
    move-object v13, v8

    :goto_2
    if-nez v12, :cond_4

    if-eqz v13, :cond_5

    .line 53
    :cond_4
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 54
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->f()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v9

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b()I

    move-result v10

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 55
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->c()Ljava/lang/Object;

    move-result-object v11

    .line 56
    invoke-static/range {v7 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/dD;->a(Lcom/google/vr/sdk/widgets/video/deps/dD$b;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/dJ;Lcom/google/vr/sdk/widgets/video/deps/dJ;)Lcom/google/vr/sdk/widgets/video/deps/dm;

    move-result-object v1

    iput-object v1, v4, Lcom/google/vr/sdk/widgets/video/deps/do;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    return-void

    .line 58
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dD;->c()J

    move-result-wide v5

    .line 59
    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_8

    .line 61
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->j:I

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_7

    :cond_6
    move v9, v10

    :cond_7
    iput-boolean v9, v4, Lcom/google/vr/sdk/widgets/video/deps/do;->b:Z

    return-void

    .line 63
    :cond_8
    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a()I

    move-result v11

    const/4 v12, -0x1

    if-ne v8, v12, :cond_a

    .line 65
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v12, v8, Lcom/google/vr/sdk/widgets/video/deps/dF;->a:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v5, v12

    .line 66
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->j:I

    invoke-virtual {v8, v12}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v8

    iget-wide v12, v8, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    mul-long/2addr v12, v14

    sub-long/2addr v5, v12

    .line 68
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v12, v8, Lcom/google/vr/sdk/widgets/video/deps/dF;->f:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v12, v16

    if-eqz v8, :cond_9

    .line 69
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v12, v8, Lcom/google/vr/sdk/widgets/video/deps/dF;->f:J

    mul-long/2addr v12, v14

    sub-long v12, v5, v12

    .line 71
    invoke-virtual {v7, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(J)I

    move-result v8

    .line 72
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 73
    :cond_9
    invoke-virtual {v7, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(J)I

    move-result v5

    sub-int/2addr v5, v10

    goto :goto_3

    :cond_a
    add-int/2addr v8, v11

    add-int/lit8 v5, v8, -0x1

    :goto_3
    if-nez v1, :cond_b

    .line 77
    invoke-virtual {v7, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(J)I

    move-result v1

    invoke-static {v1, v11, v5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(III)I

    move-result v1

    goto :goto_4

    .line 78
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dv;->g()I

    move-result v1

    if-ge v1, v11, :cond_c

    .line 80
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cK;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/cK;-><init>()V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->k:Ljava/io/IOException;

    return-void

    :cond_c
    :goto_4
    move v13, v1

    if-gt v13, v5, :cond_e

    .line 82
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->l:Z

    if-eqz v1, :cond_d

    if-lt v13, v5, :cond_d

    goto :goto_5

    .line 85
    :cond_d
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->h:I

    sub-int/2addr v5, v13

    add-int/2addr v5, v10

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 86
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->e:I

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 87
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->f()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v10

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b()I

    move-result v11

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 88
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->c()Ljava/lang/Object;

    move-result-object v12

    .line 89
    invoke-static/range {v7 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/dD;->a(Lcom/google/vr/sdk/widgets/video/deps/dD$b;Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;II)Lcom/google/vr/sdk/widgets/video/deps/dm;

    move-result-object v1

    iput-object v1, v4, Lcom/google/vr/sdk/widgets/video/deps/do;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    return-void

    .line 83
    :cond_e
    :goto_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->j:I

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_10

    :cond_f
    move v9, v10

    :cond_10
    iput-boolean v9, v4, Lcom/google/vr/sdk/widgets/video/deps/do;->b:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;ZLjava/lang/Exception;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->i:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-boolean p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    if-nez p2, :cond_1

    instance-of p2, p1, Lcom/google/vr/sdk/widgets/video/deps/dv;

    if-eqz p2, :cond_1

    instance-of p2, p3, Lcom/google/vr/sdk/widgets/video/deps/fI$e;

    if-eqz p2, :cond_1

    move-object p2, p3

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/fI$e;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/fI$e;->f:I

    const/16 v0, 0x194

    if-ne p2, v0, :cond_1

    .line 103
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->a:[Lcom/google/vr/sdk/widgets/video/deps/dD$b;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 104
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v0

    aget-object p2, p2, v0

    .line 105
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a()I

    move-result p2

    add-int/2addr p2, v0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 108
    move-object v1, p1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dv;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/dv;->g()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 109
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->l:Z

    return v0

    .line 111
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD;->d:Lcom/google/vr/sdk/widgets/video/deps/fi;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 112
    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    .line 113
    invoke-static {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Lcom/google/vr/sdk/widgets/video/deps/fi;ILjava/lang/Exception;)Z

    move-result p1

    return p1
.end method
