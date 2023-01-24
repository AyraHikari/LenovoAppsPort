.class final Lcom/google/vr/sdk/widgets/video/deps/ek$a;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/fL<",
        "Lcom/google/vr/sdk/widgets/video/deps/ei;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/ek;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/vr/sdk/widgets/video/deps/eh;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 3
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->h:J

    .line 4
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p4, "HlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 5
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/fL;

    .line 6
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/dV;

    move-result-object p4

    const/4 v0, 0x4

    invoke-interface {p4, v0}, Lcom/google/vr/sdk/widgets/video/deps/dV;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p4

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/eg;->s:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 8
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object p1

    invoke-direct {p3, p4, p2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fL;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ek$a;)J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->i:J

    return-wide v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eh;)V
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 55
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->f:J

    .line 56
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {v3, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object v3

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-eq v3, v0, :cond_0

    .line 59
    iput-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->k:Ljava/io/IOException;

    .line 60
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->g:J

    .line 61
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-static {p1, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/eh;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->l:J

    goto :goto_1

    .line 63
    :cond_0
    iget-boolean v0, v3, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-nez v0, :cond_3

    .line 64
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->g:J

    sub-long/2addr v1, v7

    long-to-double v0, v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/eh;->l:J

    .line 65
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v7, 0x400c000000000000L    # 3.5

    mul-double/2addr v2, v7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 66
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ek$d;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/ek$d;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ek$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->k:Ljava/io/IOException;

    .line 67
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->f()V

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    if-ge v0, p1, :cond_2

    .line 69
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ek$c;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/ek$c;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ek$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->k:Ljava/io/IOException;

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->l:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v4

    :goto_1
    cmp-long p1, v0, v4

    if-eqz p1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->h(Lcom/google/vr/sdk/widgets/video/deps/ek;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->j:Z

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ek$a;Lcom/google/vr/sdk/widgets/video/deps/eh;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/eh;)V

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/ek$a;)Lcom/google/vr/sdk/widgets/video/deps/eg$a;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    return-object p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/ek$a;)J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->h:J

    return-wide v0
.end method

.method private f()V
    .locals 4

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->i:J

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 77
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v12, p6

    .line 39
    instance-of v13, v12, Lcom/google/vr/sdk/widgets/video/deps/r;

    .line 40
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->e(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-result-object v1

    move-object v2, p1

    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v8

    const/4 v4, 0x4

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    move v11, v13

    .line 42
    invoke-virtual/range {v1 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJLjava/io/IOException;Z)V

    if-eqz v13, :cond_0

    const/4 v1, 0x3

    return v1

    .line 46
    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dr;->a(Ljava/lang/Exception;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 47
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->f()V

    .line 48
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->f(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    move-result-object v1

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->g(Lcom/google/vr/sdk/widgets/video/deps/ek;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    return v2
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->h:J

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 79
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 78
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            ">;JJ)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 28
    instance-of v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/eh;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/eh;)V

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->e(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-result-object v1

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v3, 0x4

    .line 31
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 32
    invoke-virtual/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "Loaded playlist has unexpected type."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->k:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            ">;JJZ)V"
        }
    .end annotation

    .line 35
    iget-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {p6}, Lcom/google/vr/sdk/widgets/video/deps/ek;->e(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-result-object v0

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 36
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    const/4 v2, 0x4

    move-wide v3, p2

    move-wide v5, p4

    .line 37
    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

    return-void
.end method

.method public b()Z
    .locals 9

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    invoke-static {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->e:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e:Lcom/google/vr/sdk/widgets/video/deps/eh;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->e:I

    if-eq v0, v6, :cond_1

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->f:J

    add-long/2addr v7, v4

    cmp-long v0, v7, v2

    if-lez v0, :cond_2

    :cond_1
    move v1, v6

    :cond_2
    return v1
.end method

.method public c()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->c()V

    return-void
.end method

.method public d()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->i:J

    .line 20
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d:Lcom/google/vr/sdk/widgets/video/deps/fL;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->d(Lcom/google/vr/sdk/widgets/video/deps/ek;)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    throw v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->j:Z

    .line 51
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d()V

    return-void
.end method
