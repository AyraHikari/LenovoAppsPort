.class public final Lcom/google/vr/sdk/widgets/video/deps/aN;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aN$b;,
        Lcom/google/vr/sdk/widgets/video/deps/aN$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field private static final g:I = 0x20000

.field private static final h:I = 0x4000

.field private static final i:I = 0xa

.field private static final j:I = -0x1f400

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I


# instance fields
.field private A:I

.field private final o:I

.field private final p:J

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/ax;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/aw;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private u:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private v:I

.field private w:Lcom/google/vr/sdk/widgets/video/deps/bW;

.field private x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aN$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aN$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "Xing"

    .line 174
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->k:I

    const-string v0, "Info"

    .line 175
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->l:I

    const-string v0, "VBRI"

    .line 176
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aN;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aN;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->o:I

    .line 7
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->p:J

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ax;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/aw;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->s:Lcom/google/vr/sdk/widgets/video/deps/aw;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)I
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 165
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    .line 166
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->k:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->l:I

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 170
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    sget p1, Lcom/google/vr/sdk/widgets/video/deps/aN;->m:I

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 73
    :goto_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 74
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 75
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aN;->c(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    .line 76
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b()J

    move-result-wide v3

    long-to-int v1, v3

    if-nez p2, :cond_1

    .line 78
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    move v3, v1

    :goto_1
    move v4, v3

    move v5, v4

    .line 79
    :goto_2
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v7, 0x1

    if-lez v3, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    const/4 v9, 0x4

    invoke-interface {p1, v6, v2, v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_5

    .line 81
    :cond_4
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 82
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v6

    if-eqz v4, :cond_5

    int-to-long v10, v4

    .line 84
    invoke-static {v6, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/aN;->a(IJ)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 85
    :cond_5
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(I)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_a

    :cond_6
    add-int/lit8 v3, v5, 0x1

    if-ne v5, v0, :cond_8

    if-eqz p2, :cond_7

    return v2

    .line 88
    :cond_7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz p2, :cond_9

    .line 93
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    add-int v4, v1, v3

    .line 94
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    goto :goto_4

    .line 95
    :cond_9
    invoke-interface {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    :goto_4
    move v4, v2

    move v5, v3

    move v3, v4

    goto :goto_2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v7, :cond_b

    .line 98
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-static {v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(ILcom/google/vr/sdk/widgets/video/deps/ax;)Z

    move v4, v6

    goto :goto_7

    :cond_b
    if-ne v3, v9, :cond_d

    :goto_5
    if-eqz p2, :cond_c

    add-int/2addr v1, v5

    .line 105
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    goto :goto_6

    .line 106
    :cond_c
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 107
    :goto_6
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->v:I

    return v7

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, -0x4

    .line 102
    invoke-interface {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    goto :goto_2
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 40
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v4, 0x4

    invoke-interface {p1, v0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 45
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->v:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aN;->a(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-static {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(ILcom/google/vr/sdk/widgets/video/deps/ax;)Z

    .line 51
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aN$b;->a(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    .line 53
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->p:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aN$b;->a(J)J

    move-result-wide v4

    .line 55
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->p:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 48
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->v:I

    return v3

    .line 57
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    invoke-interface {v0, p1, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    .line 60
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    if-lez v0, :cond_6

    return v3

    .line 63
    :cond_6
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->z:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    int-to-long v6, p1

    div-long/2addr v4, v6

    add-long v7, v0, v4

    .line 64
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v9, 0x1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v10, p1, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 65
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->z:J

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->z:J

    .line 66
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    return v3
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 111
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 112
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v2

    sget v4, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:I

    if-eq v2, v4, :cond_0

    .line 130
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 131
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 115
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v2

    add-int/lit8 v4, v2, 0xa

    .line 117
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->w:Lcom/google/vr/sdk/widgets/video/deps/bW;

    if-nez v5, :cond_2

    .line 118
    new-array v5, v4, [B

    .line 119
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v6, v0, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-interface {p1, v5, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 121
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->o:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/aw;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 123
    :goto_1
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cl;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)V

    invoke-virtual {v3, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BI)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->w:Lcom/google/vr/sdk/widgets/video/deps/bW;

    if-eqz v2, :cond_3

    .line 125
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->s:Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)Z

    goto :goto_2

    .line 127
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    :cond_3
    :goto_2
    add-int/2addr v1, v4

    goto :goto_0
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/aN$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 133
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    .line 134
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 135
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->b:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/16 v3, 0x15

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:I

    if-eq v0, v2, :cond_2

    const/16 v3, 0x24

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xd

    :cond_2
    :goto_0
    move v7, v3

    .line 138
    invoke-static {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/aN;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)I

    move-result v8

    .line 139
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->k:I

    if-eq v8, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->l:I

    if-ne v8, v0, :cond_3

    goto :goto_1

    .line 150
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->m:I

    if-ne v8, v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/aO;->a(Lcom/google/vr/sdk/widgets/video/deps/ax;Lcom/google/vr/sdk/widgets/video/deps/gA;JJ)Lcom/google/vr/sdk/widgets/video/deps/aO;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 154
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    goto :goto_2

    .line 140
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/aP;->a(Lcom/google/vr/sdk/widgets/video/deps/ax;Lcom/google/vr/sdk/widgets/video/deps/gA;JJ)Lcom/google/vr/sdk/widgets/video/deps/aP;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 141
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->s:Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 142
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    add-int/lit16 v7, v7, 0x8d

    .line 143
    invoke-interface {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    .line 144
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 145
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 146
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->s:Lcom/google/vr/sdk/widgets/video/deps/aw;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a(I)Z

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    if-eqz v0, :cond_7

    .line 148
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/aN$b;->a()Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/aN;->l:I

    if-ne v8, v1, :cond_7

    .line 149
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aN;->e(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/aN$b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 157
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 158
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(ILcom/google/vr/sdk/widgets/video/deps/ax;)Z

    .line 159
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aM;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->g:I

    .line 160
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aM;-><init>(JIJ)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 24
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->v:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 25
    :try_start_0
    invoke-direct {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aN;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    return v1

    :cond_0
    move-object/from16 v2, p1

    .line 29
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    if-nez v1, :cond_4

    .line 30
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/aN;->d(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/aN$b;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->o:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 33
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/aN;->e(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    .line 34
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->t:Lcom/google/vr/sdk/widgets/video/deps/au;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->x:Lcom/google/vr/sdk/widgets/video/deps/aN$b;

    invoke-interface {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    .line 35
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:I

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->r:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v9, v9, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    const/4 v10, -0x1

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->s:Lcom/google/vr/sdk/widgets/video/deps/aw;

    iget v11, v11, Lcom/google/vr/sdk/widgets/video/deps/aw;->b:I

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->s:Lcom/google/vr/sdk/widgets/video/deps/aw;

    iget v12, v12, Lcom/google/vr/sdk/widgets/video/deps/aw;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 36
    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->o:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/aN;->w:Lcom/google/vr/sdk/widgets/video/deps/bW;

    :goto_1
    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 37
    invoke-static/range {v3 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/bW;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 38
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/aN;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)I

    move-result v1

    return v1
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->v:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->y:J

    const-wide/16 p2, 0x0

    .line 20
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->z:J

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->A:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 2

    .line 14
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->t:Lcom/google/vr/sdk/widgets/video/deps/au;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->u:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 16
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aN;->t:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aN;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
