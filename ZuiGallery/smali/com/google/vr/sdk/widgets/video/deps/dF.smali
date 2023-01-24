.class public Lcom/google/vr/sdk/widgets/video/deps/dF;
.super Ljava/lang/Object;
.source "DashManifest.java"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Lcom/google/vr/sdk/widgets/video/deps/dP;

.field public final i:Landroid/net/Uri;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJZJJJLcom/google/vr/sdk/widgets/video/deps/dP;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/vr/sdk/widgets/video/deps/dP;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dI;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->a:J

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->b:J

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->c:J

    move v1, p7

    .line 5
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    move-wide v1, p8

    .line 6
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->e:J

    move-wide v1, p10

    .line 7
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->f:J

    move-wide v1, p12

    .line 8
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->g:J

    move-object/from16 v1, p14

    .line 9
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->h:Lcom/google/vr/sdk/widgets/video/deps/dP;

    move-object/from16 v1, p15

    .line 10
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->i:Landroid/net/Uri;

    if-nez p16, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p16

    :goto_0
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/dL;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dL;

    .line 39
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :cond_0
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    .line 42
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/dE;

    .line 43
    iget-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    .line 44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_1
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 46
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dL;

    .line 48
    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    if-ne v6, v1, :cond_2

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    if-eq v6, v3, :cond_1

    .line 49
    :cond_2
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/dE;->b:I

    iget v8, v4, Lcom/google/vr/sdk/widgets/video/deps/dE;->c:I

    iget-object v10, v4, Lcom/google/vr/sdk/widgets/video/deps/dE;->e:Ljava/util/List;

    iget-object v11, v4, Lcom/google/vr/sdk/widgets/video/deps/dE;->f:Ljava/util/List;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dE;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    if-eq v3, v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dF;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dL;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 20
    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 22
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/dL;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3}, Lcom/google/vr/sdk/widgets/video/deps/dL;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 25
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_2

    .line 26
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/dL;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    if-eq v6, v5, :cond_0

    .line 27
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/dF;->b(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_1

    add-long/2addr v3, v9

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v6

    .line 32
    iget-object v7, v6, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    .line 33
    invoke-static {v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 34
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/dI;

    iget-object v9, v6, Lcom/google/vr/sdk/widgets/video/deps/dI;->a:Ljava/lang/String;

    iget-wide v10, v6, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    sub-long/2addr v10, v3

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/google/vr/sdk/widgets/video/deps/dI;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 36
    :cond_2
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->b:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    sub-long/2addr v5, v3

    move-wide v7, v5

    .line 37
    :cond_3
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-object v4, v1

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->a:J

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->c:J

    iget-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->e:J

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->f:J

    move-object/from16 p1, v4

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->g:J

    move-wide/from16 v16, v3

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->h:Lcom/google/vr/sdk/widgets/video/deps/dP;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->i:Landroid/net/Uri;

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v4, p1

    invoke-direct/range {v4 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/dF;-><init>(JJJZJJJLcom/google/vr/sdk/widgets/video/deps/dP;Landroid/net/Uri;Ljava/util/List;)V

    return-object v1
.end method

.method public final a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dI;

    return-object p1
.end method

.method public final b(I)J
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p1, v0, :cond_1

    .line 16
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->b:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dI;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    sub-long v1, v3, v0

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dI;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dF;->j:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dI;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    sub-long v1, v0, v2

    :goto_0
    return-wide v1
.end method

.method public final c(I)J
    .locals 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->b(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
