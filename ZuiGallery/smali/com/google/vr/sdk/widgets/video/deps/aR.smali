.class final Lcom/google/vr/sdk/widgets/video/deps/aR;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aR$e;,
        Lcom/google/vr/sdk/widgets/video/deps/aR$d;,
        Lcom/google/vr/sdk/widgets/video/deps/aR$b;,
        Lcom/google/vr/sdk/widgets/video/deps/aR$c;,
        Lcom/google/vr/sdk/widgets/video/deps/aR$f;,
        Lcom/google/vr/sdk/widgets/video/deps/aR$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AtomParsers"

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vide"

    .line 661
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->b:I

    const-string/jumbo v0, "soun"

    .line 662
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->c:I

    const-string/jumbo v0, "text"

    .line 663
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->d:I

    const-string v0, "sbtl"

    .line 664
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->e:I

    const-string/jumbo v0, "subt"

    .line 665
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->f:I

    const-string v0, "clcp"

    .line 666
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->g:I

    const-string v0, "cenc"

    .line 667
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->h:I

    const-string v0, "meta"

    .line 668
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->i:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;II)I
    .locals 4

    .line 522
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 524
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 525
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 526
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 528
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->O:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
    .locals 2

    const/16 v0, 0x8

    .line 230
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 231
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 232
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 233
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 234
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 412
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->V:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x8

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 416
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 417
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    .line 418
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    .line 419
    new-array v2, v1, [J

    .line 420
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->t()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 425
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->k()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 428
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 413
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;Z)Lcom/google/vr/sdk/widgets/video/deps/aR$c;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 290
    invoke-virtual {v10, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v11

    .line 292
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/aR$c;

    invoke-direct {v12, v11}, Lcom/google/vr/sdk/widgets/video/deps/aR$c;-><init>(I)V

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v11, :cond_8

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v15

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v13

    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 296
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 298
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->g:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->h:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ae:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aq:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->i:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->j:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->k:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aP:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aQ:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    .line 300
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->n:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->af:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->s:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->u:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->w:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->z:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->x:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->y:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aD:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aE:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->q:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->r:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->o:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aT:I

    if-ne v1, v0, :cond_2

    goto :goto_3

    .line 302
    :cond_2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ao:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->az:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aA:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aB:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aC:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 304
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aS:I

    if-ne v1, v0, :cond_7

    .line 305
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "application/x-camera-motion"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    goto :goto_5

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 303
    invoke-static/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIIILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aR$c;)V

    goto :goto_5

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 301
    invoke-static/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIIILjava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/aR$c;I)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 299
    invoke-static/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIIIILcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/aR$c;I)V

    :cond_7
    :goto_5
    add-int v15, v15, v16

    .line 306
    invoke-virtual {v10, v15}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;Z)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 p1, 0x8

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 204
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    .line 205
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aG:I

    if-ne v3, v4, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    add-int/2addr v1, v2

    .line 207
    invoke-static {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, -0x8

    .line 208
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 4

    const/16 v0, 0xc

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 215
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 216
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aH:I

    if-ne v2, v3, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    add-int/2addr v0, v1

    .line 218
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aR;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, -0x8

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aQ$b;JLcom/google/vr/sdk/widgets/video/deps/aa;Z)Lcom/google/vr/sdk/widgets/video/deps/bc;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aQ;->J:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v1

    .line 2
    sget v2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->X:I

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/aR;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    return-object v2

    .line 5
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->T:I

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/aR;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/aR$f;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 7
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->a(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 8
    :goto_0
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 11
    invoke-static/range {v10 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    .line 12
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->K:I

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v4

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->L:I

    .line 13
    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v4

    .line 14
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->W:I

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aR;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Landroid/util/Pair;

    move-result-object v1

    .line 15
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Y:I

    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v4

    iget-object v12, v4, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->b(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)I

    move-result v13

    .line 16
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->c(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p5

    .line 17
    invoke-static/range {v12 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;Z)Lcom/google/vr/sdk/widgets/video/deps/aR$c;

    move-result-object v4

    .line 18
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->U:I

    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)Landroid/util/Pair;

    move-result-object v0

    .line 19
    iget-object v6, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-nez v6, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/bc;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->b(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)I

    move-result v6

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v1, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v14, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->e:I

    iget-object v15, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->b:[Lcom/google/vr/sdk/widgets/video/deps/bd;

    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->d:I

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [J

    move-object v3, v2

    move v4, v6

    move v0, v7

    move-wide v6, v12

    move-object v12, v1

    move v13, v14

    move-object v14, v15

    move v15, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/bc;-><init>(IIJJJLcom/google/vr/sdk/widgets/video/deps/m;I[Lcom/google/vr/sdk/widgets/video/deps/bd;I[J[J)V

    :goto_2
    return-object v2
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/bd;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 616
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 617
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 618
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    .line 619
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ad:I

    if-ne v3, v4, :cond_3

    .line 620
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    .line 621
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result p1

    const/4 p2, 0x1

    .line 622
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 626
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    move v8, v0

    move v9, v8

    goto :goto_1

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 630
    :goto_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    if-ne p1, p2, :cond_1

    move v4, p2

    goto :goto_2

    :cond_1
    move v4, v0

    .line 631
    :goto_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 633
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    .line 637
    new-array v2, p1, [B

    .line 638
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    :cond_2
    move-object v10, v2

    .line 639
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/bd;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aw;)Lcom/google/vr/sdk/widgets/video/deps/bf;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 22
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->av:I

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aR$d;

    invoke-direct {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/aR$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)V

    goto :goto_0

    .line 25
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aw:I

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 28
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aR$e;

    invoke-direct {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/aR$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)V

    .line 29
    :goto_0
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/aR$b;->a()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 31
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bf;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>([J[II[J[I)V

    return-object v0

    .line 33
    :cond_1
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ax:I

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 36
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ay:I

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v6

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v5

    .line 37
    :goto_1
    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 38
    sget v9, Lcom/google/vr/sdk/widgets/video/deps/aQ;->au:I

    invoke-virtual {v1, v9}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v9

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 39
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ar:I

    invoke-virtual {v1, v10}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v10

    iget-object v10, v10, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 40
    sget v11, Lcom/google/vr/sdk/widgets/video/deps/aQ;->as:I

    invoke-virtual {v1, v11}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 41
    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    goto :goto_2

    :cond_3
    move-object v11, v12

    .line 42
    :goto_2
    sget v13, Lcom/google/vr/sdk/widgets/video/deps/aQ;->at:I

    invoke-virtual {v1, v13}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 43
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    goto :goto_3

    :cond_4
    move-object v1, v12

    .line 44
    :goto_3
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/vr/sdk/widgets/video/deps/aR$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/gA;Z)V

    const/16 v6, 0xc

    .line 45
    invoke-virtual {v10, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 46
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v8

    sub-int/2addr v8, v7

    .line 47
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v9

    .line 48
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v14

    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 54
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v5

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_6

    .line 58
    invoke-virtual {v11, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 59
    invoke-virtual {v11}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v6

    if-lez v6, :cond_7

    .line 61
    invoke-virtual {v11}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    goto :goto_5

    :cond_6
    move v6, v5

    :goto_5
    move-object v12, v11

    .line 63
    :cond_7
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/aR$b;->c()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 64
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    move v5, v7

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-wide/16 v18, 0x0

    if-nez v5, :cond_17

    .line 68
    new-array v5, v3, [J

    .line 69
    new-array v11, v3, [I

    .line 70
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 71
    new-array v6, v3, [I

    move-object/from16 v23, v10

    move/from16 v2, v16

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v9

    move v9, v8

    move/from16 v8, p1

    :goto_7
    if-ge v0, v3, :cond_10

    :goto_8
    if-nez v22, :cond_9

    .line 76
    invoke-virtual {v13}, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->a()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    move/from16 p1, v14

    move/from16 v29, v15

    .line 77
    iget-wide v14, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->d:J

    move-wide/from16 v25, v14

    .line 78
    iget v14, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->c:I

    move/from16 v22, v14

    move/from16 v15, v29

    move/from16 v14, p1

    goto :goto_8

    :cond_9
    move/from16 p1, v14

    move/from16 v29, v15

    if-eqz v1, :cond_b

    :goto_9
    if-nez v21, :cond_a

    if-lez v16, :cond_a

    .line 81
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v21

    .line 82
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v24

    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v21, v21, -0x1

    :cond_b
    move/from16 v14, v24

    .line 85
    aput-wide v25, v5, v0

    .line 86
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/aR$b;->b()I

    move-result v15

    aput v15, v11, v0

    .line 87
    aget v15, v11, v0

    if-le v15, v10, :cond_c

    .line 88
    aget v10, v11, v0

    :cond_c
    move/from16 v24, v3

    move-object v15, v4

    int-to-long v3, v14

    add-long v3, v27, v3

    .line 89
    aput-wide v3, v7, v0

    if-nez v12, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    .line 90
    :goto_a
    aput v3, v6, v0

    if-ne v0, v2, :cond_e

    const/4 v3, 0x1

    .line 92
    aput v3, v6, v0

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_e

    .line 95
    invoke-virtual {v12}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_e
    move/from16 v3, v29

    move-object/from16 v29, v5

    int-to-long v4, v3

    add-long v27, v27, v4

    add-int/lit8 v4, p1, -0x1

    if-nez v4, :cond_f

    if-lez v9, :cond_f

    .line 99
    invoke-virtual/range {v23 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v3

    .line 100
    invoke-virtual/range {v23 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v4

    add-int/lit8 v9, v9, -0x1

    goto :goto_b

    :cond_f
    move/from16 v38, v4

    move v4, v3

    move/from16 v3, v38

    .line 102
    :goto_b
    aget v5, v11, v0

    move/from16 v30, v2

    move/from16 p1, v3

    int-to-long v2, v5

    add-long v25, v25, v2

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v24

    move-object/from16 v5, v29

    move/from16 v2, v30

    move/from16 v24, v14

    move/from16 v14, p1

    move-object/from16 v38, v15

    move v15, v4

    move-object/from16 v4, v38

    goto/16 :goto_7

    :cond_10
    move/from16 v24, v3

    move-object/from16 v29, v5

    move/from16 p1, v14

    if-nez v21, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    .line 105
    :goto_c
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    :goto_d
    if-lez v16, :cond_13

    .line 107
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 108
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_d

    :cond_13
    if-nez v8, :cond_15

    if-nez p1, :cond_15

    move/from16 v0, v22

    if-nez v0, :cond_16

    if-eqz v9, :cond_14

    goto :goto_f

    :cond_14
    move-object/from16 v1, p0

    goto :goto_10

    :cond_15
    move/from16 v0, v22

    :cond_16
    :goto_f
    move-object/from16 v1, p0

    .line 111
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    const/16 v3, 0xd7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Inconsistent stbl box for track "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AtomParsers"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    move-object/from16 v5, v29

    goto :goto_12

    :cond_17
    move-object v1, v0

    move/from16 v24, v3

    move-object v15, v4

    .line 113
    iget v0, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->a:I

    new-array v0, v0, [J

    .line 114
    iget v2, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->a:I

    new-array v2, v2, [I

    .line 115
    :goto_11
    invoke-virtual {v13}, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->a()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 116
    iget v3, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->b:I

    iget-wide v4, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->d:J

    aput-wide v4, v0, v3

    .line 117
    iget v3, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->b:I

    iget v4, v13, Lcom/google/vr/sdk/widgets/video/deps/aR$a;->c:I

    aput v4, v2, v3

    goto :goto_11

    .line 118
    :cond_18
    invoke-interface {v15}, Lcom/google/vr/sdk/widgets/video/deps/aR$b;->b()I

    move-result v3

    int-to-long v4, v14

    .line 119
    invoke-static {v3, v0, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aT;->a(I[J[IJ)Lcom/google/vr/sdk/widgets/video/deps/aT$a;

    move-result-object v0

    .line 120
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aT$a;->a:[J

    .line 121
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/aT$a;->b:[I

    .line 122
    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/aT$a;->c:I

    .line 123
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/aT$a;->d:[J

    .line 124
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aT$a;->e:[I

    move-wide/from16 v27, v18

    .line 125
    :goto_12
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    if-eqz v0, :cond_2f

    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_23

    .line 128
    :cond_19
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    array-length v0, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1b

    iget v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    if-ne v0, v4, :cond_1b

    array-length v0, v7

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1b

    .line 129
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->k:[J

    const/4 v4, 0x0

    aget-wide v8, v0, v4

    .line 130
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    aget-wide v12, v0, v4

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->f:J

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v2

    add-long/2addr v2, v8

    .line 132
    aget-wide v12, v7, v4

    cmp-long v0, v12, v8

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    aget-wide v12, v7, v0

    cmp-long v4, v8, v12

    if-gez v4, :cond_1b

    array-length v4, v7

    sub-int/2addr v4, v0

    aget-wide v12, v7, v4

    cmp-long v0, v12, v2

    if-gez v0, :cond_1b

    cmp-long v0, v2, v27

    if-gtz v0, :cond_1b

    sub-long v29, v27, v2

    const/4 v0, 0x0

    .line 134
    aget-wide v2, v7, v0

    sub-long v31, v8, v2

    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    int-to-long v2, v0

    iget-wide v8, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-wide/from16 v33, v2

    move-wide/from16 v35, v8

    invoke-static/range {v31 .. v36}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v2

    .line 135
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    int-to-long v8, v0

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-wide/from16 v31, v8

    move-wide/from16 v33, v12

    invoke-static/range {v29 .. v34}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v8

    cmp-long v0, v2, v18

    if-nez v0, :cond_1a

    cmp-long v0, v8, v18

    if-eqz v0, :cond_1b

    :cond_1a
    const-wide/32 v12, 0x7fffffff

    cmp-long v0, v2, v12

    if-gtz v0, :cond_1b

    cmp-long v0, v8, v12

    if-gtz v0, :cond_1b

    long-to-int v0, v2

    move-object/from16 v2, p2

    .line 137
    iput v0, v2, Lcom/google/vr/sdk/widgets/video/deps/aw;->b:I

    long-to-int v0, v8

    .line 138
    iput v0, v2, Lcom/google/vr/sdk/widgets/video/deps/aw;->c:I

    .line 139
    iget-wide v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJJ)V

    .line 140
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bf;

    move-object/from16 v25, v0

    move-object/from16 v26, v5

    move-object/from16 v27, v11

    move/from16 v28, v10

    move-object/from16 v29, v7

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>([J[II[J[I)V

    return-object v0

    .line 141
    :cond_1b
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    const/16 v17, 0x0

    aget-wide v2, v0, v17

    cmp-long v0, v2, v18

    if-nez v0, :cond_1d

    move/from16 v0, v17

    .line 142
    :goto_13
    array-length v2, v7

    if-ge v0, v2, :cond_1c

    .line 143
    aget-wide v2, v7, v0

    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->k:[J

    aget-wide v8, v4, v17

    sub-long v18, v2, v8

    const-wide/32 v20, 0xf4240

    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v2

    aput-wide v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v17, 0x0

    goto :goto_13

    .line 145
    :cond_1c
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bf;

    move-object/from16 v25, v0

    move-object/from16 v26, v5

    move-object/from16 v27, v11

    move/from16 v28, v10

    move-object/from16 v29, v7

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>([J[II[J[I)V

    return-object v0

    .line 146
    :cond_1d
    iget v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    const/4 v3, 0x1

    goto :goto_14

    :cond_1e
    const/4 v3, 0x0

    :goto_14
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 150
    :goto_15
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    array-length v9, v9

    const-wide/16 v12, -0x1

    if-ge v4, v9, :cond_21

    .line 151
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->k:[J

    aget-wide v14, v9, v4

    cmp-long v9, v14, v12

    if-eqz v9, :cond_20

    .line 153
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    aget-wide v25, v9, v4

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move/from16 p1, v10

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->f:J

    move-wide/from16 v27, v12

    move-wide/from16 v29, v9

    invoke-static/range {v25 .. v30}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v9

    const/4 v12, 0x1

    .line 154
    invoke-static {v7, v14, v15, v12, v12}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result v13

    add-long/2addr v14, v9

    const/4 v9, 0x0

    .line 155
    invoke-static {v7, v14, v15, v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result v10

    sub-int v9, v10, v13

    add-int/2addr v2, v9

    if-eq v8, v13, :cond_1f

    const/4 v8, 0x1

    goto :goto_16

    :cond_1f
    const/4 v8, 0x0

    :goto_16
    or-int/2addr v0, v8

    move v8, v10

    goto :goto_17

    :cond_20
    move/from16 p1, v10

    :goto_17
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, p1

    goto :goto_15

    :cond_21
    move/from16 p1, v10

    move/from16 v4, v24

    if-eq v2, v4, :cond_22

    const/4 v4, 0x1

    goto :goto_18

    :cond_22
    const/4 v4, 0x0

    :goto_18
    or-int/2addr v0, v4

    if-eqz v0, :cond_23

    .line 161
    new-array v4, v2, [J

    goto :goto_19

    :cond_23
    move-object v4, v5

    :goto_19
    if-eqz v0, :cond_24

    .line 162
    new-array v8, v2, [I

    goto :goto_1a

    :cond_24
    move-object v8, v11

    :goto_1a
    if-eqz v0, :cond_25

    const/4 v10, 0x0

    goto :goto_1b

    :cond_25
    move/from16 v10, p1

    :goto_1b
    if-eqz v0, :cond_26

    .line 164
    new-array v9, v2, [I

    goto :goto_1c

    :cond_26
    move-object v9, v6

    .line 165
    :goto_1c
    new-array v2, v2, [J

    move/from16 v24, v10

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 168
    :goto_1d
    iget-object v15, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    array-length v15, v15

    if-ge v10, v15, :cond_2b

    .line 169
    iget-object v15, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->k:[J

    aget-wide v12, v15, v10

    .line 170
    iget-object v15, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    aget-wide v15, v15, v10

    const-wide/16 v27, -0x1

    cmp-long v21, v12, v27

    if-eqz v21, :cond_2a

    move-object/from16 v35, v9

    move/from16 v36, v10

    .line 172
    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-object/from16 p2, v4

    move-object/from16 v37, v5

    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->f:J

    move-wide/from16 v29, v15

    move-wide/from16 v31, v9

    move-wide/from16 v33, v4

    invoke-static/range {v29 .. v34}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v4

    add-long/2addr v4, v12

    const/4 v9, 0x1

    .line 173
    invoke-static {v7, v12, v13, v9, v9}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result v10

    const/4 v9, 0x0

    .line 174
    invoke-static {v7, v4, v5, v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result v4

    if-eqz v0, :cond_27

    sub-int v5, v4, v10

    move/from16 v29, v3

    move-object/from16 v9, v37

    move-object/from16 v3, p2

    .line 177
    invoke-static {v9, v10, v3, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    invoke-static {v11, v10, v8, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v9, v35

    .line 179
    invoke-static {v6, v10, v9, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e

    :cond_27
    move/from16 v29, v3

    move-object/from16 v9, v35

    move-object/from16 v3, p2

    :goto_1e
    move/from16 v5, v24

    :goto_1f
    if-ge v10, v4, :cond_29

    const-wide/32 v23, 0xf4240

    move-object/from16 p2, v3

    move/from16 p1, v4

    .line 181
    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->f:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v3

    invoke-static/range {v21 .. v26}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v3

    .line 182
    aget-wide v21, v7, v10

    sub-long v30, v21, v12

    const-wide/32 v32, 0xf4240

    move-wide/from16 v21, v12

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-wide/from16 v34, v12

    invoke-static/range {v30 .. v35}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v12

    add-long/2addr v3, v12

    .line 183
    aput-wide v3, v2, v14

    if-eqz v0, :cond_28

    .line 184
    aget v3, v8, v14

    if-le v3, v5, :cond_28

    .line 185
    aget v5, v11, v10

    :cond_28
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p1

    move-object/from16 v3, p2

    move-wide/from16 v12, v21

    goto :goto_1f

    :cond_29
    move-object/from16 p2, v3

    move/from16 v24, v5

    goto :goto_20

    :cond_2a
    move/from16 v29, v3

    move-object/from16 p2, v4

    move-object/from16 v37, v5

    move/from16 v36, v10

    :goto_20
    add-long v18, v18, v15

    add-int/lit8 v10, v36, 0x1

    move-object/from16 v4, p2

    move-wide/from16 v12, v27

    move/from16 v3, v29

    move-object/from16 v5, v37

    goto/16 :goto_1d

    :cond_2b
    move-object/from16 p2, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 191
    :goto_21
    array-length v1, v9

    if-ge v4, v1, :cond_2d

    if-nez v0, :cond_2d

    .line 192
    aget v1, v9, v4

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_2c

    move v1, v3

    goto :goto_22

    :cond_2c
    const/4 v1, 0x0

    :goto_22
    or-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_2d
    if-eqz v0, :cond_2e

    .line 196
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bf;

    move-object/from16 v21, v0

    move-object/from16 v22, p2

    move-object/from16 v23, v8

    move-object/from16 v25, v2

    move-object/from16 v26, v9

    invoke-direct/range {v21 .. v26}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>([J[II[J[I)V

    return-object v0

    .line 195
    :cond_2e
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_23
    move-object/from16 v37, v5

    move/from16 p1, v10

    .line 126
    iget-wide v0, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJJ)V

    .line 127
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bf;

    move-object/from16 v25, v0

    move-object/from16 v26, v37

    move-object/from16 v27, v11

    move/from16 v28, p1

    move-object/from16 v29, v7

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>([J[II[J[I)V

    return-object v0

    .line 27
    :cond_30
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIIIILcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/aR$c;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 331
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/16 v5, 0x10

    .line 332
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v11

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v12

    const/16 v5, 0x32

    .line 337
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v5

    .line 339
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ae:I

    const/4 v7, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_2

    .line 340
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aR;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 342
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    .line 344
    :cond_0
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/bd;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object v3

    .line 345
    :goto_0
    iget-object v9, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->b:[Lcom/google/vr/sdk/widgets/video/deps/bd;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/bd;

    aput-object v6, v9, p8

    .line 346
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    :cond_2
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v18, v3

    move-object v14, v7

    move-object/from16 v17, v14

    move/from16 v16, v9

    const/4 v3, 0x0

    :goto_1
    sub-int v9, v5, v1

    if-ge v9, v2, :cond_18

    .line 352
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v9

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v10

    if-nez v10, :cond_3

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v13

    sub-int/2addr v13, v1

    if-ne v13, v2, :cond_3

    goto/16 :goto_a

    :cond_3
    if-lez v10, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const-string v6, "childAtomSize should be positive"

    .line 357
    invoke-static {v15, v6}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v6

    .line 359
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->M:I

    const/4 v13, 0x3

    if-ne v6, v15, :cond_7

    if-nez v7, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 360
    :goto_3
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    add-int/lit8 v9, v9, 0x8

    .line 362
    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 363
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gO;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gO;

    move-result-object v6

    .line 364
    iget-object v14, v6, Lcom/google/vr/sdk/widgets/video/deps/gO;->a:Ljava/util/List;

    .line 365
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/gO;->b:I

    iput v7, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->d:I

    if-nez v3, :cond_6

    .line 367
    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gO;->e:F

    move/from16 v16, v6

    :cond_6
    const-string/jumbo v7, "video/avc"

    goto/16 :goto_9

    .line 368
    :cond_7
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->N:I

    if-ne v6, v15, :cond_9

    if-nez v7, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    .line 369
    :goto_4
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    add-int/lit8 v9, v9, 0x8

    .line 371
    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 372
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gR;

    move-result-object v6

    .line 373
    iget-object v14, v6, Lcom/google/vr/sdk/widgets/video/deps/gR;->a:Ljava/util/List;

    .line 374
    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gR;->b:I

    iput v6, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->d:I

    const-string/jumbo v7, "video/hevc"

    goto/16 :goto_9

    .line 375
    :cond_9
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aR:I

    if-ne v6, v15, :cond_c

    if-nez v7, :cond_a

    const/4 v13, 0x1

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    .line 376
    :goto_5
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 377
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aP:I

    if-ne v8, v6, :cond_b

    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_b
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    :goto_6
    move-object v7, v6

    goto/16 :goto_9

    .line 378
    :cond_c
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->l:I

    if-ne v6, v15, :cond_e

    if-nez v7, :cond_d

    const/4 v13, 0x1

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 379
    :goto_7
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    const-string/jumbo v7, "video/3gpp"

    goto :goto_9

    .line 381
    :cond_e
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->O:I

    if-ne v6, v15, :cond_10

    if-nez v7, :cond_f

    const/4 v13, 0x1

    goto :goto_8

    :cond_f
    const/4 v13, 0x0

    .line 382
    :goto_8
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 384
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/aR;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Landroid/util/Pair;

    move-result-object v6

    .line 385
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 386
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    .line 387
    :cond_10
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->an:I

    if-ne v6, v15, :cond_11

    .line 388
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/aR;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;I)F

    move-result v16

    const/4 v3, 0x1

    goto :goto_9

    .line 390
    :cond_11
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aN:I

    if-ne v6, v15, :cond_12

    .line 391
    invoke-static {v0, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/aR;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;II)[B

    move-result-object v17

    goto :goto_9

    .line 392
    :cond_12
    sget v9, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aM:I

    if-ne v6, v9, :cond_17

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v6

    .line 394
    invoke-virtual {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    if-nez v6, :cond_17

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v9, 0x1

    if-eq v6, v9, :cond_15

    const/4 v15, 0x2

    if-eq v6, v15, :cond_14

    if-eq v6, v13, :cond_13

    goto :goto_9

    :cond_13
    move/from16 v18, v13

    goto :goto_9

    :cond_14
    move/from16 v18, v15

    goto :goto_9

    :cond_15
    move/from16 v18, v9

    goto :goto_9

    :cond_16
    const/16 v18, 0x0

    :cond_17
    :goto_9
    add-int/2addr v5, v10

    goto/16 :goto_1

    :cond_18
    :goto_a
    if-nez v7, :cond_19

    return-void

    .line 410
    :cond_19
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move/from16 v15, p5

    invoke-static/range {v6 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/vr/sdk/widgets/video/deps/gP;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    iput-object v0, v4, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIIILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aR$c;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 309
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 312
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ao:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    :goto_0
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_1

    .line 314
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->az:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 317
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 318
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 319
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v4, "application/x-quicktime-tx3g"

    goto :goto_0

    .line 320
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aA:I

    if-ne v1, v0, :cond_2

    const-string v4, "application/x-mp4-vtt"

    goto :goto_0

    .line 322
    :cond_2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aB:I

    if-ne v1, v0, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 325
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aC:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    .line 327
    iput v0, v2, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->e:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_0

    .line 329
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    iput-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void

    .line 328
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIIILjava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/aR$c;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 435
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_0

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v5

    .line 439
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    move v5, v13

    :goto_0
    const/4 v12, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v11, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v12, :cond_2

    .line 448
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->B()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v5

    const/16 v6, 0x14

    .line 451
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 442
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v7

    .line 443
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->v()I

    move-result v4

    if-ne v5, v11, :cond_4

    .line 446
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_4
    move v5, v7

    .line 453
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v6

    .line 454
    sget v7, Lcom/google/vr/sdk/widgets/video/deps/aQ;->af:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 455
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aR;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 457
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    .line 459
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/bd;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object v3

    .line 460
    :goto_3
    iget-object v9, v15, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->b:[Lcom/google/vr/sdk/widgets/video/deps/bd;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/bd;

    aput-object v7, v9, p9

    .line 461
    :cond_6
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    :cond_7
    move-object v10, v3

    .line 463
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->s:I

    const-string v9, "audio/raw"

    if-ne v8, v3, :cond_8

    const-string v3, "audio/ac3"

    goto :goto_6

    .line 465
    :cond_8
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->u:I

    if-ne v8, v3, :cond_9

    const-string v3, "audio/eac3"

    goto :goto_6

    .line 467
    :cond_9
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->w:I

    if-ne v8, v3, :cond_a

    const-string v3, "audio/vnd.dts"

    goto :goto_6

    .line 469
    :cond_a
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->x:I

    if-eq v8, v3, :cond_13

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->y:I

    if-ne v8, v3, :cond_b

    goto :goto_5

    .line 471
    :cond_b
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->z:I

    if-ne v8, v3, :cond_c

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    .line 473
    :cond_c
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aD:I

    if-ne v8, v3, :cond_d

    const-string v3, "audio/3gpp"

    goto :goto_6

    .line 475
    :cond_d
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aE:I

    if-ne v8, v3, :cond_e

    const-string v3, "audio/amr-wb"

    goto :goto_6

    .line 477
    :cond_e
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->q:I

    if-eq v8, v3, :cond_12

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->r:I

    if-ne v8, v3, :cond_f

    goto :goto_4

    .line 479
    :cond_f
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->o:I

    if-ne v8, v3, :cond_10

    const-string v3, "audio/mpeg"

    goto :goto_6

    .line 481
    :cond_10
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aT:I

    if-ne v8, v3, :cond_11

    const-string v3, "audio/alac"

    goto :goto_6

    :cond_11
    move-object/from16 v3, v16

    goto :goto_6

    :cond_12
    :goto_4
    move-object v3, v9

    goto :goto_6

    :cond_13
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    :goto_6
    move-object v8, v3

    move/from16 v18, v4

    move/from16 v17, v5

    move v7, v6

    move-object/from16 v19, v16

    :goto_7
    sub-int v3, v7, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_1e

    .line 485
    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v6

    if-lez v6, :cond_14

    move v3, v11

    goto :goto_8

    :cond_14
    move v3, v13

    :goto_8
    const-string v5, "childAtomSize should be positive"

    .line 487
    invoke-static {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    .line 489
    sget v5, Lcom/google/vr/sdk/widgets/video/deps/aQ;->O:I

    if-eq v3, v5, :cond_1b

    if-eqz p6, :cond_15

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/aQ;->p:I

    if-ne v3, v5, :cond_15

    goto/16 :goto_c

    .line 502
    :cond_15
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->t:I

    if-ne v3, v4, :cond_16

    add-int/lit8 v3, v7, 0x8

    .line 503
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 504
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/vr/sdk/widgets/video/deps/A;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    iput-object v3, v15, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    :goto_9
    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move v1, v13

    goto/16 :goto_b

    .line 505
    :cond_16
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->v:I

    if-ne v3, v4, :cond_17

    add-int/lit8 v3, v7, 0x8

    .line 506
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 507
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/vr/sdk/widgets/video/deps/A;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    iput-object v3, v15, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    goto :goto_9

    .line 508
    :cond_17
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->A:I

    if-ne v3, v4, :cond_18

    .line 509
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v8

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, v21

    move-object/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    move/from16 v21, v11

    move-object/from16 v11, v20

    move/from16 v22, v12

    move/from16 v12, v23

    move v1, v13

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    iput-object v3, v15, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    move/from16 v5, v24

    goto :goto_a

    :cond_18
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move v1, v13

    .line 510
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aT:I

    move/from16 v5, v24

    if-ne v3, v4, :cond_19

    .line 511
    new-array v3, v5, [B

    move/from16 v6, v25

    .line 512
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 513
    invoke-virtual {v0, v3, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    move-object/from16 v19, v3

    goto :goto_b

    :cond_19
    :goto_a
    move/from16 v6, v25

    :cond_1a
    :goto_b
    move-object/from16 v8, v26

    goto :goto_e

    :cond_1b
    :goto_c
    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move v1, v13

    .line 490
    sget v7, Lcom/google/vr/sdk/widgets/video/deps/aQ;->O:I

    if-ne v3, v7, :cond_1c

    move v7, v6

    goto :goto_d

    .line 491
    :cond_1c
    invoke-static {v0, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;II)I

    move-result v7

    :goto_d
    if-eq v7, v4, :cond_1a

    .line 494
    invoke-static {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/aR;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Landroid/util/Pair;

    move-result-object v3

    .line 495
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 496
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 497
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 499
    invoke-static/range {v19 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a([B)Landroid/util/Pair;

    move-result-object v3

    .line 500
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 501
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_1d
    :goto_e
    add-int v7, v6, v5

    move v13, v1

    move-object/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v9, v27

    move/from16 v1, p2

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    move/from16 v22, v12

    .line 516
    iget-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-nez v0, :cond_21

    move-object/from16 v8, v26

    if-eqz v8, :cond_21

    move-object/from16 v0, v27

    .line 517
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move/from16 v7, v22

    goto :goto_f

    :cond_1f
    move v7, v4

    .line 518
    :goto_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_20

    goto :goto_10

    .line 519
    :cond_20
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_10
    const/4 v10, 0x0

    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v20

    move-object/from16 v11, p5

    .line 520
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    iput-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    :cond_21
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/sdk/widgets/video/deps/bd;",
            ">;"
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 577
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 578
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 579
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 580
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 581
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aa:I

    if-ne v2, v3, :cond_1

    .line 582
    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aR;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/aR$f;
    .locals 11

    const/16 v0, 0x8

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 236
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 237
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 238
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 239
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    const/4 v4, 0x4

    .line 240
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 242
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v5

    if-nez v1, :cond_1

    move v0, v4

    :cond_1
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_3

    .line 245
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 252
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 255
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 256
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 258
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 259
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 260
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 269
    :cond_9
    :goto_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/aR$f;-><init>(IJI)V

    return-object p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 2

    const/16 v0, 0x8

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 225
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aY;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/bW;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bW;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 431
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 432
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result p1

    .line 433
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;)I
    .locals 1

    const/16 v0, 0x10

    .line 270
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 271
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    .line 272
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->c:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 274
    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->b:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 276
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->d:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->e:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->f:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->g:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 278
    :cond_2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aR;->i:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/sdk/widgets/video/deps/bd;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v1

    move-object v4, v2

    move-object v5, v4

    move v7, v3

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 594
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 595
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v8

    .line 596
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v9

    .line 597
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ag:I

    if-ne v9, v10, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 599
    :cond_0
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ab:I

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 600
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 601
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 602
    :cond_1
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ac:I

    if-ne v9, v10, :cond_2

    move v6, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_7

    const/4 p1, 0x1

    if-eqz v5, :cond_4

    move p2, p1

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    const-string v0, "frma atom is mandatory"

    .line 608
    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    if-eq v6, v1, :cond_5

    move p2, p1

    goto :goto_3

    :cond_5
    move p2, v3

    :goto_3
    const-string v0, "schi atom is mandatory"

    .line 609
    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 610
    invoke-static {p0, v6, v7, v4}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-result-object p0

    if-eqz p0, :cond_6

    move v3, p1

    :cond_6
    const-string/jumbo p1, "tenc atom is mandatory"

    .line 611
    invoke-static {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 612
    invoke-static {v5, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 281
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 282
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 283
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 284
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 285
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 286
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 287
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result p0

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    const/4 v4, 0x3

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 533
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/4 p1, 0x1

    .line 534
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 535
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aR;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    const/4 v0, 0x2

    .line 536
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 537
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_1
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 543
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 544
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 545
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aR;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    .line 546
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_a

    const/16 v2, 0x21

    if-eq v0, v2, :cond_9

    const/16 v2, 0x23

    if-eq v0, v2, :cond_8

    const/16 v2, 0x40

    if-eq v0, v2, :cond_7

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_6

    const/16 v2, 0x60

    if-eq v0, v2, :cond_5

    const/16 v2, 0x61

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string p0, "audio/vnd.dts.hd"

    .line 567
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "audio/vnd.dts"

    .line 565
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "audio/eac3"

    goto :goto_0

    :cond_4
    const-string v1, "audio/ac3"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "video/mpeg2"

    goto :goto_0

    :cond_6
    const-string p0, "audio/mpeg"

    .line 557
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    :pswitch_2
    const-string v1, "audio/mp4a-latm"

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "video/hevc"

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "video/avc"

    goto :goto_0

    :cond_a
    const-string/jumbo v1, "video/mp4v-es"

    :goto_0
    const/16 v0, 0xc

    .line 569
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 570
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 571
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aR;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result p1

    .line 572
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 573
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 574
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 645
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 646
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 647
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 648
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aO:I

    if-ne v2, v3, :cond_0

    .line 649
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lcom/google/vr/sdk/widgets/video/deps/gA;)I
    .locals 3

    .line 653
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
