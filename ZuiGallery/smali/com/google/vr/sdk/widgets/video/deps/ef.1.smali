.class public final Lcom/google/vr/sdk/widgets/video/deps/ef;
.super Lcom/google/vr/sdk/widgets/video/deps/cH;
.source "HlsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/cH<",
        "Lcom/google/vr/sdk/widgets/video/deps/eg;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/cC;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cH;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/cC;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/eh;",
            "Lcom/google/vr/sdk/widgets/video/deps/eh$b;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 38
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    add-long/2addr v0, v2

    .line 39
    iget-boolean v2, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->e:Z

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 41
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 42
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;)V

    invoke-direct {p3, v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cH$a;-><init>(JLcom/google/vr/sdk/widgets/video/deps/fy;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object p3, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 44
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v4, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->i:J

    iget-wide v6, p2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->j:J

    const/4 v8, 0x0

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-direct {p1, v0, v1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cH$a;-><init>(JLcom/google/vr/sdk/widgets/video/deps/fy;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eg$a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/ei;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;I)V

    .line 35
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fL;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ej;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/ej;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p2, p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    .line 36
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/fL;->c()V

    .line 37
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/fL;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ei;

    return-object p1
.end method


# virtual methods
.method protected synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ef;->b(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/eg;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Lcom/google/vr/sdk/widgets/video/deps/eg;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/eg;->a:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 9
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/eg;->b:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 10
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/eg;->c:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/eg;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/eg;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Lcom/google/vr/sdk/widgets/video/deps/eg;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p3, v4

    const/4 v6, 0x0

    .line 16
    iget-object v7, p2, Lcom/google/vr/sdk/widgets/video/deps/eg;->s:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 17
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/ef;->c(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/ei;

    move-result-object v7

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/eh;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_1

    :catch_0
    move-exception v7

    if-eqz p4, :cond_4

    .line 22
    :goto_1
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    if-eqz v6, :cond_0

    iget-wide v8, v6, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    goto :goto_2

    :cond_0
    const-wide/high16 v8, -0x8000000000000000L

    :goto_2
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-direct {v10, v5}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/cH$a;-><init>(JLcom/google/vr/sdk/widgets/video/deps/fy;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_1

    goto :goto_4

    .line 25
    :cond_1
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/eh;->p:Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    if-eqz v5, :cond_2

    .line 27
    invoke-static {v1, v6, v5, v0}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Ljava/util/ArrayList;Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/HashSet;)V

    .line 28
    :cond_2
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    move v7, v3

    .line 29
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 30
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    invoke-static {v1, v6, v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Ljava/util/ArrayList;Lcom/google/vr/sdk/widgets/video/deps/eh;Lcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/HashSet;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_4
    throw v7

    :cond_5
    return-object v1
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/eg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/eg;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/eg;

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/eg;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/eg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ef;->c(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/ei;

    move-result-object p1

    .line 4
    instance-of p2, p1, Lcom/google/vr/sdk/widgets/video/deps/eg;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/eg;

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ei;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object p1

    return-object p1
.end method
