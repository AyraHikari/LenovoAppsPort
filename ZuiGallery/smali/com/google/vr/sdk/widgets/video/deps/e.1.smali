.class public final Lcom/google/vr/sdk/widgets/video/deps/e;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/p;


# static fields
.field public static final a:I = 0x3a98

.field public static final b:I = 0x7530

.field public static final c:I = 0x9c4

.field public static final d:I = 0x1388

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2


# instance fields
.field private final h:Lcom/google/vr/sdk/widgets/video/deps/fz;

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:J

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/gD;

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fz;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fz;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fz;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fz;)V
    .locals 8

    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fz;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fz;IIJJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fz;IIJJLcom/google/vr/sdk/widgets/video/deps/gD;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fz;IIJJLcom/google/vr/sdk/widgets/video/deps/gD;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->h:Lcom/google/vr/sdk/widgets/video/deps/fz;

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->i:J

    int-to-long p1, p3

    mul-long/2addr p1, v0

    .line 10
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->j:J

    mul-long/2addr p4, v0

    .line 11
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->k:J

    mul-long/2addr p6, v0

    .line 12
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->l:J

    .line 13
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->m:Lcom/google/vr/sdk/widgets/video/deps/gD;

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->n:I

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->m:Lcom/google/vr/sdk/widgets/video/deps/gD;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->o:Z

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gD;->e(I)V

    .line 46
    :cond_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->o:Z

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->h:Lcom/google/vr/sdk/widgets/video/deps/fz;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fz;->e()V

    :cond_1
    return-void
.end method

.method private b(J)I
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->j:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->i:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/e;->a(Z)V

    return-void
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;)V
    .locals 2

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->n:I

    .line 18
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 19
    invoke-virtual {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->n:I

    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result v1

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->n:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->h:Lcom/google/vr/sdk/widgets/video/deps/fz;

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->n:I

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fz;->a(I)V

    return-void
.end method

.method public a(J)Z
    .locals 4

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/e;->b(J)I

    move-result p1

    .line 32
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->h:Lcom/google/vr/sdk/widgets/video/deps/fz;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/fz;->c()I

    move-result p2

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 33
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->o:Z

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 34
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->o:Z

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->m:Lcom/google/vr/sdk/widgets/video/deps/gD;

    if-eqz p1, :cond_4

    if-eq v1, v0, :cond_4

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gD;->a(I)V

    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gD;->e(I)V

    .line 39
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->o:Z

    return p1
.end method

.method public a(JZ)Z
    .locals 4

    if-eqz p3, :cond_0

    .line 29
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->l:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->k:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/e;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/e;->a(Z)V

    return-void
.end method

.method public d()Lcom/google/vr/sdk/widgets/video/deps/fn;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->h:Lcom/google/vr/sdk/widgets/video/deps/fz;

    return-object v0
.end method
