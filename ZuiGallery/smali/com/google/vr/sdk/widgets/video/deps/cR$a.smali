.class final Lcom/google/vr/sdk/widgets/video/deps/cR$a;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cR;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gr;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/ay;

.field private volatile g:Z

.field private h:Z

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cR;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/cR$b;Lcom/google/vr/sdk/widgets/video/deps/gr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->b:Landroid/net/Uri;

    .line 3
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 4
    invoke-static {p4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->d:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    .line 5
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gr;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ay;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ay;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ay;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->h:Z

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->j:J

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cR$a;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->j:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->g:Z

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ay;

    iput-wide p1, v0, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    .line 11
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->i:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->h:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->g:Z

    return v0
.end method

.method public c()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_5

    .line 18
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->g:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ay;

    iget-wide v12, v4, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    .line 21
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->b:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/cR;->e(Lcom/google/vr/sdk/widgets/video/deps/cR;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v14

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v4, v14}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->j:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    add-long/2addr v4, v12

    .line 23
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->j:J

    .line 24
    :cond_0
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/ap;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->j:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->d:Lcom/google/vr/sdk/widgets/video/deps/cR$b;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/cR$b;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/as;

    move-result-object v2

    .line 26
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->h:Z

    if-eqz v5, :cond_1

    .line 27
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->i:J

    invoke-interface {v2, v12, v13, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(JJ)V

    .line 28
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->h:Z

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 29
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->g:Z

    if-nez v5, :cond_2

    .line 30
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gr;->c()V

    .line 31
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ay;

    invoke-interface {v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result v1

    .line 32
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/cR;->f(Lcom/google/vr/sdk/widgets/video/deps/cR;)J

    move-result-wide v7

    add-long/2addr v7, v12

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 33
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v12

    .line 34
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gr;->b()Z

    .line 35
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/cR;->h(Lcom/google/vr/sdk/widgets/video/deps/cR;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/cR;->g(Lcom/google/vr/sdk/widgets/video/deps/cR;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_2

    .line 39
    :cond_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ay;

    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    .line 40
    :goto_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_4

    if-eqz v2, :cond_4

    .line 45
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ay;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$a;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0

    :cond_5
    return-void
.end method
