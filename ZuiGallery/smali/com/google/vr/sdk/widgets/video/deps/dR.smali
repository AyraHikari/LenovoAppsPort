.class public final Lcom/google/vr/sdk/widgets/video/deps/dR;
.super Lcom/google/vr/sdk/widgets/video/deps/cH;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/cH<",
        "Lcom/google/vr/sdk/widgets/video/deps/dF;",
        "Lcom/google/vr/sdk/widgets/video/deps/dL;",
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

.method private a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;Lcom/google/vr/sdk/widgets/video/deps/dL;)Lcom/google/vr/sdk/widgets/video/deps/dA;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 48
    iget v0, p3, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object p2

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    iget v0, p3, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/dE;

    .line 49
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 50
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/dK;->e()Lcom/google/vr/sdk/widgets/video/deps/dA;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 53
    :cond_0
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dE;->c:I

    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dB;->b(Lcom/google/vr/sdk/widgets/video/deps/fv;ILcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/ao;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 54
    :cond_1
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dC;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dC;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private static a(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            ")V"
        }
    .end annotation

    .line 55
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-virtual {p4, p3}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p4, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    iget-wide v4, p4, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 56
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    invoke-direct {p3, p1, p2, v7}, Lcom/google/vr/sdk/widgets/video/deps/cH$a;-><init>(JLcom/google/vr/sdk/widgets/video/deps/fy;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dR;->b(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
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

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v3

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    move v4, v1

    .line 7
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/dE;

    .line 9
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Lcom/google/vr/sdk/widgets/video/deps/dL;

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_0

    .line 11
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-direct {v8, v2, v4, v7}, Lcom/google/vr/sdk/widgets/video/deps/dL;-><init>(III)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;[Lcom/google/vr/sdk/widgets/video/deps/dL;Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;[Lcom/google/vr/sdk/widgets/video/deps/dL;Z)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/dL;",
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

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    array-length v4, v2

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v0, v2, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 19
    :try_start_0
    invoke-direct {v6, v7, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;Lcom/google/vr/sdk/widgets/video/deps/dL;)Lcom/google/vr/sdk/widgets/video/deps/dA;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    invoke-interface {v8, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(J)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 30
    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    invoke-virtual {v1, v10}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v10

    .line 31
    iget-object v11, v10, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    .line 32
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 33
    iget-wide v10, v10, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    invoke-static {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v10

    .line 34
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dK;->e:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dK;->c()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 37
    invoke-static {v3, v10, v11, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dK;->d()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {v3, v10, v11, v12, v0}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V

    .line 41
    :cond_1
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a()I

    move-result v0

    add-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-gt v0, v9, :cond_4

    .line 44
    invoke-interface {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(I)J

    move-result-wide v13

    add-long/2addr v13, v10

    invoke-interface {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/dA;->b(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v15

    invoke-static {v3, v13, v14, v12, v15}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dJ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unbounded index for representation: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cy;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_3
    :try_start_1
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "No index for representation: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/cy;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    if-eqz p4, :cond_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 26
    :cond_5
    throw v0

    :cond_6
    move-object/from16 v6, p0

    return-object v3
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fv;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;Z)Ljava/util/List;

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

    .line 59
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/dF;

    check-cast p3, [Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/dF;[Lcom/google/vr/sdk/widgets/video/deps/dL;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/dF;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dB;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-result-object p1

    return-object p1
.end method
