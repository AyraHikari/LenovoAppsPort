.class public final Lcom/google/vr/sdk/widgets/video/deps/aU;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aU$c;,
        Lcom/google/vr/sdk/widgets/video/deps/aU$b;,
        Lcom/google/vr/sdk/widgets/video/deps/aU$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x4

.field public static final h:I = 0x8

.field private static final i:I = 0x10

.field private static final j:Ljava/lang/String; = "FragmentedMp4Extractor"

.field private static final k:I

.field private static final l:[B

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4


# instance fields
.field private final A:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final B:[B

.field private final C:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$a;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$b;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private G:J

.field private H:I

.field private I:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private J:J

.field private K:I

.field private L:J

.field private M:J

.field private N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private T:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private U:[Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private V:Z

.field private final r:I

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/bc;

.field private final t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final v:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final w:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final x:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final y:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final z:Lcom/google/vr/sdk/widgets/video/deps/gJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 661
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aU$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aU$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "seig"

    .line 662
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->k:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 663
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->l:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/bc;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/bc;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr p1, v1

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->r:I

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->z:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 10
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->s:Lcom/google/vr/sdk/widgets/video/deps/bc;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/gy;->a:[B

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 15
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->x:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 16
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->y:Lcom/google/vr/sdk/widgets/video/deps/gA;

    new-array p1, v0, [B

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->B:[B

    .line 18
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    .line 19
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->D:Ljava/util/LinkedList;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->L:J

    .line 22
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->M:J

    .line 23
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/aU$c;)I
    .locals 7

    .line 619
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 620
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->a:Lcom/google/vr/sdk/widgets/video/deps/aS;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aS;->a:I

    .line 621
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->o:Lcom/google/vr/sdk/widgets/video/deps/bd;

    if-eqz v2, :cond_0

    .line 622
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->o:Lcom/google/vr/sdk/widgets/video/deps/bd;

    goto :goto_0

    .line 623
    :cond_0
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-result-object v1

    .line 624
    :goto_0
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/bd;->d:I

    if-eqz v2, :cond_1

    .line 625
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 626
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bd;->d:I

    goto :goto_1

    .line 627
    :cond_1
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bd;->e:[B

    .line 628
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->y:Lcom/google/vr/sdk/widgets/video/deps/gA;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 629
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->y:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 630
    array-length v1, v1

    .line 631
    :goto_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->n:[Z

    iget v4, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    aget-boolean v3, v3, v4

    .line 632
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->x:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/16 v6, 0x80

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 633
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->x:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 634
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 635
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->x:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 636
    invoke-interface {p1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    if-nez v3, :cond_3

    add-int/2addr v1, v5

    return v1

    .line 639
    :cond_3
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 640
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v2

    const/4 v3, -0x2

    .line 641
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    .line 643
    invoke-interface {p1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    return v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aU$c;IJILcom/google/vr/sdk/widgets/video/deps/gA;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    .line 351
    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 352
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 353
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->b(I)I

    move-result v1

    .line 354
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    .line 355
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 356
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->a:Lcom/google/vr/sdk/widgets/video/deps/aS;

    .line 357
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->h:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v6

    aput v6, v5, p1

    .line 358
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->g:[J

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->c:J

    aput-wide v6, v5, p1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 360
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->g:[J

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 362
    :goto_0
    iget v8, v4, Lcom/google/vr/sdk/widgets/video/deps/aS;->d:I

    if-eqz v5, :cond_2

    .line 364
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v8

    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    move v9, v7

    goto :goto_1

    :cond_3
    move v9, v6

    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    move v11, v7

    goto :goto_3

    :cond_5
    move v11, v6

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    move v1, v7

    goto :goto_4

    :cond_6
    move v1, v6

    .line 370
    :goto_4
    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    array-length v12, v12

    if-ne v12, v7, :cond_7

    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->j:[J

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    .line 371
    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->k:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v13

    .line 372
    :cond_7
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->i:[I

    .line 373
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->j:[I

    .line 374
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->k:[J

    .line 375
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->l:[Z

    .line 376
    iget v2, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    .line 377
    :goto_5
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->h:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 378
    iget-wide v2, v3, Lcom/google/vr/sdk/widgets/video/deps/bc;->e:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    .line 379
    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->s:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    .line 381
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v13

    goto :goto_8

    .line 382
    :cond_a
    iget v13, v4, Lcom/google/vr/sdk/widgets/video/deps/aS;->b:I

    :goto_8
    if-eqz v10, :cond_b

    .line 383
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Lcom/google/vr/sdk/widgets/video/deps/aS;->c:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    .line 385
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/aS;->d:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v28, v1

    .line 387
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 388
    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    .line 390
    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    .line 392
    invoke-static/range {v18 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 393
    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    move v5, v9

    goto :goto_c

    :cond_10
    move v5, v1

    .line 394
    :goto_c
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v1, p1

    .line 397
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->s:J

    return v8
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/vr/sdk/widgets/video/deps/ao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 458
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 460
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v1

    const/4 v2, 0x4

    .line 461
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v3

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v5

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v3

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 469
    invoke-static/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 470
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v1

    .line 472
    new-array v7, v1, [I

    .line 473
    new-array v8, v1, [J

    .line 474
    new-array v5, v1, [J

    .line 475
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v23, v11

    move v11, v3

    move-wide/from16 v3, v23

    :goto_1
    if-ge v11, v1, :cond_2

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 484
    aput v12, v7, v11

    .line 485
    aput-wide v13, v8, v11

    .line 486
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 488
    invoke-static/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v3

    .line 489
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 490
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 491
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move v2, v5

    move-object v5, v12

    move-object/from16 v8, v22

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 482
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 493
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/ao;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/google/vr/sdk/widgets/video/deps/ao;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/vr/sdk/widgets/video/deps/aU$c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;"
        }
    .end annotation

    .line 609
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 611
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    .line 612
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    iget-object v7, v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/be;->e:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    iget-object v6, v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/be;->g:[J

    iget v7, v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    aget-wide v6, v6, v7

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    move-object v1, v5

    move-wide v2, v6

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/aU$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;",
            ">;I)",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 326
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 327
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->b(I)I

    move-result v0

    .line 328
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 329
    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v1

    .line 334
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iput-wide v1, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->c:J

    .line 335
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iput-wide v1, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->d:J

    .line 336
    :cond_2
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->d:Lcom/google/vr/sdk/widgets/video/deps/aS;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 338
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/aS;->a:I

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 340
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v2

    goto :goto_2

    :cond_4
    iget v2, p2, Lcom/google/vr/sdk/widgets/video/deps/aS;->b:I

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    .line 342
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v3

    goto :goto_3

    :cond_5
    iget v3, p2, Lcom/google/vr/sdk/widgets/video/deps/aS;->c:I

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result p0

    goto :goto_4

    :cond_6
    iget p0, p2, Lcom/google/vr/sdk/widgets/video/deps/aS;->d:I

    .line 345
    :goto_4
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aS;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/vr/sdk/widgets/video/deps/aS;-><init>(IIII)V

    iput-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->a:Lcom/google/vr/sdk/widgets/video/deps/aS;

    return-object p1
.end method

.method private static a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/aa;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$b;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;"
        }
    .end annotation

    .line 646
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 648
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    .line 649
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Z:I

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 651
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 652
    :cond_0
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 653
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 655
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 656
    :cond_1
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 658
    :cond_4
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-direct {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aa;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    .line 54
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    return-void
.end method

.method private a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aV:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 133
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aQ;->G:I

    if-ne v0, v1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aQ;->P:I

    if-ne v0, v1, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->c(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    .line 226
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v4, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Q:I

    if-ne v3, v4, :cond_0

    .line 227
    invoke-static {v2, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aU$c;JI)V
    .locals 10

    .line 265
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    .line 266
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 268
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    .line 269
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v7, Lcom/google/vr/sdk/widgets/video/deps/aQ;->E:I

    if-ne v6, v7, :cond_0

    .line 270
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v6, 0xc

    .line 271
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 272
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    .line 278
    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->f:I

    .line 279
    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    .line 280
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/be;->a(II)V

    move v3, v1

    move v8, v3

    :goto_1
    if-ge v1, v0, :cond_3

    .line 284
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    .line 285
    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/aQ;->E:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v9, v3, 0x1

    .line 286
    iget-object v7, v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/aU$c;IJILcom/google/vr/sdk/widgets/video/deps/gA;I)I

    move-result v2

    move v8, v2

    move v3, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;)V

    goto :goto_0

    .line 125
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aQ;->F:I

    if-ne v0, v1, :cond_1

    .line 126
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)Landroid/util/Pair;

    move-result-object p1

    .line 127
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->M:J

    .line 128
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->V:Z

    goto :goto_0

    .line 130
    :cond_1
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget p3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aL:I

    if-ne p2, p3, :cond_2

    .line 131
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/bd;Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 289
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->d:I

    const/16 v0, 0x8

    .line 290
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 291
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 292
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 294
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    .line 296
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    .line 297
    iget v3, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 301
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->n:[Z

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    .line 305
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    mul-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 310
    iget-object p0, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 311
    :cond_4
    invoke-virtual {p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/be;->a(I)V

    return-void

    .line 298
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 10

    .line 196
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->T:Lcom/google/vr/sdk/widgets/video/deps/aA;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 198
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 199
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v5

    .line 203
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v1

    .line 204
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 205
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v7

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->T:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v0, p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 207
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->M:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->T:Lcom/google/vr/sdk/widgets/video/deps/aA;

    add-long v4, v3, v1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->D:Ljava/util/LinkedList;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aU$b;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/aU$b;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 210
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->K:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->K:I

    :goto_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;ILcom/google/vr/sdk/widgets/video/deps/be;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 407
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 408
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    .line 409
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 413
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    .line 414
    iget v2, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->f:I

    if-ne v1, v2, :cond_1

    .line 416
    iget-object v2, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 417
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/be;->a(I)V

    .line 418
    invoke-virtual {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/be;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    return-void

    .line 415
    :cond_1
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/be;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/16 v0, 0x8

    .line 313
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 314
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 315
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 321
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    .line 322
    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/be;->d:J

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/be;->d:J

    return-void

    .line 320
    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/16 v0, 0x8

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 400
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 401
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->l:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;ILcom/google/vr/sdk/widgets/video/deps/be;)V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/be;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/16 v0, 0x8

    .line 420
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 421
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 422
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aU;->k:I

    if-eq v2, v3, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 425
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    if-ne p0, v3, :cond_a

    .line 428
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 429
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    .line 430
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aU;->k:I

    if-eq v0, v1, :cond_2

    return-void

    .line 432
    :cond_2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result p0

    if-ne p0, v3, :cond_4

    .line 434
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_3

    goto :goto_0

    .line 435
    :cond_3
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    .line 437
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 438
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_9

    .line 440
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 441
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v10, p0, 0xf

    .line 444
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v3, :cond_6

    move v5, v3

    goto :goto_1

    :cond_6
    move v5, v0

    :goto_1
    if-nez v5, :cond_7

    return-void

    .line 447
    :cond_7
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v7

    const/16 p0, 0x10

    new-array v8, p0, [B

    .line 449
    invoke-virtual {p1, v8, v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    const/4 p0, 0x0

    if-eqz v5, :cond_8

    if-nez v7, :cond_8

    .line 452
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    .line 453
    new-array v1, p0, [B

    .line 454
    invoke-virtual {p1, v1, v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    move-object v11, v1

    goto :goto_2

    :cond_8
    move-object v11, p0

    .line 455
    :goto_2
    iput-boolean v3, p3, Lcom/google/vr/sdk/widgets/video/deps/be;->m:Z

    .line 456
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/bd;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object p0, p3, Lcom/google/vr/sdk/widgets/video/deps/be;->o:Lcom/google/vr/sdk/widgets/video/deps/bd;

    return-void

    .line 439
    :cond_9
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :cond_a
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(I)Z
    .locals 1

    .line 659
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->X:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->W:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->H:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Z:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ah:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ai:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->am:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->al:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aj:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ak:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aL:I

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

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/sdk/widgets/video/deps/aS;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 213
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 215
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v2

    .line 216
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v3

    .line 217
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aS;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/vr/sdk/widgets/video/deps/aS;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 188
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->r:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->T:Lcom/google/vr/sdk/widgets/video/deps/aA;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-interface {v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->T:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const-wide v3, 0x7fffffffffffffffL

    const-string v1, "application/x-emsg"

    .line 190
    invoke-static {v2, v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->r:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->U:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    const-string v1, "application/cea-608"

    const/4 v4, 0x0

    .line 193
    invoke-static {v2, v1, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    new-array v1, v3, [Lcom/google/vr/sdk/widgets/video/deps/aA;

    aput-object v0, v1, v4

    .line 194
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->U:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    :cond_1
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 140
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->s:Lcom/google/vr/sdk/widgets/video/deps/bc;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    .line 141
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object v2

    .line 142
    sget v5, Lcom/google/vr/sdk/widgets/video/deps/aQ;->R:I

    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    move-result-object v5

    .line 143
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 145
    iget-object v8, v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v12, v6

    move v6, v4

    :goto_1
    if-ge v6, v8, :cond_3

    .line 147
    iget-object v7, v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    .line 148
    iget v9, v7, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->D:I

    if-ne v9, v10, :cond_1

    .line 149
    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Landroid/util/Pair;

    move-result-object v7

    .line 150
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/aS;

    invoke-virtual {v11, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_1
    iget v9, v7, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/aQ;->S:I

    if-ne v9, v10, :cond_2

    .line 152
    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/aU;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)J

    move-result-wide v9

    move-wide v12, v9

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 154
    :cond_3
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 155
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    move v10, v4

    :goto_3
    if-ge v10, v15, :cond_6

    .line 157
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aX:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    .line 158
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aU:I

    sget v7, Lcom/google/vr/sdk/widgets/video/deps/aQ;->I:I

    if-ne v6, v7, :cond_4

    .line 159
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->H:I

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v6

    const/16 v16, 0x0

    move-wide v7, v12

    move-object v9, v2

    move/from16 v17, v10

    move/from16 v10, v16

    invoke-static/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/aR;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aQ$b;JLcom/google/vr/sdk/widgets/video/deps/aa;Z)Lcom/google/vr/sdk/widgets/video/deps/bc;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 161
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    invoke-virtual {v14, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    move/from16 v17, v10

    :cond_5
    :goto_4
    add-int/lit8 v10, v17, 0x1

    goto :goto_3

    .line 163
    :cond_6
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 164
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_8

    :goto_5
    if-ge v4, v1, :cond_7

    .line 166
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/bc;

    .line 167
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget v6, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    invoke-interface {v5, v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 168
    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/aS;

    invoke-virtual {v3, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aS;)V

    .line 169
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    iget v6, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->L:J

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->g:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->L:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 172
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b()V

    .line 173
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    goto :goto_8

    .line 174
    :cond_8
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_9

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    :goto_7
    if-ge v4, v1, :cond_a

    .line 176
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/bc;

    .line 177
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->c:I

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/aS;

    invoke-virtual {v3, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aS;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Landroid/util/SparseArray;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/aQ$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/aU$c;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 230
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->C:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v0

    .line 231
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 235
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->s:J

    .line 236
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a()V

    .line 237
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->B:I

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 239
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aQ;->B:I

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;)J

    move-result-wide v1

    .line 240
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Lcom/google/vr/sdk/widgets/video/deps/aU$c;JI)V

    .line 241
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/be;->a:Lcom/google/vr/sdk/widgets/video/deps/aS;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/aS;->a:I

    .line 242
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-result-object p1

    .line 243
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ah:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 245
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/bd;Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;)V

    .line 246
    :cond_2
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ai:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 248
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;)V

    .line 249
    :cond_3
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->am:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 251
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;)V

    .line 252
    :cond_4
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/aQ;->aj:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object p2

    .line 253
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aQ;->ak:I

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 255
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/be;)V

    .line 256
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    .line 258
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    .line 259
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aU:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/aQ;->al:I

    if-ne v2, v3, :cond_7

    .line 260
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;->aV:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v1, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;[B)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/be;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x0

    .line 405
    invoke-static {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;ILcom/google/vr/sdk/widgets/video/deps/be;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 660
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

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->P:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aQ;->R:I

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

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 59
    :cond_0
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    .line 63
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 66
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 69
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aV:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 73
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    .line 74
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    .line 76
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 77
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->P:I

    if-ne v0, v6, :cond_5

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_5

    .line 80
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 81
    iput-wide v4, v7, Lcom/google/vr/sdk/widgets/video/deps/be;->b:J

    .line 82
    iput-wide v4, v7, Lcom/google/vr/sdk/widgets/video/deps/be;->d:J

    .line 83
    iput-wide v4, v7, Lcom/google/vr/sdk/widgets/video/deps/be;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/aQ;->m:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    .line 86
    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    .line 87
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->J:J

    .line 88
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->V:Z

    if-nez p1, :cond_6

    .line 89
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->L:J

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    .line 90
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->V:Z

    :cond_6
    const/4 p1, 0x2

    .line 91
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    return v3

    .line 93
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 95
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 96
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(J)V

    goto :goto_2

    .line 98
    :cond_8
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a()V

    goto :goto_2

    .line 99
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_c

    .line 100
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    if-ne p1, v1, :cond_b

    .line 102
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_a

    .line 104
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 105
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->A:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    goto :goto_2

    .line 103
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_b
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_c
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_d

    .line 109
    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 110
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    :goto_2
    return v3

    .line 108
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_e
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
    .locals 2

    const/16 v0, 0x8

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 220
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 221
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->r:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->B:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$a;Landroid/util/SparseArray;I[B)V

    .line 181
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aQ$a;->aW:Ljava/util/List;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 185
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->G:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->H:I

    sub-int/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 115
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->F:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->I:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aQ$b;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gA;)V

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/aQ$b;J)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 117
    :goto_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(J)V

    return-void
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
    .locals 2

    const/16 v0, 0x8

    .line 347
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 348
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 349
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aQ;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->z()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 498
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 499
    iget-boolean v6, v5, Lcom/google/vr/sdk/widgets/video/deps/be;->r:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lcom/google/vr/sdk/widgets/video/deps/be;->d:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    .line 500
    iget-wide v1, v5, Lcom/google/vr/sdk/widgets/video/deps/be;->d:J

    .line 501
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    move-wide v8, v1

    move-object v1, v3

    move-wide v2, v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 504
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    return-void

    .line 506
    :cond_2
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 509
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 510
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/be;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    return-void

    .line 508
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 512
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_6

    .line 513
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    if-nez v2, :cond_3

    .line 514
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Landroid/util/SparseArray;)Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    move-result-object v2

    if-nez v2, :cond_1

    .line 516
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->J:J

    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_0

    .line 519
    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a()V

    return v6

    .line 518
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_1
    iget-object v7, v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/be;->g:[J

    iget v8, v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    aget-wide v7, v7, v8

    .line 523
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    if-gez v7, :cond_2

    const-string v7, "FragmentedMp4Extractor"

    const-string v8, "Ignoring negative offset to sample data."

    .line 525
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 527
    :cond_2
    invoke-interface {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 528
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    .line 529
    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->i:[I

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    aget v2, v2, v7

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    .line 530
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->m:Z

    if-eqz v2, :cond_4

    .line 531
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a(Lcom/google/vr/sdk/widgets/video/deps/aU$c;)I

    move-result v2

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    .line 532
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    add-int/2addr v7, v2

    iput v7, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    goto :goto_0

    .line 533
    :cond_4
    iput v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    .line 534
    :goto_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bc;->i:I

    if-ne v2, v5, :cond_5

    .line 535
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    const/16 v7, 0x8

    sub-int/2addr v2, v7

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    .line 536
    invoke-interface {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 537
    :cond_5
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    .line 538
    iput v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    .line 539
    :cond_6
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a:Lcom/google/vr/sdk/widgets/video/deps/be;

    .line 540
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->c:Lcom/google/vr/sdk/widgets/video/deps/bc;

    .line 541
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v9, v8, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 542
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    .line 543
    iget v10, v7, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    const-wide/16 v11, 0x3e8

    if-eqz v10, :cond_a

    .line 544
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v10, v10, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 545
    aput-byte v6, v10, v6

    .line 546
    aput-byte v6, v10, v5

    const/4 v13, 0x2

    .line 547
    aput-byte v6, v10, v13

    .line 548
    iget v13, v7, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    add-int/2addr v13, v5

    .line 549
    iget v14, v7, Lcom/google/vr/sdk/widgets/video/deps/bc;->l:I

    rsub-int/lit8 v14, v14, 0x4

    .line 550
    :goto_1
    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    if-ge v15, v3, :cond_b

    .line 551
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    if-nez v3, :cond_8

    .line 552
    invoke-interface {v1, v10, v14, v13}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 553
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 554
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    .line 555
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 556
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v9, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 557
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->v:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v9, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 558
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->U:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    if-eqz v3, :cond_7

    iget-object v3, v7, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    aget-byte v15, v10, v4

    .line 559
    invoke-static {v3, v15}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v6

    :goto_2
    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->R:Z

    .line 560
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    .line 561
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    add-int/2addr v3, v14

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    const/4 v3, 0x3

    goto :goto_1

    .line 562
    :cond_8
    iget-boolean v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->R:Z

    if-eqz v15, :cond_9

    .line 563
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v15, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 564
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    invoke-interface {v1, v3, v6, v15}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 565
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    invoke-interface {v9, v3, v15}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 566
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    .line 567
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v15, v15, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a([BI)I

    move-result v4

    .line 568
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, v7, Lcom/google/vr/sdk/widgets/video/deps/bc;->h:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 569
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 570
    invoke-virtual {v2, v8}, Lcom/google/vr/sdk/widgets/video/deps/be;->b(I)J

    move-result-wide v4

    mul-long/2addr v4, v11

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->w:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->U:[Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-static {v4, v5, v6, v15}, Lcom/google/vr/sdk/widgets/video/deps/eD;->a(JLcom/google/vr/sdk/widgets/video/deps/gA;[Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    goto :goto_3

    :cond_9
    move v4, v6

    .line 572
    invoke-interface {v9, v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result v3

    .line 573
    :goto_3
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    .line 574
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->Q:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 577
    :cond_a
    :goto_4
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    if-ge v3, v4, :cond_b

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    .line 578
    invoke-interface {v9, v1, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result v4

    .line 579
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->P:I

    goto :goto_4

    .line 581
    :cond_b
    invoke-virtual {v2, v8}, Lcom/google/vr/sdk/widgets/video/deps/be;->b(I)J

    move-result-wide v3

    mul-long/2addr v3, v11

    .line 582
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->z:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    if-eqz v1, :cond_c

    .line 583
    invoke-virtual {v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c(J)J

    move-result-wide v3

    .line 584
    :cond_c
    iget-object v1, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->l:[Z

    aget-boolean v1, v1, v8

    .line 587
    iget-boolean v5, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->m:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v1, v5

    .line 589
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->o:Lcom/google/vr/sdk/widgets/video/deps/bd;

    if-eqz v5, :cond_d

    .line 590
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->o:Lcom/google/vr/sdk/widgets/video/deps/bd;

    goto :goto_5

    .line 591
    :cond_d
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->a:Lcom/google/vr/sdk/widgets/video/deps/aS;

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aS;->a:I

    invoke-virtual {v7, v5}, Lcom/google/vr/sdk/widgets/video/deps/bc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/bd;

    move-result-object v5

    .line 592
    :goto_5
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    move v12, v1

    move-object v15, v5

    goto :goto_6

    :cond_e
    move v12, v1

    move-object v15, v6

    .line 593
    :goto_6
    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->O:I

    const/4 v14, 0x0

    move-wide v10, v3

    invoke-interface/range {v9 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 594
    :goto_7
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->D:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 595
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->D:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/aU$b;

    .line 596
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->K:I

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$b;->b:I

    sub-int/2addr v5, v7

    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->K:I

    .line 597
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->T:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v8, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$b;->a:J

    add-long/2addr v8, v3

    const/4 v10, 0x1

    iget v11, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$b;->b:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->K:I

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    goto :goto_7

    .line 599
    :cond_f
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->e:I

    .line 600
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->f:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->f:I

    .line 601
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->f:I

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/be;->h:[I

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    aget v2, v2, v3

    if-ne v1, v2, :cond_10

    .line 602
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->g:I

    .line 603
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->f:I

    .line 604
    iput-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->N:Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    :cond_10
    const/4 v1, 0x3

    .line 605
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    return v4
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->E:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->e(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->d(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->c(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public a(JJ)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 36
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    invoke-virtual {p4}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->D:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 39
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->K:I

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->C:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 41
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 3

    .line 26
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->s:Lcom/google/vr/sdk/widgets/video/deps/bc;

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aU$c;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->s:Lcom/google/vr/sdk/widgets/video/deps/bc;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bc;->d:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->s:Lcom/google/vr/sdk/widgets/video/deps/bc;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aS;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/aS;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/aU$c;->a(Lcom/google/vr/sdk/widgets/video/deps/bc;Lcom/google/vr/sdk/widgets/video/deps/aS;)V

    .line 30
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->t:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/aU;->b()V

    .line 32
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aU;->S:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bb;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
