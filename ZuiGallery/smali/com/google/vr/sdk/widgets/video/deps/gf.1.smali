.class public final Lcom/google/vr/sdk/widgets/video/deps/gf;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fS;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fX;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/fY;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/gb;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/fS$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Lcom/google/vr/sdk/widgets/video/deps/fS$a;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/fX;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gf;-><init>(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/fX;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/fX;[B)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/gf;-><init>(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/fX;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/fX;[BZ)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->f:J

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    .line 8
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:Lcom/google/vr/sdk/widgets/video/deps/fX;

    .line 9
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->c:Ljava/util/HashMap;

    .line 10
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(Ljava/io/File;[BZ)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    .line 12
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 13
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gf$1;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gf;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->start()V

    .line 15
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gf;Lcom/google/vr/sdk/widgets/video/deps/fS$a;)Lcom/google/vr/sdk/widgets/video/deps/fS$a;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->g:Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    return-object p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/fY;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->f:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->f:J

    if-eqz p2, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ga;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b()V

    .line 115
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->c(Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gf;->c()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gg;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/gg;)V

    .line 105
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->f:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->f:J

    .line 106
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->b(Lcom/google/vr/sdk/widgets/video/deps/gg;)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gg;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/fS$b;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fS$b;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:Lcom/google/vr/sdk/widgets/video/deps/fX;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fX;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/gf;)Lcom/google/vr/sdk/widgets/video/deps/fX;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:Lcom/google/vr/sdk/widgets/video/deps/fX;

    return-object p0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gg;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/fS$b;

    invoke-interface {v2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fS$b;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:Lcom/google/vr/sdk/widgets/video/deps/fX;

    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fX;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    return-void
.end method

.method private c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a()V

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cached_content_index.exi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 96
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 98
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/gg;)V

    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d()V

    .line 102
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b()V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/fS$b;

    invoke-interface {v2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fS$b;->b(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:Lcom/google/vr/sdk/widgets/video/deps/fX;

    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fX;->b(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    return-void
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ga;

    .line 121
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/fY;

    .line 122
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/fY;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .line 126
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/fY;

    invoke-direct {p0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d()V

    .line 130
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b()V

    return-void
.end method

.method private f(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gg;->b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b(J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    .line 81
    iget-boolean v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gf;->d()V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/fY;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gf;->d(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gf;->d()V

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:Lcom/google/vr/sdk/widgets/video/deps/fX;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fX;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Ljava/lang/String;JJ)V

    .line 56
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/io/File;

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {p4, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Ljava/lang/String;)I

    move-result v2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v3, p2

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/fY;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b()Ljava/util/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 32
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fS$b;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/fS$b;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/fY;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->e()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->c:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 60
    :goto_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 61
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->c:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 63
    monitor-exit p0

    return-void

    .line 64
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_2
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->b(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 69
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:J

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:J

    add-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 70
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/gg;)V

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()J
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->e(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/fY;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gf;->e(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 117
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fS$b;)V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 27
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;JJ)Z
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, p4

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;JJ)J
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    neg-long p1, p4

    :goto_0
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Ljava/lang/String;J)V

    .line 158
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    monitor-enter p0

    .line 35
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gf;->e(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 37
    monitor-exit p0

    return-object v0

    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->g:Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    if-nez v0, :cond_2

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gf;->f(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p2

    .line 43
    iget-boolean p3, p2, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Z

    if-eqz p3, :cond_0

    .line 44
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->d:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b(Lcom/google/vr/sdk/widgets/video/deps/gg;)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    .line 45
    invoke-direct {p0, p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/gg;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-object p1

    .line 47
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 48
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit p0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    .line 50
    monitor-exit p0

    return-object p1

    .line 41
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->g:Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
