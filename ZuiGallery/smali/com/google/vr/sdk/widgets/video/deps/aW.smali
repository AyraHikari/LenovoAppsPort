.class public final Lcom/google/vr/sdk/widgets/video/deps/aW;
.super Ljava/lang/Object;
.source "HeifExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;
.implements Lcom/google/vr/sdk/widgets/video/deps/az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aW$a;,
        Lcom/google/vr/sdk/widgets/video/deps/aW$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final e:Ljava/lang/String; = "HeifExtractor"

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:J = 0x40000L


# instance fields
.field private A:J

.field private B:Z

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/vr/sdk/widgets/video/deps/aX;",
            ">;"
        }
    .end annotation
.end field

.field private D:J

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final q:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:J

.field private u:I

.field private v:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private w:I

.field private x:I

.field private y:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aW$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aW$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "qt  "

    .line 320
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->i:I

    const-string v0, "ispe"

    .line 321
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->j:I

    const-string v0, "irot"

    .line 322
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->k:I

    const-string v0, "Exif"

    .line 323
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->l:I

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

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/gy;->a:[B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->n:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->o:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method

.method private static a(ILcom/google/vr/sdk/widgets/video/deps/aX;)Lcom/google/vr/sdk/widgets/video/deps/bc;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 289
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aX;->d:[Lcom/google/vr/sdk/widgets/video/deps/aX$c;

    array-length v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move v12, v3

    move v13, v12

    move/from16 v16, v13

    move-object v7, v5

    move/from16 v17, v6

    move v6, v4

    :goto_0
    const/4 v8, 0x4

    if-ge v6, v2, :cond_4

    aget-object v9, v1, v6

    .line 290
    iget v10, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->a:I

    sget v11, Lcom/google/vr/sdk/widgets/video/deps/aW;->j:I

    if-ne v10, v11, :cond_0

    .line 291
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->b:[B

    invoke-direct {v10, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 292
    invoke-virtual {v10, v8}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 293
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v12

    .line 294
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v13

    goto :goto_1

    .line 295
    :cond_0
    iget v8, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->a:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->N:I

    if-ne v8, v10, :cond_1

    .line 296
    iget-object v7, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->b:[B

    goto :goto_1

    .line 297
    :cond_1
    iget v8, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->a:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aW;->k:I

    if-ne v8, v10, :cond_2

    .line 298
    iget-object v8, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->b:[B

    aget-byte v8, v8, v4

    and-int/lit8 v8, v8, 0x3

    mul-int/lit8 v16, v8, 0x5a

    goto :goto_1

    .line 299
    :cond_2
    iget v8, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->a:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->an:I

    if-ne v8, v10, :cond_3

    .line 300
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/aX$c;->b:[B

    invoke-direct {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 301
    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v9

    .line 302
    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v8

    int-to-float v9, v9

    int-to-float v8, v8

    div-float/2addr v9, v8

    move/from16 v17, v9

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 306
    :cond_4
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aX;->b:I

    sget v2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->i:I

    if-ne v1, v2, :cond_5

    .line 307
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gR;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    .line 308
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/gR;->a:Ljava/util/List;

    const/16 v18, 0x0

    const-string/jumbo v8, "video/hevc"

    invoke-static/range {v7 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    const/4 v8, 0x2

    .line 310
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gR;->b:I

    move/from16 v21, v0

    move-object/from16 v18, v1

    :goto_2
    move v11, v8

    goto :goto_3

    .line 311
    :cond_5
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aX;->b:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aW;->l:I

    if-ne v0, v1, :cond_6

    const-string v0, "application/x-exif"

    .line 312
    invoke-static {v5, v0, v5, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    move-object/from16 v18, v1

    move/from16 v21, v4

    goto :goto_2

    .line 315
    :goto_3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bc;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-array v1, v4, [J

    new-array v2, v4, [J

    move-object v9, v0

    move/from16 v10, p0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    invoke-direct/range {v9 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/bc;-><init>(IIJJJLcom/google/vr/sdk/widgets/video/deps/m;I[Lcom/google/vr/sdk/widgets/video/deps/bd;I[J[J)V

    return-object v0

    :cond_6
    return-object v5
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aV:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    .line 101
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->G:I

    if-ne v2, v3, :cond_1

    .line 102
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    .line 103
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 104
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    goto :goto_0

    .line 105
    :cond_1
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aG:I

    if-ne v2, v3, :cond_2

    .line 106
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->b(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 108
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    goto :goto_0

    .line 112
    :cond_3
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    if-eq p1, v1, :cond_4

    .line 113
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->f()V

    :cond_4
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

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/aw;-><init>()V

    .line 129
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aF:I

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->B:Z

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Z)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 133
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    .line 134
    :goto_1
    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 135
    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    .line 136
    iget v12, v11, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->I:I

    if-eq v12, v13, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    sget v12, Lcom/google/vr/sdk/widgets/video/deps/aQ;->H:I

    invoke-virtual {v1, v12}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v13

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    iget-boolean v12, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->B:Z

    move/from16 v17, v12

    move-object v12, v11

    invoke-static/range {v12 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aQ$b;JLcom/google/vr/sdk/widgets/video/deps/aa;Z)Lcom/google/vr/sdk/widgets/video/deps/bc;

    move-result-object v12

    if-nez v12, :cond_3

    goto :goto_2

    .line 141
    :cond_3
    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->J:I

    invoke-virtual {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v11

    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->K:I

    .line 142
    invoke-virtual {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v11

    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->L:I

    invoke-virtual {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v11

    .line 143
    invoke-static {v12, v11, v3}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aw;)Lcom/google/vr/sdk/widgets/video/deps/bf;

    move-result-object v11

    .line 144
    iget v13, v11, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:I

    if-nez v13, :cond_4

    :goto_2
    const/4 v11, 0x0

    goto :goto_3

    .line 146
    :cond_4
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    .line 147
    invoke-interface {v14, v10, v15}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v14

    invoke-direct {v13, v12, v11, v14}, Lcom/google/vr/sdk/widgets/video/deps/aW$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/bf;Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 148
    iget v14, v11, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    add-int/lit8 v14, v14, 0x1e

    .line 149
    iget-object v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v15, v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v14

    .line 150
    iget v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    const/4 v5, 0x1

    if-ne v15, v5, :cond_6

    .line 151
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 152
    iget v5, v3, Lcom/google/vr/sdk/widgets/video/deps/aw;->b:I

    iget v15, v3, Lcom/google/vr/sdk/widgets/video/deps/aw;->c:I

    invoke-virtual {v14, v5, v15}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(II)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v14

    :cond_5
    if-eqz v4, :cond_6

    .line 154
    invoke-virtual {v14, v4}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v14

    .line 155
    :cond_6
    iget-object v5, v13, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v5, v14}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 156
    iget-wide v14, v12, Lcom/google/vr/sdk/widgets/video/deps/bc;->g:J

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 157
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
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

    .line 162
    :cond_8
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->A:J

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    .line 164
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 165
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    .line 316
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

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aG:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->e:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->b:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->c:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->f:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->d:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aV;->a:I

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

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 116
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 117
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aW;->i:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aW;->i:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aX$b;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    move v5, v2

    .line 171
    :goto_0
    iget-object v6, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 172
    iget-object v6, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    .line 173
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v8, Lcom/google/vr/sdk/widgets/video/deps/aV;->a:I

    if-ne v7, v8, :cond_0

    .line 174
    invoke-static {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/aV;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V

    goto :goto_1

    .line 175
    :cond_0
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v8, Lcom/google/vr/sdk/widgets/video/deps/aV;->c:I

    if-ne v7, v8, :cond_1

    .line 176
    invoke-static {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/aV;->b(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V

    goto :goto_1

    .line 177
    :cond_1
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v8, Lcom/google/vr/sdk/widgets/video/deps/aV;->b:I

    if-ne v7, v8, :cond_2

    .line 178
    invoke-static {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/aV;->c(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V

    goto :goto_1

    .line 179
    :cond_2
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v8, Lcom/google/vr/sdk/widgets/video/deps/aV;->f:I

    if-ne v7, v8, :cond_3

    .line 180
    invoke-static {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/aV;->d(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V

    goto :goto_1

    .line 181
    :cond_3
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v8, Lcom/google/vr/sdk/widgets/video/deps/aV;->d:I

    if-ne v7, v8, :cond_4

    .line 182
    invoke-static {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/aV;->e(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Lcom/google/vr/sdk/widgets/video/deps/aX$b;)V

    goto :goto_1

    .line 183
    :cond_4
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v8, Lcom/google/vr/sdk/widgets/video/deps/aV;->e:I

    if-ne v7, v8, :cond_5

    .line 184
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/aV;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)J

    move-result-wide v3

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 186
    :cond_6
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/aX$b;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->C:Ljava/util/Map;

    .line 187
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->D:J

    .line 188
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/aX;

    .line 192
    invoke-static {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/aW;->a(ILcom/google/vr/sdk/widgets/video/deps/aX;)Lcom/google/vr/sdk/widgets/video/deps/bc;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v1, "HeifExtractor"

    const-string v3, "Couldn\'t get track for metadata item"

    .line 194
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 196
    :cond_7
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/aX;->h:[J

    array-length v5, v5

    .line 197
    new-array v11, v5, [I

    const/4 v6, 0x1

    .line 198
    invoke-static {v11, v6}, Ljava/util/Arrays;->fill([II)V

    move v6, v2

    move v9, v6

    :goto_3
    if-ge v6, v5, :cond_9

    .line 201
    iget-object v7, v1, Lcom/google/vr/sdk/widgets/video/deps/aX;->i:[I

    aget v7, v7, v6

    if-le v7, v9, :cond_8

    move v9, v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 205
    :cond_9
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v7, v1, Lcom/google/vr/sdk/widgets/video/deps/aX;->h:[J

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/aX;->i:[I

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aX;->h:[J

    array-length v1, v1

    new-array v10, v1, [J

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>([J[II[J[I)V

    .line 206
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    .line 207
    invoke-interface {v6, v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v3

    invoke-direct {v1, v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/aW$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/bf;Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 208
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 211
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->A:J

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    .line 213
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 214
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 317
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

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aG:I

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

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 48
    :cond_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    .line 52
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 55
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 58
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aV:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 62
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    .line 63
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    .line 65
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 67
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v4, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 68
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    .line 69
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    add-long/2addr v2, v4

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 72
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 73
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aW;->a(J)V

    goto :goto_3

    .line 74
    :cond_6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->f()V

    goto :goto_3

    .line 75
    :cond_7
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aW;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 76
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    if-ne p1, v2, :cond_8

    move p1, v1

    goto :goto_1

    :cond_8
    move p1, v3

    :goto_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 77
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v3

    :goto_2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 78
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 79
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 82
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    :goto_3
    return v1

    .line 64
    :cond_b
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

    .line 84
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->t:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 85
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 87
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 88
    iget-object p2, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 89
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    sget p2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->f:I

    if-ne p1, p2, :cond_0

    .line 90
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aW;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->B:Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->s:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gA;)V

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 94
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    :cond_2
    :goto_0
    move p1, v6

    goto :goto_1

    .line 95
    :cond_3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    move p1, v5

    .line 97
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aW;->a(J)V

    if-eqz p1, :cond_4

    .line 98
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

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

    .line 216
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    aget-object v0, v1, v0

    .line 220
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 221
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->d:I

    .line 222
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:[J

    aget-wide v3, v3, v2

    .line 223
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:[I

    aget v5, v5, v2

    .line 224
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/bc;->i:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const-wide/16 v6, 0x8

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, -0x8

    .line 227
    :cond_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v6

    sub-long v6, v3, v6

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

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

    .line 231
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 232
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    const/4 v9, 0x0

    if-eqz p2, :cond_4

    .line 233
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->o:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 234
    aput-byte v9, p2, v9

    .line 235
    aput-byte v9, p2, v8

    const/4 v3, 0x2

    .line 236
    aput-byte v9, p2, v3

    .line 237
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    .line 238
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    const/4 v4, 0x4

    rsub-int/lit8 v3, v3, 0x4

    .line 239
    :goto_0
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    if-ge v6, v5, :cond_5

    .line 240
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    if-nez v6, :cond_3

    .line 241
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->o:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v6, v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 242
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->o:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 243
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->o:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v6

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    .line 244
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->n:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 245
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->n:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v1, v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 246
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    add-int/2addr v5, v3

    goto :goto_0

    .line 248
    :cond_3
    invoke-interface {v1, p1, v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result v6

    .line 249
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    .line 250
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    goto :goto_0

    .line 253
    :cond_4
    :goto_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    if-ge p2, v5, :cond_5

    sub-int p2, v5, p2

    .line 254
    invoke-interface {v1, p1, p2, v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result p2

    .line 255
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    .line 256
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    goto :goto_1

    .line 258
    :cond_5
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:[J

    aget-wide p1, p1, v2

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:[I

    aget v4, v3, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 259
    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->d:I

    add-int/2addr p1, v8

    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->d:I

    .line 260
    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    .line 261
    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    return v9

    .line 229
    :cond_6
    :goto_2
    iput-wide v3, p2, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    return v8
.end method

.method private c(J)V
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 277
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    .line 278
    invoke-virtual {v4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 280
    invoke-virtual {v4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->b(J)I

    move-result v5

    .line 281
    :cond_0
    iput v5, v3, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(I)Z
    .locals 1

    .line 318
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aG:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    .line 43
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    return-void
.end method

.method private g()I
    .locals 7

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 265
    :goto_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 266
    aget-object v4, v4, v3

    .line 267
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->d:I

    .line 268
    iget-object v6, v4, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:I

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

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
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->r:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aW;->c(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result p1

    return p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aW;->b(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 21
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aW;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public a(JJ)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->q:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->u:I

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->w:I

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->x:I

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aW;->f()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    if-eqz p1, :cond_1

    .line 17
    invoke-direct {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/aW;->c(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->y:Lcom/google/vr/sdk/widgets/video/deps/au;

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

    .line 30
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->A:J

    return-wide v0
.end method

.method public b(J)J
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->z:[Lcom/google/vr/sdk/widgets/video/deps/aW$a;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 33
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aW$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    .line 34
    invoke-virtual {v5, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 36
    invoke-virtual {v5, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bf;->b(J)I

    move-result v6

    .line 37
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

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/vr/sdk/widgets/video/deps/aX;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->C:Ljava/util/Map;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aW;->D:J

    return-wide v0
.end method
