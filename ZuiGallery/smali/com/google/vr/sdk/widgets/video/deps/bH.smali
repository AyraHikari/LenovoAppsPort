.class public final Lcom/google/vr/sdk/widgets/video/deps/bH;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bO;


# static fields
.field private static final a:Ljava/lang/String; = "PesReader"

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x9

.field private static final g:I = 0xa

.field private static final h:I = 0xa


# instance fields
.field private final i:Lcom/google/vr/sdk/widgets/video/deps/bz;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private k:I

.field private l:I

.field private m:Lcom/google/vr/sdk/widgets/video/deps/gJ;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->k:I

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->k:I

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->l:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z
    .locals 3

    .line 51
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->l:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->l:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 57
    :goto_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->l:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private b()Z
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PesReader"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    .line 67
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 68
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->s:Z

    .line 69
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 70
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->n:Z

    .line 71
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->o:Z

    .line 72
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 73
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->q:I

    if-nez v0, :cond_1

    .line 75
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    .line 76
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    :goto_0
    return v3
.end method

.method private c()V
    .locals 10

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->t:J

    .line 80
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->n:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 83
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 84
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 85
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 86
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 87
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 88
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->p:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->o:Z

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 90
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 91
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 92
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 93
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 94
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 95
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 96
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->m:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    .line 97
    iput-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->p:Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->m:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->t:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->k:I

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->l:I

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->p:Z

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a()V

    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/gA;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p2, :cond_3

    .line 15
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->k:I

    const-string v4, "PesReader"

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    if-eq p2, v0, :cond_1

    const/16 v5, 0x3b

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected start indicator: expected "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " more bytes"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/bz;->b()V

    goto :goto_0

    :cond_2
    const-string p2, "Unexpected start indicator reading extended header"

    .line 17
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(I)V

    .line 23
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    if-lez p2, :cond_b

    .line 24
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->k:I

    if-eqz p2, :cond_a

    const/4 v4, 0x0

    if-eq p2, v1, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_4

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    .line 36
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    if-ne v5, v0, :cond_5

    goto :goto_2

    :cond_5
    sub-int v4, p2, v5

    :goto_2
    if-lez v4, :cond_6

    sub-int/2addr p2, v4

    .line 39
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 40
    :cond_6
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 41
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    if-eq v4, v0, :cond_3

    sub-int/2addr v4, p2

    .line 42
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->r:I

    if-nez v4, :cond_3

    .line 44
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/bz;->b()V

    .line 45
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(I)V

    goto :goto_1

    :cond_7
    const/16 p2, 0xa

    .line 29
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->q:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 30
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    invoke-direct {p0, p1, v4, p2}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->q:I

    .line 31
    invoke-direct {p0, p1, p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 32
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bH;->c()V

    .line 33
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->t:J

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->s:Z

    invoke-interface {p2, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(JZ)V

    .line 34
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(I)V

    goto :goto_1

    .line 27
    :cond_8
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    const/16 v5, 0x9

    invoke-direct {p0, p1, p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 28
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bH;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    move v4, v3

    :cond_9
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/bH;->a(I)V

    goto/16 :goto_1

    .line 25
    :cond_a
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->m:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bH;->i:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    return-void
.end method
