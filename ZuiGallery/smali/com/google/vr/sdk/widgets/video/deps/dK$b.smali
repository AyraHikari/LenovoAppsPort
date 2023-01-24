.class public Lcom/google/vr/sdk/widgets/video/deps/dK$b;
.super Lcom/google/vr/sdk/widgets/video/deps/dK;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final h:Landroid/net/Uri;

.field public final i:J

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/dJ;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/dN;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM$e;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$e;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/dK;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dK$1;)V

    .line 5
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->h:Landroid/net/Uri;

    .line 6
    invoke-virtual/range {p6 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dM$e;->b()Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v0

    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->k:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v1, p8

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    move-object v1, p4

    .line 8
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v1, p2

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->j:Ljava/lang/String;

    move-wide/from16 v1, p9

    .line 9
    iput-wide v1, v9, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->i:J

    .line 10
    iget-object v3, v9, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->k:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dN;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object p1, v3

    move-object p2, v4

    move-wide p3, v5

    move-wide/from16 p5, p9

    invoke-direct/range {p1 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dN;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;)V

    :goto_1
    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->l:Lcom/google/vr/sdk/widgets/video/deps/dN;

    return-void
.end method

.method public static a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;JJJJLjava/util/List;Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/dK$b;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/vr/sdk/widgets/video/deps/dK$b;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    sub-long v0, p7, p5

    const-wide/16 v7, 0x1

    add-long v4, v0, v7

    const/4 v1, 0x0

    move-object v0, v6

    move-wide/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    .line 2
    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    sub-long v0, p11, p9

    add-long v8, v0, v7

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, v15

    move-object v1, v6

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dM$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJJJ)V

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dK$b;

    move-object v9, v0

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    invoke-direct/range {v9 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/dK$b;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM$e;Ljava/util/List;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public d()Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->k:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    return-object v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/dA;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->l:Lcom/google/vr/sdk/widgets/video/deps/dN;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$b;->j:Ljava/lang/String;

    return-object v0
.end method
