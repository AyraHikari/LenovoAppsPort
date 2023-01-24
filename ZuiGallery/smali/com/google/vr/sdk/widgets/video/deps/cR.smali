.class final Lcom/google/vr/sdk/widgets/video/deps/cR;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/au;
.implements Lcom/google/vr/sdk/widgets/video/deps/cV;
.implements Lcom/google/vr/sdk/widgets/video/deps/da$b;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cR$b;,
        Lcom/google/vr/sdk/widgets/video/deps/cR$a;,
        Lcom/google/vr/sdk/widgets/video/deps/cR$d;,
        Lcom/google/vr/sdk/widgets/video/deps/cR$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/au;",
        "Lcom/google/vr/sdk/widgets/video/deps/cV;",
        "Lcom/google/vr/sdk/widgets/video/deps/da$b;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/cR$a;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$d;"
    }
.end annotation


# static fields
.field private static final a:J = 0x2710L


# instance fields
.field private A:J

.field private B:[Z

.field private C:[Z

.field private D:Z

.field private E:J

.field private F:J

.field private G:J

.field private H:I

.field private I:Z

.field private J:Z

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/cR$c;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/fn;

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/gr;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private q:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

.field private r:Lcom/google/vr/sdk/widgets/video/deps/az;

.field private s:[Lcom/google/vr/sdk/widgets/video/deps/da;

.field private t:[I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Lcom/google/vr/sdk/widgets/video/deps/di;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;[Lcom/google/vr/sdk/widgets/video/deps/as;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Lcom/google/vr/sdk/widgets/video/deps/cR$c;Lcom/google/vr/sdk/widgets/video/deps/fn;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->b:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 4
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->d:I

    .line 5
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->e:Landroid/os/Handler;

    .line 6
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->f:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

    .line 7
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->g:Lcom/google/vr/sdk/widgets/video/deps/cR$c;

    .line 8
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->h:Lcom/google/vr/sdk/widgets/video/deps/fn;

    .line 9
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->i:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->j:J

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    invoke-direct {p1, p3, p0}, Lcom/google/vr/sdk/widgets/video/deps/cR$b;-><init>([Lcom/google/vr/sdk/widgets/video/deps/as;Lcom/google/vr/sdk/widgets/video/deps/au;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->l:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gr;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->m:Lcom/google/vr/sdk/widgets/video/deps/gr;

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cR$1;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cR$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cR;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->n:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cR$2;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cR$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cR;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->o:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->p:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 17
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->t:[I

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 18
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    const-wide/16 p1, -0x1

    .line 20
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->E:J

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)V
    .locals 4

    .line 219
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->E:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 220
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->E:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cR;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->i()V

    return-void
.end method

.method private a(Ljava/io/IOException;)Z
    .locals 0

    .line 271
    instance-of p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dj;

    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)V
    .locals 6

    .line 239
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->E:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/az;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 241
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->F:J

    .line 242
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->x:Z

    .line 243
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 244
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a(JJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Ljava/io/IOException;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->f:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

    if-eqz v1, :cond_0

    .line 273
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cR$3;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cR$3;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cR;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/cR;)Z
    .locals 0

    .line 279
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->J:Z

    return p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/cR;)Lcom/google/vr/sdk/widgets/video/deps/cV$a;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->q:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/cR;)Lcom/google/vr/sdk/widgets/video/deps/cS$a;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->f:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

    return-object p0
.end method

.method private d(J)Z
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 250
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v4, v4, v2

    .line 251
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->i()V

    .line 252
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->C:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->D:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    .line 255
    :cond_2
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/cR;)Ljava/lang/String;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/google/vr/sdk/widgets/video/deps/cR;)J
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->j:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/vr/sdk/widgets/video/deps/cR;)Ljava/lang/Runnable;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/google/vr/sdk/widgets/video/deps/cR;)Landroid/os/Handler;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 8

    .line 194
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->J:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->u:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 197
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->g()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->m:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gr;->b()Z

    .line 201
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    .line 202
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    .line 203
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->C:[Z

    .line 204
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->B:[Z

    .line 205
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/az;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->A:J

    move v3, v2

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 207
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->g()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v5

    .line 208
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dh;

    new-array v7, v4, [Lcom/google/vr/sdk/widgets/video/deps/m;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object v6, v1, v3

    .line 209
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 210
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 211
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->C:[Z

    aput-boolean v4, v5, v3

    .line 212
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->D:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->D:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->z:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 215
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    .line 216
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->g:Lcom/google/vr/sdk/widgets/video/deps/cR$c;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->A:J

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/az;->a()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cR$c;->a(JZ)V

    .line 217
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->q:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private j()V
    .locals 9

    .line 222
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/cR$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->l:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->m:Lcom/google/vr/sdk/widgets/video/deps/gr;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cR$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cR;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/cR$b;Lcom/google/vr/sdk/widgets/video/deps/gr;)V

    .line 223
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->m()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 225
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->A:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    .line 227
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    invoke-interface {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/az;->b(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a(JJ)V

    .line 230
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->k()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->H:I

    .line 232
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 234
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->E:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/az;->b()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    .line 237
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    return-void
.end method

.method private k()I
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 260
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->c()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private l()J
    .locals 7

    .line 264
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 266
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v5

    .line 267
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private m()Z
    .locals 4

    .line 270
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

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


# virtual methods
.method a(IJ)I
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, v0, p1

    .line 143
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->l()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method a(ILcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 8

    .line 139
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->x:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v1, v0, p1

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->F:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZJ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x3

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;JJLjava/io/IOException;)I
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)V

    .line 166
    invoke-direct {p0, p6}, Lcom/google/vr/sdk/widgets/video/deps/cR;->b(Ljava/io/IOException;)V

    .line 167
    invoke-direct {p0, p6}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    return p1

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->k()I

    move-result p2

    .line 170
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->H:I

    if-le p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 171
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cR;->b(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)V

    .line 172
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->k()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->H:I

    return p2
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 275
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cR$a;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J
    .locals 6

    .line 42
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    const/4 v1, 0x0

    move v2, v1

    .line 44
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 45
    aget-object v3, p3, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v2

    if-nez v3, :cond_1

    .line 46
    :cond_0
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cR$d;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$d;)I

    move-result v3

    .line 47
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->B:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 48
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    .line 49
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->B:[Z

    aput-boolean v1, v4, v3

    const/4 v3, 0x0

    .line 50
    aput-object v3, p3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->w:Z

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_4

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    move v0, v1

    .line 53
    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_9

    .line 54
    aget-object v2, p3, v0

    if-nez v2, :cond_8

    aget-object v2, p1, v0

    if-eqz v2, :cond_8

    .line 55
    aget-object v2, p1, v0

    .line 56
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/fi;->e()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 57
    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b(I)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 58
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->z:Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v2

    .line 59
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->B:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 60
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    .line 61
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->B:[Z

    aput-boolean v4, v3, v2

    .line 62
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cR$d;

    invoke-direct {v3, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cR$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cR;I)V

    aput-object v3, p3, v0

    .line 63
    aput-boolean v4, p4, v0

    if-nez p2, :cond_8

    .line 65
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p2, p2, v2

    .line 66
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->i()V

    .line 67
    invoke-virtual {p2, p5, p6, v4, v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 68
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->e()I

    move-result p2

    if-eqz p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v1

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 70
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    if-nez p1, :cond_c

    .line 71
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->x:Z

    .line 72
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 73
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_a

    aget-object p3, p1, v1

    .line 74
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/da;->k()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 76
    :cond_a
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->b()V

    goto :goto_a

    .line 77
    :cond_b
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p1

    :goto_8
    if-ge v1, p2, :cond_e

    aget-object p3, p1, v1

    .line 78
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 81
    invoke-virtual {p0, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/cR;->b(J)J

    move-result-wide p5

    .line 82
    :goto_9
    array-length p1, p3

    if-ge v1, p1, :cond_e

    .line 83
    aget-object p1, p3, v1

    if-eqz p1, :cond_d

    .line 84
    aput-boolean v4, p4, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 86
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->w:Z

    return-wide p5
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;
    .locals 3

    .line 174
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->t:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->h:Lcom/google/vr/sdk/widgets/video/deps/fn;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    .line 180
    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/da$b;)V

    .line 181
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->t:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->t:[I

    .line 182
    aput p1, v1, p2

    .line 183
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/da;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 184
    aput-object v0, p1, p2

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->u:Z

    .line 187
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->B:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/az;)V
    .locals 1

    .line 189
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    .line 190
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;JJ)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)V

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    .line 149
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->A:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->l()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    .line 152
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->A:J

    .line 153
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->g:Lcom/google/vr/sdk/widgets/video/deps/cR$c;

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-interface {p4}, Lcom/google/vr/sdk/widgets/video/deps/az;->a()Z

    move-result p4

    invoke-interface {p3, p1, p2, p4}, Lcom/google/vr/sdk/widgets/video/deps/cR$c;->a(JZ)V

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->q:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;JJZ)V
    .locals 0

    if-eqz p6, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)V

    .line 159
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    .line 160
    invoke-virtual {p4}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    if-lez p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->q:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->q:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    .line 36
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->m:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gr;->a()Z

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->j()V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 277
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cR$a;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 276
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cR$a;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(I)Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a_()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->h()V

    return-void
.end method

.method public b(J)J
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->r:Lcom/google/vr/sdk/widgets/video/deps/az;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/az;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 124
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->F:J

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->x:Z

    .line 126
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cR;->d(J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-wide p1

    .line 128
    :cond_1
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    .line 129
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    .line 130
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->b()V

    goto :goto_2

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 133
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->z:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->x:Z

    .line 103
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->F:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 0

    .line 93
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->m:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gr;->a()Z

    move-result p1

    .line 96
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->j()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()J
    .locals 8

    .line 105
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->I:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->G:J

    return-wide v0

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->D:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    .line 111
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 113
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->C:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v6, v6, v5

    .line 115
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v6

    .line 116
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->l()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 120
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->F:J

    :cond_5
    return-wide v3
.end method

.method public e()J
    .locals 2

    .line 100
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->y:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)Z

    move-result v0

    .line 23
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->v:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->J:Z

    return-void
.end method

.method public g()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->l:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cR$b;->a()V

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->s:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    return-void
.end method
