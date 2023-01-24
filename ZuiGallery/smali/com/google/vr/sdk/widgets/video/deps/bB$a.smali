.class final Lcom/google/vr/sdk/widgets/video/deps/bB$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x80

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x5

.field private static final e:I = 0x9


# instance fields
.field private final f:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private final g:Z

.field private final h:Z

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/gy$b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/gy$a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/gB;

.field private l:[B

.field private m:I

.field private n:I

.field private o:J

.field private p:Z

.field private q:J

.field private r:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

.field private s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

.field private t:Z

.field private u:J

.field private v:J

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/aA;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->f:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->g:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->h:Z

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->i:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->j:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bB$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->r:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bB$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->l:[B

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->l:[B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lcom/google/vr/sdk/widgets/video/deps/gB;-><init>([BII)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->b()V

    return-void
.end method

.method private a(I)V
    .locals 7

    .line 124
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->w:Z

    .line 125
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->o:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->u:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 126
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->f:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->v:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 5

    .line 112
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->r:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    .line 113
    invoke-static {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->a(Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->t:Z

    if-eqz v0, :cond_1

    .line 115
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->o:J

    sub-long/2addr p1, v3

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 116
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->a(I)V

    .line 117
    :cond_1
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->o:J

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->u:J

    .line 118
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->q:J

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->v:J

    .line 119
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->w:Z

    .line 120
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->t:Z

    .line 121
    :cond_2
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->w:Z

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->n:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_3

    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->g:Z

    if-eqz p3, :cond_4

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    .line 122
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->w:Z

    return-void
.end method

.method public a(JIJ)V
    .locals 0

    .line 22
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->n:I

    .line 23
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->q:J

    .line 24
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->o:J

    .line 25
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->g:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->h:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->n:I

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->r:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    .line 27
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->r:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    .line 28
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    .line 29
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->a()V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->m:I

    .line 31
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->p:Z

    :cond_2
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gy$a;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->j:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gy$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gy$b;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->i:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 33
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->p:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 36
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->l:[B

    array-length v4, v3

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->m:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/2addr v5, v7

    .line 37
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->l:[B

    .line 38
    :cond_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->l:[B

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->m:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->m:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->m:I

    .line 40
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->l:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a([BII)V

    .line 41
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 43
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a()V

    .line 44
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v10

    .line 45
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    .line 46
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 48
    :cond_3
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    .line 49
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 51
    :cond_4
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v11

    .line 52
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->h:Z

    if-nez v1, :cond_5

    .line 53
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->p:Z

    .line 54
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    invoke-virtual {v1, v11}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->a(I)V

    return-void

    .line 56
    :cond_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 58
    :cond_6
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v13

    .line 59
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 60
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->p:Z

    return-void

    .line 62
    :cond_7
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/gy$a;

    .line 63
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->i:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/gy$a;->b:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    .line 64
    iget-boolean v3, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->e:Z

    if-eqz v3, :cond_9

    .line 65
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 67
    :cond_8
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/gB;->a(I)V

    .line 68
    :cond_9
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget v5, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->g:I

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 73
    :cond_a
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget v5, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->g:I

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v12

    .line 74
    iget-boolean v3, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->f:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 75
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 77
    :cond_b
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 79
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 81
    :cond_c
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b()Z

    move-result v6

    move v14, v3

    move v15, v5

    move/from16 v16, v6

    goto :goto_1

    :cond_d
    move v14, v3

    move v15, v4

    goto :goto_0

    :cond_e
    move v14, v4

    move v15, v14

    :goto_0
    move/from16 v16, v15

    .line 83
    :goto_1
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->n:I

    if-ne v3, v2, :cond_f

    move/from16 v17, v5

    goto :goto_2

    :cond_f
    move/from16 v17, v4

    :goto_2
    if-eqz v17, :cond_11

    .line 86
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 88
    :cond_10
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->d()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    move/from16 v18, v4

    .line 93
    :goto_3
    iget v2, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->h:I

    if-nez v2, :cond_15

    .line 94
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget v3, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->i:I

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gB;->b(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 96
    :cond_12
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    iget v3, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->i:I

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c(I)I

    move-result v2

    .line 97
    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gy$a;->c:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 98
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 100
    :cond_13
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->e()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v4

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    move/from16 v20, v4

    goto :goto_4

    .line 101
    :cond_15
    iget v2, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->h:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->j:Z

    if-nez v2, :cond_19

    .line 102
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 104
    :cond_16
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gB;->e()I

    move-result v2

    .line 105
    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gy$a;->c:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 106
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 108
    :cond_17
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->k:Lcom/google/vr/sdk/widgets/video/deps/gB;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gB;->e()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_6

    :cond_18
    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    move/from16 v22, v20

    goto :goto_6

    :cond_19
    move/from16 v19, v4

    move/from16 v20, v19

    :goto_4
    move/from16 v21, v20

    :goto_5
    move/from16 v22, v21

    .line 109
    :goto_6
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    invoke-virtual/range {v8 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gy$b;IIIIZZZZIIIII)V

    .line 110
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->p:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->h:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->p:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->t:Z

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a;->s:Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->a()V

    return-void
.end method
