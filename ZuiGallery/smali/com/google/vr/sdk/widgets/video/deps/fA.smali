.class public final Lcom/google/vr/sdk/widgets/video/deps/fA;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fQ;
.implements Lcom/google/vr/sdk/widgets/video/deps/fp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/fp;"
    }
.end annotation


# static fields
.field public static final b:I = 0x7d0

.field private static final c:I = 0x7d0

.field private static final d:I = 0x80000


# instance fields
.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fp$a;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gG;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/gn;

.field private i:I

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fA;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/fp$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/fp$a;)V
    .locals 1

    const/16 v0, 0x7d0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fA;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/fp$a;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/fp$a;I)V
    .locals 1

    .line 5
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gn;->a:Lcom/google/vr/sdk/widgets/video/deps/gn;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fA;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/fp$a;ILcom/google/vr/sdk/widgets/video/deps/gn;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/fp$a;ILcom/google/vr/sdk/widgets/video/deps/gn;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->e:Landroid/os/Handler;

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->f:Lcom/google/vr/sdk/widgets/video/deps/fp$a;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gG;

    invoke-direct {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gG;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->g:Lcom/google/vr/sdk/widgets/video/deps/gG;

    .line 11
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->h:Lcom/google/vr/sdk/widgets/video/deps/gn;

    const-wide/16 p1, -0x1

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->n:J

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fA;)Lcom/google/vr/sdk/widgets/video/deps/fp$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->f:Lcom/google/vr/sdk/widgets/video/deps/fp$a;

    return-object p0
.end method

.method private a(IJJ)V
    .locals 9

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->f:Lcom/google/vr/sdk/widgets/video/deps/fp$a;

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fA$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fA$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fA;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 11

    monitor-enter p0

    .line 21
    :try_start_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->i:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->h:Lcom/google/vr/sdk/widgets/video/deps/gn;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/gn;->a()J

    move-result-wide v1

    .line 23
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->j:J

    sub-long v3, v1, v3

    long-to-int v6, v3

    .line 24
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->l:J

    int-to-long v7, v6

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->l:J

    .line 25
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->m:J

    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J

    add-long/2addr v3, v9

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->m:J

    if-lez v6, :cond_3

    .line 27
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J

    const-wide/16 v9, 0x1f40

    mul-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-float p1, v3

    .line 28
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->g:Lcom/google/vr/sdk/widgets/video/deps/gG;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/gG;->a(IF)V

    .line 29
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->l:J

    const-wide/16 v7, 0x7d0

    cmp-long p1, v3, v7

    if-gez p1, :cond_1

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->m:J

    const-wide/32 v7, 0x80000

    cmp-long p1, v3, v7

    if-ltz p1, :cond_3

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->g:Lcom/google/vr/sdk/widgets/video/deps/gG;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gG;->a(F)F

    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_2
    float-to-long v3, p1

    .line 32
    :goto_1
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->n:J

    .line 33
    :cond_3
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J

    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->n:J

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/fA;->a(IJJ)V

    .line 34
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->i:I

    if-lez p1, :cond_4

    .line 35
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->j:J

    :cond_4
    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;I)V
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->i:I

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->h:Lcom/google/vr/sdk/widgets/video/deps/gn;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/gn;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->j:J

    .line 17
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fA;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
