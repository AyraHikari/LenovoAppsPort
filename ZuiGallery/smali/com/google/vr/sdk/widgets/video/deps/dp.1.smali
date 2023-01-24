.class public Lcom/google/vr/sdk/widgets/video/deps/dp;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/db;
.implements Lcom/google/vr/sdk/widgets/video/deps/dc;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/dq;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/db;",
        "Lcom/google/vr/sdk/widgets/video/deps/dc;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/dm;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$d;"
    }
.end annotation


# instance fields
.field a:J

.field b:Z

.field private final c:I

.field private final d:[I

.field private final e:[Z

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/dc$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private final i:I

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/do;

.field private final l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/dk;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dk;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/da;

.field private final o:[Lcom/google/vr/sdk/widgets/video/deps/da;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/dl;

.field private q:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private r:J


# direct methods
.method public constructor <init>(I[ILcom/google/vr/sdk/widgets/video/deps/dq;Lcom/google/vr/sdk/widgets/video/deps/dc$a;Lcom/google/vr/sdk/widgets/video/deps/fn;JILcom/google/vr/sdk/widgets/video/deps/cJ$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[ITT;",
            "Lcom/google/vr/sdk/widgets/video/deps/dc$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "TT;>;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/fn;",
            "JI",
            "Lcom/google/vr/sdk/widgets/video/deps/cJ$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->d:[I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    .line 6
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    .line 7
    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->i:I

    .line 8
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 9
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-direct {p3}, Lcom/google/vr/sdk/widgets/video/deps/do;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->k:Lcom/google/vr/sdk/widgets/video/deps/do;

    .line 10
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    .line 11
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->m:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move p4, p3

    goto :goto_0

    .line 12
    :cond_0
    array-length p4, p2

    .line 13
    :goto_0
    new-array p8, p4, [Lcom/google/vr/sdk/widgets/video/deps/da;

    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 14
    new-array p8, p4, [Z

    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->e:[Z

    add-int/lit8 p8, p4, 0x1

    .line 15
    new-array p9, p8, [I

    .line 16
    new-array p8, p8, [Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 17
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-direct {v0, p5}, Lcom/google/vr/sdk/widgets/video/deps/da;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 18
    aput p1, p9, p3

    .line 19
    aput-object v0, p8, p3

    :goto_1
    if-ge p3, p4, :cond_1

    .line 21
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-direct {p1, p5}, Lcom/google/vr/sdk/widgets/video/deps/da;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aput-object p1, v0, p3

    add-int/lit8 v0, p3, 0x1

    .line 23
    aput-object p1, p8, v0

    .line 24
    aget p1, p2, p3

    aput p1, p9, v0

    move p3, v0

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dl;

    invoke-direct {p1, p9, p8}, Lcom/google/vr/sdk/widgets/video/deps/dl;-><init>([I[Lcom/google/vr/sdk/widgets/video/deps/da;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->p:Lcom/google/vr/sdk/widgets/video/deps/dl;

    .line 27
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    .line 28
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:J

    return-void
.end method

.method private a(I)V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dk;->a(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dk;

    .line 179
    iget-object v7, p1, Lcom/google/vr/sdk/widgets/video/deps/dk;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 180
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->q:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v7, v0}, Lcom/google/vr/sdk/widgets/video/deps/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/dk;->d:I

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/dk;->e:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/dk;->f:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V

    .line 182
    :cond_1
    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->q:Lcom/google/vr/sdk/widgets/video/deps/m;

    :cond_2
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dm;)Z
    .locals 0

    .line 172
    instance-of p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dk;

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dp;)[Z
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->e:[Z

    return-object p0
.end method

.method private b(I)Z
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return v1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dk;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dk;->g:J

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dk;

    .line 188
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dk;->f:J

    .line 189
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dk;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(I)V

    move p1, v1

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v3, v2

    if-ge p1, v3, :cond_2

    .line 192
    aget-object v2, v2, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dk;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(I)V

    goto :goto_0

    .line 194
    :cond_2
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    .line 195
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(IJJ)V

    const/4 p1, 0x1

    return p1
.end method

.method private e(J)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->m:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dq;->a(JLjava/util/List;)I

    move-result p1

    const/4 p2, 0x1

    .line 170
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dp;->b(I)Z

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->l()I

    .line 102
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->l()I

    move-result p1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 106
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->j()V

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJLjava/io/IOException;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v17

    .line 125
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v15

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 128
    :goto_1
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    move-object/from16 v13, p6

    invoke-interface {v5, v1, v4, v13}, Lcom/google/vr/sdk/widgets/video/deps/dq;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;ZLjava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dk;

    if-ne v2, v1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v15

    .line 132
    :goto_2
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 133
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v2, v15}, Lcom/google/vr/sdk/widgets/video/deps/dk;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(I)V

    move v4, v15

    .line 134
    :goto_3
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 135
    aget-object v5, v5, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/dk;->a(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(I)V

    goto :goto_3

    .line 137
    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:J

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    :cond_4
    move/from16 v21, v3

    goto :goto_4

    :cond_5
    move/from16 v21, v15

    .line 139
    :goto_4
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    move-wide/from16 v13, p2

    move v1, v15

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v21

    invoke-virtual/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v21, :cond_6

    .line 141
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    const/4 v1, 0x2

    :cond_6
    return v1
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 197
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 8

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(I)V

    .line 96
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    .line 98
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->j()V

    :cond_1
    return p1
.end method

.method public a(JI)Lcom/google/vr/sdk/widgets/video/deps/dp$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/vr/sdk/widgets/video/deps/dp$a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->d:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 36
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->e:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 37
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->e:[Z

    aput-boolean v1, p3, v0

    .line 38
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/da;->i()V

    .line 39
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    .line 40
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dp$a;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/dp$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dp;Lcom/google/vr/sdk/widgets/video/deps/dp;Lcom/google/vr/sdk/widgets/video/deps/da;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 108
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dq;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;)V

    .line 109
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v17

    .line 111
    invoke-virtual/range {v2 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    .line 112
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 114
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v17

    .line 116
    invoke-virtual/range {v2 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 118
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    .line 119
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 120
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->g:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 199
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 198
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJZ)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->k()V

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 80
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 4

    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 31
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->e:[Z

    aget-boolean v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(JZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    .line 90
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dq;->a()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c(J)Z
    .locals 18

    move-object/from16 v0, p0

    .line 144
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->f:Lcom/google/vr/sdk/widgets/video/deps/dq;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dv;

    .line 147
    :goto_0
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move-wide/from16 v4, p1

    :goto_1
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->k:Lcom/google/vr/sdk/widgets/video/deps/do;

    .line 148
    invoke-interface {v1, v3, v4, v5, v8}, Lcom/google/vr/sdk/widgets/video/deps/dq;->a(Lcom/google/vr/sdk/widgets/video/deps/dv;JLcom/google/vr/sdk/widgets/video/deps/do;)V

    .line 149
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->k:Lcom/google/vr/sdk/widgets/video/deps/do;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/do;->b:Z

    .line 150
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->k:Lcom/google/vr/sdk/widgets/video/deps/do;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/do;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    .line 151
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->k:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/do;->a()V

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 153
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    .line 154
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    return v4

    :cond_3
    if-nez v3, :cond_4

    return v2

    .line 158
    :cond_4
    invoke-direct {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    .line 160
    move-object v1, v3

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dk;

    .line 161
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->p:Lcom/google/vr/sdk/widgets/video/deps/dl;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dk;->a(Lcom/google/vr/sdk/widgets/video/deps/dl;)V

    .line 162
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->i:I

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    move-result-wide v16

    .line 164
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->h:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v6, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v7, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->c:I

    iget-object v9, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v10, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v11, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v12, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v14, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    invoke-virtual/range {v5 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V

    return v4

    :cond_6
    :goto_2
    return v2
.end method

.method public d()J
    .locals 4

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    return-wide v0

    .line 48
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:J

    .line 49
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dk;

    .line 50
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/dk;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 53
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dk;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)V
    .locals 6

    .line 55
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:J

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 57
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->e()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 58
    :goto_0
    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->j()V

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 63
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->i()V

    .line 64
    invoke-virtual {v5, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(JZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 66
    :cond_2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    .line 67
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    .line 68
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->b()V

    goto :goto_4

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    .line 72
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p1

    :goto_3
    if-ge v2, p2, :cond_4

    aget-object v0, p1, v2

    .line 73
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public e()J
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    return-wide v0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dk;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dk;->g:J

    :goto_0
    return-wide v0
.end method

.method f()Z
    .locals 4

    .line 173
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->r:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->n:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp;->o:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 85
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
