.class Lcom/google/vr/sdk/widgets/video/deps/bN$c;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field private static final b:I = 0x5

.field private static final c:I = 0xa

.field private static final d:I = 0x6a

.field private static final e:I = 0x7a

.field private static final f:I = 0x7b

.field private static final g:I = 0x59


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/bN;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/bO;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/SparseIntArray;

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bN;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->i:Landroid/util/SparseArray;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->k:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/bO$b;
    .locals 12

    .line 72
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    move-object v2, v1

    .line 77
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v4

    if-ge v4, p2, :cond_9

    .line 78
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    .line 79
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v5

    .line 80
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0x87

    const/16 v9, 0x81

    if-ne v4, v5, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v4

    .line 83
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bN;->b()J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    goto :goto_2

    .line 87
    :cond_1
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bN;->d()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-nez v4, :cond_8

    const/16 v3, 0x24

    goto :goto_4

    :cond_2
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v9

    goto :goto_4

    :cond_3
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_4

    :goto_2
    move v3, v8

    goto :goto_4

    :cond_4
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_5

    const/16 v3, 0x8a

    goto :goto_4

    :cond_5
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_6

    .line 96
    invoke-virtual {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    if-ne v4, v7, :cond_8

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :goto_3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v3

    if-ge v3, v6, :cond_7

    .line 101
    invoke-virtual {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    const/4 v5, 0x4

    new-array v9, v5, [B

    const/4 v10, 0x0

    .line 104
    invoke-virtual {p1, v9, v10, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 105
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/bO$a;

    invoke-direct {v5, v3, v4, v9}, Lcom/google/vr/sdk/widgets/video/deps/bO$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move v3, v7

    .line 107
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto/16 :goto_0

    .line 109
    :cond_9
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 110
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/bO$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 111
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bO$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bN;->d(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    .line 14
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/bN;->e(Lcom/google/vr/sdk/widgets/video/deps/bN;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->a()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/gJ;-><init>(J)V

    .line 15
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/bN;->e(Lcom/google/vr/sdk/widgets/video/deps/bN;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bN;->e(Lcom/google/vr/sdk/widgets/video/deps/bN;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 16
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v6

    const/4 v7, 0x5

    .line 18
    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 19
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v1, v8, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;I)V

    .line 20
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 21
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v8

    .line 22
    invoke-virtual {v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 23
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v8

    const/16 v11, 0x2000

    const/16 v12, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/bN;->f(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    move-result-object v8

    if-nez v8, :cond_3

    .line 24
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/bO$b;

    new-array v13, v4, [B

    const/4 v14, 0x0

    invoke-direct {v8, v12, v14, v14, v13}, Lcom/google/vr/sdk/widgets/video/deps/bO$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 25
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/bN;->g(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO$c;

    move-result-object v14

    invoke-interface {v14, v12, v8}, Lcom/google/vr/sdk/widgets/video/deps/bO$c;->a(ILcom/google/vr/sdk/widgets/video/deps/bO$b;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;Lcom/google/vr/sdk/widgets/video/deps/bO;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    .line 26
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/bN;->f(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    move-result-object v8

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/bN;->h(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/au;

    move-result-object v13

    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/bO$d;

    invoke-direct {v14, v6, v12, v11}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;-><init>(III)V

    invoke-interface {v8, v2, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/bO;->a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    .line 27
    :cond_3
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->i:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 28
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v8

    :goto_2
    if-lez v8, :cond_a

    .line 31
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v1, v13, v7}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;I)V

    .line 32
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v13

    .line 33
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 34
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v15, 0xd

    invoke-virtual {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v14

    .line 35
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v15, v9}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 36
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->h:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v15, v10}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v15

    .line 37
    invoke-direct {v0, v1, v15}, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/bO$b;

    move-result-object v7

    const/4 v9, 0x6

    if-ne v13, v9, :cond_4

    .line 39
    iget v13, v7, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->a:I

    :cond_4
    add-int/lit8 v15, v15, 0x5

    sub-int/2addr v8, v15

    .line 41
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v9

    if-ne v9, v3, :cond_5

    move v9, v13

    goto :goto_3

    :cond_5
    move v9, v14

    .line 42
    :goto_3
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v15}, Lcom/google/vr/sdk/widgets/video/deps/bN;->i(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseBooleanArray;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_5

    .line 44
    :cond_6
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v15}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v15

    if-ne v15, v3, :cond_7

    if-ne v13, v12, :cond_7

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/bN;->f(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    move-result-object v7

    goto :goto_4

    .line 45
    :cond_7
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v15}, Lcom/google/vr/sdk/widgets/video/deps/bN;->g(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO$c;

    move-result-object v15

    invoke-interface {v15, v13, v7}, Lcom/google/vr/sdk/widgets/video/deps/bO$c;->a(ILcom/google/vr/sdk/widgets/video/deps/bO$b;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    move-result-object v7

    .line 46
    :goto_4
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v13

    if-ne v13, v3, :cond_8

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    .line 47
    invoke-virtual {v13, v9, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    if-ge v14, v13, :cond_9

    .line 48
    :cond_8
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->i:Landroid/util/SparseArray;

    invoke-virtual {v13, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_5
    const/4 v7, 0x5

    const/4 v9, 0x4

    goto/16 :goto_2

    .line 51
    :cond_a
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    move v7, v4

    :goto_6
    if-ge v7, v1, :cond_d

    .line 53
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 54
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/bN;->i(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->i:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/bO;

    if-eqz v9, :cond_c

    .line 57
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/bN;->f(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO;

    move-result-object v10

    if-eq v9, v10, :cond_b

    .line 58
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/bN;->h(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/au;

    move-result-object v10

    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/bO$d;

    invoke-direct {v12, v6, v8, v11}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;-><init>(III)V

    invoke-interface {v9, v2, v10, v12}, Lcom/google/vr/sdk/widgets/video/deps/bO;->a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    .line 59
    :cond_b
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 61
    :cond_d
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 62
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->j(Lcom/google/vr/sdk/widgets/video/deps/bN;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 63
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->h(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/au;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 64
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;I)I

    .line 65
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;Z)Z

    goto :goto_8

    .line 66
    :cond_e
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->k:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v2

    if-ne v2, v5, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bN;->d(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_7
    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;I)I

    .line 68
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->d(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result v1

    if-nez v1, :cond_10

    .line 69
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->h(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/au;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 70
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bN$c;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;Z)Z

    :cond_10
    :goto_8
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 0

    return-void
.end method
