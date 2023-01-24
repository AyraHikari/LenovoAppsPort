.class final Lcom/google/vr/sdk/widgets/video/deps/k$a;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cV;

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[Lcom/google/vr/sdk/widgets/video/deps/db;

.field public final e:[Z

.field public final f:J

.field public g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

.field public h:Z

.field public i:Z

.field public j:Lcom/google/vr/sdk/widgets/video/deps/k$a;

.field public k:Lcom/google/vr/sdk/widgets/video/deps/fl;

.field private final l:[Lcom/google/vr/sdk/widgets/video/deps/u;

.field private final m:[Lcom/google/vr/sdk/widgets/video/deps/v;

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/fk;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/p;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private q:Lcom/google/vr/sdk/widgets/video/deps/fl;


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/u;[Lcom/google/vr/sdk/widgets/video/deps/v;JLcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;Lcom/google/vr/sdk/widgets/video/deps/cW;Ljava/lang/Object;ILcom/google/vr/sdk/widgets/video/deps/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->l:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->m:[Lcom/google/vr/sdk/widgets/video/deps/v;

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->f:J

    .line 5
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk;

    .line 6
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->o:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 7
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->p:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 8
    invoke-static {p8}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b:Ljava/lang/Object;

    .line 9
    iput p9, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    .line 10
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    .line 11
    array-length p2, p1

    new-array p2, p2, [Lcom/google/vr/sdk/widgets/video/deps/db;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    .line 12
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e:[Z

    .line 13
    iget-object p1, p10, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-interface {p6}, Lcom/google/vr/sdk/widgets/video/deps/p;->d()Lcom/google/vr/sdk/widgets/video/deps/fn;

    move-result-object p2

    invoke-interface {p7, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object p1

    .line 14
    iget-wide p2, p10, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long p2, p2, p4

    if-eqz p2, :cond_0

    .line 15
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/cL;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cV;Z)V

    const-wide/16 p3, 0x0

    .line 16
    iget-wide p5, p10, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/cL;->a(JJ)V

    move-object p1, p2

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 22
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->c:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->f:J

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->f:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public a(J)J
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JZ)J
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->l:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 57
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    const/4 v2, 0x0

    move v3, v2

    .line 58
    :goto_0
    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fj;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 59
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->q:Lcom/google/vr/sdk/widgets/video/deps/fl;

    .line 60
    invoke-virtual {v6, v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/fl;->a(Lcom/google/vr/sdk/widgets/video/deps/fl;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a()[Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v7

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->e:[Z

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J

    move-result-wide v3

    .line 63
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iput-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->q:Lcom/google/vr/sdk/widgets/video/deps/fl;

    .line 64
    iput-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->i:Z

    move v6, v2

    .line 65
    :goto_2
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/db;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 66
    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    .line 67
    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 68
    iput-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->i:Z

    goto :goto_5

    .line 69
    :cond_3
    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v7

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move v7, v2

    :goto_4
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 71
    :cond_5
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->o:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->l:[Lcom/google/vr/sdk/widgets/video/deps/u;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/fl;->a:Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/p;->a([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;)V

    return-wide v3
.end method

.method public a(ZJ)Z
    .locals 4

    .line 28
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->d()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->g:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->o:Lcom/google/vr/sdk/widgets/video/deps/p;

    invoke-virtual {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(JZ)Z

    move-result p1

    return p1
.end method

.method public b(J)J
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public b()Z
    .locals 4

    .line 25
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    .line 26
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    .line 36
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->d()Z

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a(JZ)J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a(J)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    return-void
.end method

.method public c(J)Z
    .locals 4

    .line 40
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->h:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->e()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 45
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->o:Lcom/google/vr/sdk/widgets/video/deps/p;

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(J)Z

    move-result p1

    return p1
.end method

.method public d(J)V
    .locals 1

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/k$a;->b(J)J

    move-result-wide p1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c(J)Z

    return-void
.end method

.method public d()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->m:[Lcom/google/vr/sdk/widgets/video/deps/v;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    .line 50
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->b()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a([Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;)Lcom/google/vr/sdk/widgets/video/deps/fl;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->q:Lcom/google/vr/sdk/widgets/video/deps/fl;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fl;->a(Lcom/google/vr/sdk/widgets/video/deps/fl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->k:Lcom/google/vr/sdk/widgets/video/deps/fl;

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->g:Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->p:Lcom/google/vr/sdk/widgets/video/deps/cW;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cL;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->p:Lcom/google/vr/sdk/widgets/video/deps/cW;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    .line 78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
