.class public final Lcom/google/vr/sdk/widgets/video/deps/aZ;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;
.implements Lcom/google/vr/sdk/widgets/video/deps/az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aZ$a;,
        Lcom/google/vr/sdk/widgets/video/deps/aZ$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I

.field private static final i:J = 0x40000L


# instance fields
.field private final j:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private s:I

.field private t:I

.field private u:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aZ$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "qt  "

    .line 228
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/gy;->a:[B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aV:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    .line 95
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->G:I

    if-ne v2, v3, :cond_1

    .line 96
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 98
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    goto :goto_0

    .line 102
    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    if-eq p1, v1, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->d()V

    :cond_3
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/aw;-><init>()V

    .line 119
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aF:I

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->x:Z

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Z)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    .line 124
    :goto_1
    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 125
    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    .line 126
    iget v12, v11, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->I:I

    if-eq v12, v13, :cond_2

    goto :goto_2

    .line 128
    :cond_2
    sget v12, Lcom/google/vr/sdk/widgets/video/deps/aQ;->H:I

    invoke-virtual {v1, v12}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v13

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    iget-boolean v12, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->x:Z

    move/from16 v17, v12

    move-object v12, v11

    invoke-static/range {v12 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aQ$b;JLcom/google/vr/sdk/widgets/video/deps/aa;Z)Lcom/google/vr/sdk/widgets/video/deps/bc;

    move-result-object v12

    if-nez v12, :cond_3

    goto :goto_2

    .line 131
    :cond_3
    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->J:I

    invoke-virtual {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v11

    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->K:I

    .line 132
    invoke-virtual {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v11

    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->L:I

    invoke-virtual {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v11

    .line 133
    invoke-static {v12, v11, v3}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aw;)Lcom/google/vr/sdk/widgets/video/deps/bf;

    move-result-object v11

    .line 134
    iget v13, v11, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:I

    if-nez v13, :cond_4

    :goto_2
    const/4 v11, 0x0

    goto :goto_3

    .line 136
    :cond_4
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->u:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    .line 137
    invoke-interface {v14, v10, v15}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v14

    invoke-direct {v13, v12, v11, v14}, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/bf;Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 138
    iget v14, v11, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    add-int/lit8 v14, v14, 0x1e

    .line 139
    iget-object v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v15, v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v14

    .line 140
    iget v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    const/4 v5, 0x1

    if-ne v15, v5, :cond_6

    .line 141
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 142
    iget v5, v3, Lcom/google/vr/sdk/widgets/video/deps/aw;->b:I

    iget v15, v3, Lcom/google/vr/sdk/widgets/video/deps/aw;->c:I

    invoke-virtual {v14, v5, v15}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(II)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v14

    :cond_5
    if-eqz v4, :cond_6

    .line 144
    invoke-virtual {v14, v4}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v14

    .line 145
    :cond_6
    iget-object v5, v13, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v5, v14}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 146
    iget-wide v14, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->g:J

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 147
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v7, v11, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:[J

    const/4 v11, 0x0

    aget-wide v12, v7, v11

    cmp-long v7, v12, v8

    if-gez v7, :cond_7

    move-wide v6, v5

    move-wide v8, v12

    goto :goto_3

    :cond_7
    move-wide v6, v5

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 152
    :cond_8
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->w:J

    .line 153
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    .line 154
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->u:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 155
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->u:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    .line 225
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->W:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->H:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->X:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ar:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->as:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->at:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->au:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->av:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aw:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ax:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ay:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->f:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aF:I

    if-ne p0, v0, :cond_0

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

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 3

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 107
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aZ;->h:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aZ;->h:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static b(I)Z
    .locals 1

    .line 226
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->I:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->J:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->K:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->L:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->U:I

    if-ne p0, v0, :cond_0

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

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 46
    :cond_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->o:I

    .line 50
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 53
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 56
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aV:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 60
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    .line 61
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    .line 63
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->o:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    add-long/2addr v2, v4

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 65
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->o:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 66
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    .line 67
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->a(J)V

    goto :goto_3

    .line 68
    :cond_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->d()V

    goto :goto_3

    .line 69
    :cond_6
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->o:I

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->a(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 70
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    if-ne p1, v2, :cond_7

    move p1, v1

    goto :goto_1

    :cond_7
    move p1, v3

    :goto_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 71
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_8

    move p1, v1

    goto :goto_2

    :cond_8
    move p1, v3

    :goto_2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 72
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 73
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 76
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    :goto_3
    return v1

    .line 62
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->p:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 79
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 81
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 82
    iget-object p2, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 83
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->o:I

    sget p2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->f:I

    if-ne p1, p2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->x:Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->o:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gA;)V

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 88
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    :cond_2
    :goto_0
    move p1, v6

    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    move p1, v5

    .line 91
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->a(J)V

    if-eqz p1, :cond_4

    .line 92
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    aget-object v0, v1, v0

    .line 161
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 162
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->d:I

    .line 163
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:[J

    aget-wide v3, v3, v2

    .line 164
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:[I

    aget v5, v5, v2

    .line 165
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/bc;->i:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const-wide/16 v6, 0x8

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, -0x8

    .line 168
    :cond_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v6

    sub-long v6, v3, v6

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    int-to-long v9, v9

    add-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_6

    const-wide/32 v9, 0x40000

    cmp-long v9, v6, v9

    if-ltz v9, :cond_2

    goto/16 :goto_2

    :cond_2
    long-to-int p2, v6

    .line 172
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 173
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    const/4 v9, 0x0

    if-eqz p2, :cond_4

    .line 174
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 175
    aput-byte v9, p2, v9

    .line 176
    aput-byte v9, p2, v8

    const/4 v3, 0x2

    .line 177
    aput-byte v9, p2, v3

    .line 178
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    .line 179
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    const/4 v4, 0x4

    rsub-int/lit8 v3, v3, 0x4

    .line 180
    :goto_0
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    if-ge v6, v5, :cond_5

    .line 181
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    if-nez v6, :cond_3

    .line 182
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v6, v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 183
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 184
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v6

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    .line 185
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 186
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v1, v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 187
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    add-int/2addr v5, v3

    goto :goto_0

    .line 189
    :cond_3
    invoke-interface {v1, p1, v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result v6

    .line 190
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    .line 191
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    goto :goto_0

    .line 194
    :cond_4
    :goto_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    if-ge p2, v5, :cond_5

    sub-int p2, v5, p2

    .line 195
    invoke-interface {v1, p1, p2, v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result p2

    .line 196
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    .line 197
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    goto :goto_1

    .line 199
    :cond_5
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:[J

    aget-wide p1, p1, v2

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:[I

    aget v4, v3, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 200
    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->d:I

    add-int/2addr p1, v8

    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->d:I

    .line 201
    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    .line 202
    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    return v9

    .line 170
    :cond_6
    :goto_2
    iput-wide v3, p2, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    return v8
.end method

.method private c(J)V
    .locals 7

    .line 217
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 218
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    .line 219
    invoke-virtual {v4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 221
    invoke-virtual {v4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->b(J)I

    move-result v5

    .line 222
    :cond_0
    iput v5, v3, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    .line 41
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    return-void
.end method

.method private e()I
    .locals 7

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 206
    :goto_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 207
    aget-object v4, v4, v3

    .line 208
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->d:I

    .line 209
    iget-object v6, v4, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:I

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:[J

    aget-wide v4, v4, v5

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    move v0, v3

    move-wide v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 20
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->n:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->c(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result p1

    return p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->b(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 21
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public a(JJ)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->q:I

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->s:I

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->t:I

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->d()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    if-eqz p1, :cond_1

    .line 17
    invoke-direct {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/aZ;->c(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->u:Lcom/google/vr/sdk/widgets/video/deps/au;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bb;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->w:J

    return-wide v0
.end method

.method public b(J)J
    .locals 8

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aZ;->v:[Lcom/google/vr/sdk/widgets/video/deps/aZ$a;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 31
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aZ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    .line 32
    invoke-virtual {v5, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 34
    invoke-virtual {v5, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->b(J)I

    move-result v6

    .line 35
    :cond_0
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:[J

    aget-wide v5, v5, v6

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    move-wide v2, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public c()V
    .locals 0

    return-void
.end method
