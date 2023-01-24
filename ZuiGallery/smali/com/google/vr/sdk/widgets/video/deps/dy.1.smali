.class final Lcom/google/vr/sdk/widgets/video/deps/dy;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cV;
.implements Lcom/google/vr/sdk/widgets/video/deps/dc$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/cV;",
        "Lcom/google/vr/sdk/widgets/video/deps/dc$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/dp<",
        "Lcom/google/vr/sdk/widgets/video/deps/dx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/dx$a;

.field private final c:I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private final e:J

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fK;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/fn;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/di;

.field private final i:[Lcom/google/vr/sdk/widgets/video/deps/dy$a;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

.field private k:[Lcom/google/vr/sdk/widgets/video/deps/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/vr/sdk/widgets/video/deps/cN;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/dF;

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/dF;ILcom/google/vr/sdk/widgets/video/deps/dx$a;ILcom/google/vr/sdk/widgets/video/deps/cJ$a;JLcom/google/vr/sdk/widgets/video/deps/fK;Lcom/google/vr/sdk/widgets/video/deps/fn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->m:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->n:I

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->b:Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    .line 6
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->c:I

    .line 7
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    .line 8
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->e:J

    .line 9
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->f:Lcom/google/vr/sdk/widgets/video/deps/fK;

    .line 10
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->g:Lcom/google/vr/sdk/widgets/video/deps/fn;

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(I)[Lcom/google/vr/sdk/widgets/video/deps/dp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cN;

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-direct {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/cN;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->l:Lcom/google/vr/sdk/widgets/video/deps/cN;

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object p1

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->o:Ljava/util/List;

    .line 14
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 15
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/di;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->h:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 16
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->i:[Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    return-void
.end method

.method private static a(Ljava/util/List;)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/vr/sdk/widgets/video/deps/di;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/dy$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 93
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dy;->b(Ljava/util/List;)[[I

    move-result-object v1

    .line 94
    array-length v2, v1

    .line 95
    new-array v3, v2, [Z

    .line 96
    new-array v4, v2, [Z

    const/4 v5, 0x0

    move v7, v2

    move v6, v5

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v2, :cond_2

    .line 99
    aget-object v9, v1, v6

    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Ljava/util/List;[I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 100
    aput-boolean v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    .line 102
    :cond_0
    aget-object v9, v1, v6

    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/dy;->b(Ljava/util/List;[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 103
    aput-boolean v8, v4, v6

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    :cond_2
    new-array v6, v7, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    .line 107
    new-array v7, v7, [Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    move v9, v5

    move/from16 v17, v9

    :goto_1
    if-ge v9, v2, :cond_7

    .line 110
    aget-object v15, v1, v9

    .line 111
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 112
    array-length v11, v15

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_3

    aget v13, v15, v12

    .line 113
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v13, v13, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 115
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [Lcom/google/vr/sdk/widgets/video/deps/m;

    move v13, v5

    :goto_3
    if-ge v13, v11, :cond_4

    .line 117
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/vr/sdk/widgets/video/deps/dK;

    iget-object v14, v14, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 119
    :cond_4
    aget v10, v15, v5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/google/vr/sdk/widgets/video/deps/dE;

    .line 121
    aget-boolean v18, v3, v9

    .line 122
    aget-boolean v19, v4, v9

    .line 123
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-direct {v10, v12}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object v10, v6, v17

    add-int/lit8 v20, v17, 0x1

    .line 124
    new-instance v21, Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    iget v11, v14, Lcom/google/vr/sdk/widgets/video/deps/dE;->c:I

    const/16 v16, 0x1

    move-object/from16 v10, v21

    move-object v12, v15

    move/from16 v13, v17

    move-object v5, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v10 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/dy$a;-><init>(I[IIZZZ)V

    aput-object v21, v7, v17

    const/4 v15, 0x0

    if-eqz v18, :cond_5

    .line 126
    iget v10, v5, Lcom/google/vr/sdk/widgets/video/deps/dE;->b:I

    const/16 v11, 0x10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":emsg"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const-string v12, "application/x-emsg"

    invoke-static {v10, v12, v15, v11, v15}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v10

    .line 127
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/dh;

    new-array v12, v8, [Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-direct {v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object v11, v6, v20

    add-int/lit8 v18, v20, 0x1

    .line 128
    new-instance v21, Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    const/4 v11, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move/from16 v13, v17

    move-object v8, v15

    move/from16 v15, v16

    move/from16 v16, v23

    invoke-direct/range {v10 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/dy$a;-><init>(I[IIZZZ)V

    aput-object v21, v7, v20

    move/from16 v20, v18

    goto :goto_4

    :cond_5
    move-object v8, v15

    :goto_4
    if-eqz v19, :cond_6

    .line 130
    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dE;->b:I

    const/16 v10, 0x12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":cea608"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "application/cea-608"

    const/4 v15, 0x0

    invoke-static {v5, v10, v15, v8}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v5

    .line 131
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/dh;

    const/4 v14, 0x1

    new-array v10, v14, [Lcom/google/vr/sdk/widgets/video/deps/m;

    aput-object v5, v10, v15

    invoke-direct {v8, v10}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object v8, v6, v20

    add-int/lit8 v5, v20, 0x1

    .line 132
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    const/4 v11, 0x3

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v8

    move-object/from16 v12, v22

    move/from16 v13, v17

    move/from16 v17, v14

    move/from16 v14, v16

    move/from16 v21, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v10 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/dy$a;-><init>(I[IIZZZ)V

    aput-object v8, v7, v20

    move/from16 v20, v5

    goto :goto_5

    :cond_6
    const/16 v17, 0x1

    const/16 v21, 0x0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v17

    move/from16 v17, v20

    move/from16 v5, v21

    goto/16 :goto_1

    .line 134
    :cond_7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-direct {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dy$a;Lcom/google/vr/sdk/widgets/video/deps/fi;J)Lcom/google/vr/sdk/widgets/video/deps/dp;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dy$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/fi;",
            "J)",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 167
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v5, 0x4

    aput v5, v2, v4

    const/4 v4, 0x1

    .line 170
    :cond_0
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->f:Z

    if-eqz v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x3

    .line 172
    aput v7, v2, v4

    move v4, v6

    :cond_1
    if-ge v4, v1, :cond_2

    .line 174
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v2, v1

    .line 175
    :cond_2
    iget-object v11, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->b:Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget-object v12, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->f:Lcom/google/vr/sdk/widgets/video/deps/fK;

    iget-object v13, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->m:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget v14, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->n:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->a:[I

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->b:I

    iget-wide v6, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->e:J

    move-object/from16 v16, p2

    move/from16 v17, v1

    move-wide/from16 v18, v6

    move/from16 v20, v3

    move/from16 v21, v5

    invoke-interface/range {v11 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fK;Lcom/google/vr/sdk/widgets/video/deps/dF;I[ILcom/google/vr/sdk/widgets/video/deps/fi;IJZZ)Lcom/google/vr/sdk/widgets/video/deps/dx;

    move-result-object v3

    .line 176
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/dp;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->b:I

    iget-object v5, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->g:Lcom/google/vr/sdk/widgets/video/deps/fn;

    iget v8, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->c:I

    iget-object v9, v10, Lcom/google/vr/sdk/widgets/video/deps/dy;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-object v0, v11

    move-object/from16 v4, p0

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dp;-><init>(I[ILcom/google/vr/sdk/widgets/video/deps/dq;Lcom/google/vr/sdk/widgets/video/deps/dc$a;Lcom/google/vr/sdk/widgets/video/deps/fn;JILcom/google/vr/sdk/widgets/video/deps/cJ$a;)V

    return-object v11
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/db;)V
    .locals 1

    .line 203
    instance-of v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    if-eqz v0, :cond_0

    .line 204
    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->a()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;[I)Z"
        }
    .end annotation

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 185
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    move v4, v1

    .line 186
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 188
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dK;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static a(I)[Lcom/google/vr/sdk/widgets/video/deps/dp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx;",
            ">;"
        }
    .end annotation

    .line 202
    new-array p0, p0, [Lcom/google/vr/sdk/widgets/video/deps/dp;

    return-object p0
.end method

.method private static b(Ljava/util/List;[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;[I)Z"
        }
    .end annotation

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 194
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dE;->e:Ljava/util/List;

    move v4, v1

    .line 195
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 196
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/dH;

    .line 197
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dH;->a:Ljava/lang/String;

    const-string/jumbo v6, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static b(Ljava/util/List;)[[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;)[[I"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 138
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dE;->b:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-array v3, v0, [[I

    .line 141
    new-array v4, v0, [Z

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v5, v0, :cond_4

    .line 144
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 146
    aput-boolean v7, v4, v5

    .line 148
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/dE;->f:Ljava/util/List;

    .line 149
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/dy;->c(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dH;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    new-array v7, v7, [I

    aput v5, v7, v2

    .line 151
    aput-object v7, v3, v6

    move v6, v8

    goto :goto_3

    .line 152
    :cond_2
    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 153
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 154
    aput v5, v9, v2

    move v10, v2

    .line 155
    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 156
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 157
    aput-boolean v7, v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 158
    aput v11, v9, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 160
    aput-object v9, v3, v6

    move v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v6, v0, :cond_5

    .line 163
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_5
    return-object v3
.end method

.method private static c(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dH;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dH;

    .line 180
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->a:Ljava/lang/String;

    const-string/jumbo v3, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J
    .locals 9

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 38
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    .line 39
    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dp;

    if-eqz v3, :cond_2

    .line 40
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dp;

    .line 41
    aget-object v6, p1, v2

    if-eqz v6, :cond_1

    aget-boolean v6, p2, v2

    if-nez v6, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->h:Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/dp;->b()V

    .line 43
    aput-object v4, p3, v2

    .line 46
    :cond_2
    :goto_2
    aget-object v3, p3, v2

    if-nez v3, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    .line 47
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->h:Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v3

    .line 48
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->i:[Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    aget-object v4, v4, v3

    .line 49
    iget-boolean v6, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->c:Z

    if-eqz v6, :cond_3

    .line 50
    aget-object v6, p1, v2

    invoke-direct {p0, v4, v6, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dy$a;Lcom/google/vr/sdk/widgets/video/deps/fi;J)Lcom/google/vr/sdk/widgets/video/deps/dp;

    move-result-object v4

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    aput-object v4, p3, v2

    .line 53
    aput-boolean v5, p4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 55
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_c

    .line 56
    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    if-nez v3, :cond_5

    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/vr/sdk/widgets/video/deps/cQ;

    if-eqz v3, :cond_7

    :cond_5
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    aget-boolean v3, p2, v2

    if-nez v3, :cond_7

    .line 57
    :cond_6
    aget-object v3, p3, v2

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    .line 58
    aput-object v4, p3, v2

    .line 59
    :cond_7
    aget-object v3, p1, v2

    if-eqz v3, :cond_b

    .line 60
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->h:Lcom/google/vr/sdk/widgets/video/deps/di;

    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v3

    .line 61
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->i:[Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    aget-object v3, v6, v3

    .line 62
    iget-boolean v6, v3, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->c:Z

    if-nez v6, :cond_b

    .line 63
    iget v6, v3, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->d:I

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 65
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/dp;

    .line 66
    aget-object v7, p3, v2

    if-nez v6, :cond_8

    .line 67
    instance-of v8, v7, Lcom/google/vr/sdk/widgets/video/deps/cQ;

    goto :goto_4

    .line 68
    :cond_8
    instance-of v8, v7, Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/dp;

    if-ne v8, v6, :cond_9

    move v8, v5

    goto :goto_4

    :cond_9
    move v8, v1

    :goto_4
    if-nez v8, :cond_b

    .line 70
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    if-nez v6, :cond_a

    .line 71
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cQ;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/cQ;-><init>()V

    goto :goto_5

    .line 72
    :cond_a
    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->b:I

    invoke-virtual {v6, p5, p6, v3}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(JI)Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    move-result-object v3

    :goto_5
    aput-object v3, p3, v2

    .line 73
    aput-boolean v5, p4, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 75
    :cond_c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(I)[Lcom/google/vr/sdk/widgets/video/deps/dp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    .line 76
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cN;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cN;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->l:Lcom/google/vr/sdk/widgets/video/deps/cN;

    return-wide p5
.end method

.method public a(J)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 80
    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dp;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->j:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    .line 32
    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dF;I)V
    .locals 4

    .line 18
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->m:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 19
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->n:I

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->o:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    if-eqz v0, :cond_1

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 23
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a()Lcom/google/vr/sdk/widgets/video/deps/dq;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dx;

    invoke-interface {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(Lcom/google/vr/sdk/widgets/video/deps/dF;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->j:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 206
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dp;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->j:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public a_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->f:Lcom/google/vr/sdk/widgets/video/deps/fK;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fK;->d()V

    return-void
.end method

.method public b(J)J
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dp;->d(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->h:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-object v0
.end method

.method public c()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->l:Lcom/google/vr/sdk/widgets/video/deps/cN;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cN;->c(J)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->l:Lcom/google/vr/sdk/widgets/video/deps/cN;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cN;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->l:Lcom/google/vr/sdk/widgets/video/deps/cN;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cN;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dy;->k:[Lcom/google/vr/sdk/widgets/video/deps/dp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 28
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/dp;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
