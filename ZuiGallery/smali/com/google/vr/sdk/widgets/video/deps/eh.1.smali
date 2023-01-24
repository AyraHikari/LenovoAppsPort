.class public final Lcom/google/vr/sdk/widgets/video/deps/eh;
.super Lcom/google/vr/sdk/widgets/video/deps/ei;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eh$a;,
        Lcom/google/vr/sdk/widgets/video/deps/eh$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "identity"

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:J

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Lcom/google/vr/sdk/widgets/video/deps/eh$b;

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eh$b;",
            ">;"
        }
    .end annotation
.end field

.field public final r:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIIIJZZZLcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIIIJZZZ",
            "Lcom/google/vr/sdk/widgets/video/deps/eh$b;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eh$b;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ei;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->e:I

    move-wide v1, p6

    .line 3
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    move/from16 v1, p8

    .line 4
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->h:Z

    move/from16 v1, p9

    .line 5
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->i:I

    move/from16 v1, p10

    .line 6
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    move/from16 v1, p11

    .line 7
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->k:I

    move-wide/from16 v1, p12

    .line 8
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->l:J

    move/from16 v1, p14

    .line 9
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->m:Z

    move/from16 v1, p15

    .line 10
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    move/from16 v1, p16

    .line 11
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->o:Z

    move-object/from16 v1, p17

    .line 12
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->p:Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    .line 13
    invoke-static/range {p18 .. p18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    .line 14
    invoke-interface/range {p18 .. p18}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 15
    invoke-interface/range {p18 .. p18}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v4, p18

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    .line 16
    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    iget-wide v6, v1, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->b:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    goto :goto_0

    .line 18
    :cond_0
    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    move-wide v1, v4

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v2

    if-ltz v1, :cond_2

    move-wide v1, p4

    goto :goto_1

    .line 20
    :cond_2
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    add-long/2addr v1, p4

    :goto_1
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->f:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(JI)Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move/from16 v10, p3

    .line 30
    new-instance v20, Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-object/from16 v1, v20

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->e:I

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->t:Ljava/util/List;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->f:J

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->k:I

    iget-wide v13, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->l:J

    iget-boolean v15, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->m:Z

    iget-boolean v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    move/from16 v16, v9

    iget-boolean v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->o:Z

    move/from16 v17, v9

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->p:Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    move-object/from16 v18, v9

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    move-object/from16 v19, v9

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/eh;-><init>(ILjava/lang/String;Ljava/util/List;JJZIIIJZZZLcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/List;)V

    return-object v20
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eh;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 22
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    return v3

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 27
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    if-ne v1, v2, :cond_2

    .line 28
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :cond_3
    :goto_0
    return v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 22

    move-object/from16 v0, p0

    .line 31
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 33
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-object v2, v1

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->e:I

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->s:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->t:Ljava/util/List;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->f:J

    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->h:Z

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->i:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->j:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->k:I

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->l:J

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->m:Z

    move/from16 v16, v1

    const/16 v17, 0x1

    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->o:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->p:Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    move-object/from16 v20, v1

    invoke-direct/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/eh;-><init>(ILjava/lang/String;Ljava/util/List;JJZIIIJZZZLcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/List;)V

    return-object v21
.end method
