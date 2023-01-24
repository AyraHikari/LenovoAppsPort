.class public final Lcom/google/vr/sdk/widgets/video/deps/gT;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gT$a;
    }
.end annotation


# static fields
.field private static final a:D = -1.0

.field private static final b:J = 0x1f4L

.field private static final c:J = 0x1312d00L

.field private static final d:J = 0x50L

.field private static final e:I = 0x6


# instance fields
.field private final f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

.field private final g:Z

.field private final h:J

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gT;-><init>(D)V

    return-void
.end method

.method private constructor <init>(D)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->g:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->a()Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long p1, v0

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->h:J

    const-wide/16 v0, 0x50

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x64

    .line 10
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->i:J

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    const-wide/16 p1, -0x1

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->h:J

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->i:J

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gT;->a(Landroid/content/Context;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gT;-><init>(D)V

    return-void
.end method

.method private static a(Landroid/content/Context;)D
    .locals 2

    const-string/jumbo v0, "window"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 66
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    float-to-double v0, p0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method private static a(JJJ)J
    .locals 4

    sub-long v0, p0, p2

    .line 55
    div-long/2addr v0, p4

    mul-long/2addr v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    add-long/2addr p4, p2

    move-wide v2, p2

    move-wide p2, p4

    move-wide p4, v2

    :goto_0
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p4

    :goto_1
    return-wide p2
.end method

.method private b(JJ)Z
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->o:J

    sub-long/2addr p1, v0

    .line 53
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->n:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(JJ)J
    .locals 10

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    .line 25
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->m:Z

    if-eqz v2, :cond_3

    .line 26
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->j:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 27
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->p:J

    .line 28
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->l:J

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->k:J

    .line 29
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->p:J

    const-wide/16 v4, 0x6

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    .line 30
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->o:J

    sub-long v6, v0, v6

    div-long/2addr v6, v2

    .line 31
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->k:J

    add-long/2addr v2, v6

    .line 32
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gT;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->m:Z

    goto :goto_0

    .line 35
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->n:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->o:J

    sub-long/2addr v4, v6

    goto :goto_1

    .line 37
    :cond_2
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gT;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->m:Z

    :cond_3
    :goto_0
    move-wide v4, p3

    move-wide v2, v0

    .line 39
    :goto_1
    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->m:Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_4

    .line 40
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->o:J

    .line 41
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->n:J

    .line 42
    iput-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->p:J

    const/4 p3, 0x1

    .line 43
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->m:Z

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gT;->c()V

    .line 45
    :cond_4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->j:J

    .line 46
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->l:J

    .line 47
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    if-eqz p1, :cond_6

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->a:J

    cmp-long p1, p1, v7

    if-nez p1, :cond_5

    goto :goto_2

    .line 49
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->a:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->h:J

    invoke-static/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/gT;->a(JJJ)J

    move-result-wide p1

    .line 50
    iget-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->i:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_6
    :goto_2
    return-wide v4
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->m:Z

    .line 16
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->g:Z

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->g:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT;->f:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->c()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method
