.class public final Lcom/google/vr/sdk/widgets/video/deps/cF;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cB;


# static fields
.field private static final a:I = 0x20000


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fV;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gD;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cC;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 3
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/cC;->a()Lcom/google/vr/sdk/widgets/video/deps/fS;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->c:Lcom/google/vr/sdk/widgets/video/deps/fS;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/cC;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/fV;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->d:Lcom/google/vr/sdk/widgets/video/deps/fV;

    .line 5
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/cC;->b()Lcom/google/vr/sdk/widgets/video/deps/gD;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->c:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fZ$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cB$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->a(I)V

    const/high16 v0, 0x20000

    :try_start_0
    new-array v5, v0, [B

    .line 12
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->c:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->d:Lcom/google/vr/sdk/widgets/video/deps/fV;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    const/16 v7, -0x3e8

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fV;[BLcom/google/vr/sdk/widgets/video/deps/gD;ILcom/google/vr/sdk/widgets/video/deps/fZ$a;Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 14
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    invoke-interface {p1, p0, v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cB$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cB;FJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->e(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->e:Lcom/google/vr/sdk/widgets/video/deps/gD;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->e(I)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->c:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Ljava/lang/String;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()F
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cF;->f:Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    long-to-float v0, v0

    div-float v0, v2, v0

    :goto_0
    return v0
.end method
