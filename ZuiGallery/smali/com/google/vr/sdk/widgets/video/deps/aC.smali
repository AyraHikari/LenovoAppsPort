.class public final Lcom/google/vr/sdk/widgets/video/deps/aC;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;
.implements Lcom/google/vr/sdk/widgets/video/deps/az;


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final h:I = 0x9

.field private static final i:I = 0xb

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final m:I = 0x4

.field private static final n:I = 0x8

.field private static final o:I = 0x9

.field private static final p:I = 0x12

.field private static final q:I


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/aD;

.field public e:I

.field public f:I

.field public g:J

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final u:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private v:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private w:I

.field private x:I

.field private y:Lcom/google/vr/sdk/widgets/video/deps/aB;

.field private z:Lcom/google/vr/sdk/widgets/video/deps/aF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aC$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aC$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aC;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "FLV"

    .line 96
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aC;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 43
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    if-eqz v4, :cond_3

    .line 47
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->y:Lcom/google/vr/sdk/widgets/video/deps/aB;

    if-nez p1, :cond_3

    .line 48
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/aB;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    const/16 v5, 0x8

    .line 49
    invoke-interface {v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aB;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->y:Lcom/google/vr/sdk/widgets/video/deps/aB;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->z:Lcom/google/vr/sdk/widgets/video/deps/aF;

    if-nez v1, :cond_4

    .line 51
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aF;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    .line 52
    invoke-interface {v4, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aF;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->z:Lcom/google/vr/sdk/widgets/video/deps/aF;

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->A:Lcom/google/vr/sdk/widgets/video/deps/aD;

    if-nez v1, :cond_5

    .line 54
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aD;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aD;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->A:Lcom/google/vr/sdk/widgets/video/deps/aD;

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 56
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    .line 57
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->x:I

    .line 58
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    return v3
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->x:I

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->x:I

    const/4 p1, 0x3

    .line 62
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 67
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->e:I

    .line 68
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->f:I

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->g:J

    .line 70
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->g:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->g:J

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->t:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    const/4 p1, 0x4

    .line 72
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    return v3
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->y:Lcom/google/vr/sdk/widgets/video/deps/aB;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->f(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->g:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aB;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->e:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->z:Lcom/google/vr/sdk/widgets/video/deps/aF;

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->f(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->g:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aF;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->e:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->A:Lcom/google/vr/sdk/widgets/video/deps/aD;

    if-eqz v0, :cond_2

    .line 80
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->f(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->g:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 81
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->f:I

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->x:I

    const/4 v0, 0x2

    .line 84
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    return p1
.end method

.method private f(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/gA;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->f:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->f:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->f:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 90
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->f:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 91
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->u:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 30
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->e(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->d(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 33
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->c(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    goto :goto_0

    .line 31
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aC;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->w:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->x:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v0

    sget v2, Lcom/google/vr/sdk/widgets/video/deps/aC;->q:I

    if-eq v0, v2, :cond_0

    return v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 19
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 20
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 23
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b()J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aC;->A:Lcom/google/vr/sdk/widgets/video/deps/aD;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
