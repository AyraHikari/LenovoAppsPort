.class public final Lcom/google/vr/sdk/widgets/video/deps/dZ;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;
.implements Lcom/google/vr/sdk/widgets/video/deps/ek$e;


# static fields
.field public static final a:I = 0x3


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/dV;

.field private final d:I

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/ek;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 47
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/dV;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->b:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->c:Lcom/google/vr/sdk/widgets/video/deps/dV;

    .line 8
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->d:I

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    invoke-direct {p1, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->e:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 6

    .line 3
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/dT;

    invoke-direct {v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/dT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dZ;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/dV;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 6

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dZ;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 6

    .line 18
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dY;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->c:Lcom/google/vr/sdk/widgets/video/deps/dV;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->d:I

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->e:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dY;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ek;Lcom/google/vr/sdk/widgets/video/deps/dV;ILcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->d()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dY;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/dY;->f()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eh;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 27
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->o:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_0
    move-wide v8, v5

    .line 28
    :goto_0
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->o:Z

    if-eqz v2, :cond_1

    iget-wide v10, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    invoke-static {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-wide v10, v5

    .line 30
    :goto_1
    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->f:J

    .line 31
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    if-eqz v2, :cond_2

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    add-long/2addr v14, v3

    goto :goto_2

    :cond_2
    move-wide v14, v5

    .line 34
    :goto_2
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->q:Ljava/util/List;

    cmp-long v3, v12, v5

    if-nez v3, :cond_4

    .line 36
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    :goto_3
    move-wide/from16 v18, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v18, v12

    .line 38
    :goto_4
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/de;

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    const/16 v20, 0x1

    iget-boolean v7, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->n:Z

    xor-int/lit8 v21, v7, 0x1

    move-object v7, v2

    move-wide v12, v14

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-direct/range {v7 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/de;-><init>(JJJJJJZZ)V

    goto :goto_6

    :cond_5
    cmp-long v2, v12, v5

    if-nez v2, :cond_6

    const-wide/16 v18, 0x0

    goto :goto_5

    :cond_6
    move-wide/from16 v18, v12

    .line 42
    :goto_5
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/de;

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    add-long v12, v3, v5

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->r:J

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/eh;->g:J

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v7, v2

    move-wide/from16 v16, v3

    invoke-direct/range {v7 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/de;-><init>(JJJJJJZZ)V

    .line 43
    :goto_6
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/dW;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 44
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b()Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/dW;-><init>(Lcom/google/vr/sdk/widgets/video/deps/eg;Lcom/google/vr/sdk/widgets/video/deps/eh;)V

    .line 45
    invoke-interface {v3, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 6

    .line 11
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->c:Lcom/google/vr/sdk/widgets/video/deps/dV;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->e:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->d:I

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ek;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/dV;Lcom/google/vr/sdk/widgets/video/deps/cJ$a;ILcom/google/vr/sdk/widgets/video/deps/ek$e;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 13
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    .line 14
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c()V

    .line 24
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->f:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 25
    :cond_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dZ;->g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    return-void
.end method
