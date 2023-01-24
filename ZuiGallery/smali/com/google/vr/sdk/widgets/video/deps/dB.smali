.class public final Lcom/google/vr/sdk/widgets/video/deps/dB;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dI;)Lcom/google/vr/sdk/widgets/video/deps/aa;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 6
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/dI;I)Lcom/google/vr/sdk/widgets/video/deps/dK;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/dI;I)Lcom/google/vr/sdk/widgets/video/deps/dK;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    .line 12
    :cond_0
    iget-object p1, v1, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-eqz p1, :cond_1

    return-object p1

    .line 15
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    :goto_0
    return-object v2
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/dF;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;I)V

    .line 2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dG;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->c()V

    .line 4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/dF;

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dI;I)Lcom/google/vr/sdk/widgets/video/deps/dK;
    .locals 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dI;->a(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    .line 51
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dK;

    :goto_0
    return-object v0
.end method

.method private static a(ILcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/dn;
    .locals 2

    .line 42
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    const-string/jumbo v1, "video/webm"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/webm"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 45
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aJ;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aJ;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aU;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>()V

    .line 46
    :goto_2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dn;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dn;-><init>(Lcom/google/vr/sdk/widgets/video/deps/as;ILcom/google/vr/sdk/widgets/video/deps/m;)V

    return-object v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;Z)Lcom/google/vr/sdk/widgets/video/deps/dn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/dK;->c()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    iget-object v2, p2, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(ILcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/dn;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 26
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/dK;->d()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    .line 29
    :cond_1
    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/dK;->e:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Lcom/google/vr/sdk/widgets/video/deps/dJ;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v1

    if-nez v1, :cond_2

    .line 31
    invoke-static {p0, p2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dK;Lcom/google/vr/sdk/widgets/video/deps/dn;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V

    move-object v0, p3

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 35
    :cond_3
    :goto_0
    invoke-static {p0, p2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dK;Lcom/google/vr/sdk/widgets/video/deps/dn;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V

    return-object p1
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;Z)Lcom/google/vr/sdk/widgets/video/deps/dn;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dn;->c()[Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dK;Lcom/google/vr/sdk/widgets/video/deps/dn;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 37
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dK;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    iget-wide v4, p3, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    .line 38
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/dK;->f()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 39
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/du;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/du;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/dn;)V

    .line 40
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/du;->c()V

    return-void
.end method

.method public static b(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 19
    invoke-static {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;Z)Lcom/google/vr/sdk/widgets/video/deps/dn;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dn;->b()Lcom/google/vr/sdk/widgets/video/deps/az;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/ao;

    :goto_0
    return-object p0
.end method
