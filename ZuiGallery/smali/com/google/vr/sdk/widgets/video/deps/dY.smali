.class public final Lcom/google/vr/sdk/widgets/video/deps/dY;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cV;
.implements Lcom/google/vr/sdk/widgets/video/deps/eb$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/ek$b;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ek;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/dV;

.field private final c:I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/fn;

.field private final f:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/vr/sdk/widgets/video/deps/db;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/ec;

.field private final h:Landroid/os/Handler;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

.field private j:I

.field private k:Lcom/google/vr/sdk/widgets/video/deps/di;

.field private l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

.field private m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/cN;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/dV;ILcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->b:Lcom/google/vr/sdk/widgets/video/deps/dV;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->c:I

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->e:Lcom/google/vr/sdk/widgets/video/deps/fn;

    .line 7
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->f:Ljava/util/IdentityHashMap;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ec;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ec;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->g:Lcom/google/vr/sdk/widgets/video/deps/ec;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->h:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/eb;

    .line 10
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/eb;

    .line 11
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    return-void
.end method

.method private a(I[Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/eb;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;J)",
            "Lcom/google/vr/sdk/widgets/video/deps/eb;"
        }
    .end annotation

    move-object v10, p0

    .line 170
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dU;

    iget-object v1, v10, Lcom/google/vr/sdk/widgets/video/deps/dY;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v3, v10, Lcom/google/vr/sdk/widgets/video/deps/dY;->b:Lcom/google/vr/sdk/widgets/video/deps/dV;

    iget-object v4, v10, Lcom/google/vr/sdk/widgets/video/deps/dY;->g:Lcom/google/vr/sdk/widgets/video/deps/ec;

    move-object v0, v6

    move-object v2, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dU;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ek;[Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/dV;Lcom/google/vr/sdk/widgets/video/deps/ec;Ljava/util/List;)V

    .line 171
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/eb;

    iget-object v4, v10, Lcom/google/vr/sdk/widgets/video/deps/dY;->e:Lcom/google/vr/sdk/widgets/video/deps/fn;

    iget v8, v10, Lcom/google/vr/sdk/widgets/video/deps/dY;->c:I

    iget-object v9, v10, Lcom/google/vr/sdk/widgets/video/deps/dY;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-object v0, v11

    move v1, p1

    move-object v2, p0

    move-object v3, v6

    move-wide/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/eb$a;Lcom/google/vr/sdk/widgets/video/deps/dU;Lcom/google/vr/sdk/widgets/video/deps/fn;JLcom/google/vr/sdk/widgets/video/deps/m;ILcom/google/vr/sdk/widgets/video/deps/cJ$a;)V

    return-object v11
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;Ljava/lang/String;)Z
    .locals 4

    .line 178
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "(\\s*,\\s*)|(\\s*$)"

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 182
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 183
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private d(J)V
    .locals 14

    move-object v7, p0

    .line 125
    iget-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b()Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move v4, v8

    .line 129
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 130
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 131
    iget-object v6, v5, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-gtz v6, :cond_1

    const-string v6, "avc"

    invoke-static {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dY;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "mp4a"

    .line 133
    invoke-static {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dY;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 134
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_1
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v1, v2

    goto :goto_3

    .line 138
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 139
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 140
    :cond_5
    :goto_3
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->b:Ljava/util/List;

    .line 141
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->c:Ljava/util/List;

    .line 142
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    add-int/2addr v2, v11

    .line 143
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/eb;

    iput-object v2, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    .line 145
    array-length v2, v2

    iput v2, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->j:I

    .line 146
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v11

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 148
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 149
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->e:Ljava/util/List;

    move-object v0, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dY;->a(I[Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/eb;

    move-result-object v0

    .line 150
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    aput-object v0, v1, v8

    .line 151
    invoke-virtual {v0, v11}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    move v12, v8

    move v13, v11

    .line 153
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_6

    const/4 v1, 0x1

    new-array v2, v11, [Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 155
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    aput-object v0, v2, v8

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-wide v5, p1

    .line 156
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dY;->a(I[Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/eb;

    move-result-object v0

    .line 157
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    add-int/lit8 v2, v13, 0x1

    aput-object v0, v1, v13

    .line 158
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    add-int/lit8 v12, v12, 0x1

    move v13, v2

    goto :goto_4

    :cond_6
    move v9, v8

    .line 160
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 161
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    const/4 v1, 0x3

    new-array v2, v11, [Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    aput-object v12, v2, v8

    const/4 v3, 0x0

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-wide v5, p1

    .line 164
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dY;->a(I[Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/eb;

    move-result-object v0

    .line 165
    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 166
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    add-int/lit8 v2, v13, 0x1

    aput-object v0, v1, v13

    add-int/lit8 v9, v9, 0x1

    move v13, v2

    goto :goto_5

    .line 168
    :cond_7
    iget-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    iput-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    return-void
.end method

.method private i()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->k:Lcom/google/vr/sdk/widgets/video/deps/di;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->i:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    goto :goto_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 175
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 28
    array-length v3, v1

    new-array v3, v3, [I

    .line 29
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 30
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 31
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_1

    .line 32
    :cond_0
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->f:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 33
    aput v8, v4, v6

    .line 34
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 35
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v7

    const/4 v9, 0x0

    .line 36
    :goto_2
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 37
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/eb;->f()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 38
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 43
    :cond_3
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 44
    array-length v6, v1

    new-array v7, v6, [Lcom/google/vr/sdk/widgets/video/deps/db;

    .line 45
    array-length v8, v1

    new-array v8, v8, [Lcom/google/vr/sdk/widgets/video/deps/db;

    .line 46
    array-length v9, v1

    new-array v14, v9, [Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 48
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v9, v9

    new-array v15, v9, [Lcom/google/vr/sdk/widgets/video/deps/eb;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    .line 49
    :goto_4
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v9, v9

    if-ge v13, v9, :cond_10

    const/4 v9, 0x0

    .line 50
    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 51
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    .line 52
    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 54
    :cond_6
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    aget-object v11, v9, v13

    move-object v9, v11

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, p2

    move v2, v12

    move-object v12, v8

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v13, p4

    move/from16 v20, v2

    move-object/from16 v19, v14

    move-object v2, v15

    move-wide/from16 v14, p5

    move/from16 v16, v17

    .line 55
    invoke-virtual/range {v9 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJZ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 57
    :goto_7
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_b

    .line 58
    aget v12, v4, v10

    if-ne v12, v6, :cond_8

    .line 59
    aget-object v11, v8, v10

    if-eqz v11, :cond_7

    move v11, v13

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 60
    aget-object v11, v8, v10

    aput-object v11, v7, v10

    .line 62
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->f:Ljava/util/IdentityHashMap;

    aget-object v12, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    goto :goto_a

    .line 63
    :cond_8
    aget v12, v3, v10

    if-ne v12, v6, :cond_a

    .line 64
    aget-object v12, v8, v10

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_e

    .line 67
    aput-object v5, v2, v20

    add-int/lit8 v12, v20, 0x1

    if-nez v20, :cond_d

    .line 69
    invoke-virtual {v5, v13}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Z)V

    if-nez v9, :cond_c

    .line 70
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v10, v9

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-eq v5, v9, :cond_f

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 71
    :goto_b
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->g:Lcom/google/vr/sdk/widgets/video/deps/ec;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ec;->a()V

    move/from16 v17, v13

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    .line 73
    invoke-virtual {v5, v10}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Z)V

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    move/from16 v12, v20

    :cond_f
    :goto_c
    add-int/lit8 v13, v6, 0x1

    move-object v15, v2

    move/from16 v6, v18

    move-object/from16 v14, v19

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_10
    move-object v5, v2

    move-object v2, v15

    const/4 v10, 0x0

    .line 75
    invoke-static {v7, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/vr/sdk/widgets/video/deps/eb;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    .line 77
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cN;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cN;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dY;->n:Lcom/google/vr/sdk/widgets/video/deps/cN;

    return-wide p5
.end method

.method public a(J)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 80
    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->i:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/ek$b;)V

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dY;->d(J)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 187
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/eb;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dY;->a(Lcom/google/vr/sdk/widgets/video/deps/eb;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eb;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->k:Lcom/google/vr/sdk/widgets/video/deps/di;

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->i:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->d(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dY;->i()V

    return-void
.end method

.method public a_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(J)J
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 88
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->m:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 90
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->g:Lcom/google/vr/sdk/widgets/video/deps/ec;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ec;->a()V

    :cond_1
    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->k:Lcom/google/vr/sdk/widgets/video/deps/di;

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
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->n:Lcom/google/vr/sdk/widgets/video/deps/cN;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cN;->c(J)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->n:Lcom/google/vr/sdk/widgets/video/deps/cN;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cN;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->n:Lcom/google/vr/sdk/widgets/video/deps/cN;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cN;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b(Lcom/google/vr/sdk/widgets/video/deps/ek$b;)V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->h()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 11

    .line 95
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->j:I

    if-lez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 99
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/eb;->f()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v5

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    new-array v0, v4, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    .line 103
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->l:[Lcom/google/vr/sdk/widgets/video/deps/eb;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 104
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/eb;->f()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v7

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/di;->b:I

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 106
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/eb;->f()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_3
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->k:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dY;->i:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public h()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dY;->i()V

    return-void
.end method
