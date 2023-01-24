.class public final Lcom/google/vr/sdk/widgets/video/deps/ek;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ek$a;,
        Lcom/google/vr/sdk/widgets/video/deps/ek$b;,
        Lcom/google/vr/sdk/widgets/video/deps/ek$e;,
        Lcom/google/vr/sdk/widgets/video/deps/ek$c;,
        Lcom/google/vr/sdk/widgets/video/deps/ek$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/fL<",
        "Lcom/google/vr/sdk/widgets/video/deps/ei;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:D = 3.5

.field private static final b:J = 0x3a98L


# instance fields
.field private final c:Landroid/net/Uri;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/dV;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/ej;

.field private final f:I

.field private final g:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/ek$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/ek$e;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/ek$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/eg;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

.field private o:Lcom/google/vr/sdk/widgets/video/deps/eh;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/dV;Lcom/google/vr/sdk/widgets/video/deps/cJ$a;ILcom/google/vr/sdk/widgets/video/deps/ek$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->c:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:Lcom/google/vr/sdk/widgets/video/deps/dV;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    .line 5
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->i:Lcom/google/vr/sdk/widgets/video/deps/ek$e;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p2, "HlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ej;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ej;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->e:Lcom/google/vr/sdk/widgets/video/deps/ej;

    .line 10
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/dV;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:Lcom/google/vr/sdk/widgets/video/deps/dV;

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 2

    .line 115
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/eh;->a(Lcom/google/vr/sdk/widgets/video/deps/eh;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-boolean p2, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eh;->b()Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object p1

    :cond_0
    return-object p1

    .line 119
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)J

    move-result-wide v0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)I

    move-result p1

    .line 121
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/eh;->a(JI)Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ek$b;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ek$b;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 95
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 96
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    invoke-direct {v5, p0, v4, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V

    .line 97
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/eh;)Z
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/eh;

    if-nez v0, :cond_0

    .line 102
    iget-boolean v0, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->p:Z

    .line 103
    :cond_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/eh;

    .line 104
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->i:Lcom/google/vr/sdk/widgets/video/deps/ek$e;

    invoke-interface {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek$e;->a(Lcom/google/vr/sdk/widgets/video/deps/eh;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 107
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/ek$b;

    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/ek$b;->h()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/eh;)Z
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;Lcom/google/vr/sdk/widgets/video/deps/eh;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)J
    .locals 4

    .line 122
    iget-boolean v0, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->o:Z

    if-eqz v0, :cond_0

    .line 123
    iget-wide p1, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    return-wide p1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/eh;

    if-eqz v0, :cond_1

    .line 125
    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    .line 128
    :cond_2
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 129
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->d(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 131
    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-wide v0, v3, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    add-long/2addr p1, v0

    return-wide p1

    .line 132
    :cond_3
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    sub-int/2addr p2, v3

    if-ne v2, p2, :cond_4

    .line 133
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eh;->a()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/eg;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->m:Lcom/google/vr/sdk/widgets/video/deps/eg;

    return-object p0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)I
    .locals 3

    .line 135
    iget-boolean v0, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->h:Z

    if-eqz v0, :cond_0

    .line 136
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->i:I

    return p1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/eh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 138
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->i:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez p1, :cond_2

    return v0

    .line 141
    :cond_2
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->d(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->i:I

    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->c:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    .line 144
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->c:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/ej;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->e:Lcom/google/vr/sdk/widgets/video/deps/ej;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/ek;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    return p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh;)Lcom/google/vr/sdk/widgets/video/deps/eh$b;
    .locals 1

    .line 147
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    sub-int/2addr p1, v0

    .line 148
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    .line 149
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/cJ$a;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    return-object p0
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->m:Lcom/google/vr/sdk/widgets/video/deps/eg;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/eh;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    .line 87
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c(Lcom/google/vr/sdk/widgets/video/deps/ek$a;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 89
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 90
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/google/vr/sdk/widgets/video/deps/ek;)Lcom/google/vr/sdk/widgets/video/deps/eg$a;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    return-object p0
.end method

.method private f()Z
    .locals 9

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->m:Lcom/google/vr/sdk/widgets/video/deps/eg;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 76
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    .line 77
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ek$a;)J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    .line 78
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ek$a;)Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 79
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method static synthetic g(Lcom/google/vr/sdk/widgets/video/deps/ek;)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/google/vr/sdk/widgets/video/deps/ek;)Landroid/os/Handler;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 150
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I
    .locals 13
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

    move-object/from16 v9, p6

    .line 67
    instance-of v11, v9, Lcom/google/vr/sdk/widgets/video/deps/r;

    move-object v12, p0

    .line 68
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-object v1, p1

    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 69
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    const/4 v3, 0x4

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 70
    invoke-virtual/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a()Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->e(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 5

    .line 17
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fL;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:Lcom/google/vr/sdk/widgets/video/deps/dV;

    const/4 v2, 0x4

    .line 18
    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dV;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->c:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->e:Lcom/google/vr/sdk/widgets/video/deps/ej;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    .line 19
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ek$b;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 152
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 151
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 43
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 44
    instance-of v2, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;

    if-eqz v2, :cond_0

    .line 46
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->s:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object v3

    goto :goto_0

    .line 47
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/eg;

    .line 48
    :goto_0
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->m:Lcom/google/vr/sdk/widgets/video/deps/eg;

    .line 49
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v5, v3, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v5, v3, Lcom/google/vr/sdk/widgets/video/deps/eg;->b:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/eg;->c:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Ljava/util/List;)V

    .line 55
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    if-eqz v2, :cond_1

    .line 57
    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eh;

    invoke-static {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ek$a;Lcom/google/vr/sdk/widgets/video/deps/eh;)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d()V

    .line 59
    :goto_1
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-object v1, p1

    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v6, 0x4

    .line 60
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 61
    invoke-virtual/range {v4 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

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

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 64
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    const/4 v2, 0x4

    move-wide v3, p2

    move-wide v5, p4

    .line 65
    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

    return-void
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/eg;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->m:Lcom/google/vr/sdk/widgets/video/deps/eg;

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/ek$b;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->b()Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->c()V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    .line 29
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->c()V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public c(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->e()V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ek$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek$a;->d()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ek;->p:Z

    return v0
.end method
