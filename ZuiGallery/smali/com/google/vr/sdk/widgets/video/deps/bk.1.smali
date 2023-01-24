.class final Lcom/google/vr/sdk/widgets/video/deps/bk;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final a:I = 0x1b

.field public static final b:I = 0xff

.field public static final c:I = 0xfe01

.field public static final d:I = 0xff1b

.field private static final o:I


# instance fields
.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:I

.field public m:I

.field public final n:[I

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/gA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OggS"

    .line 45
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->o:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->n:[I

    .line 3
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->e:I

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->f:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    .line 7
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->h:J

    .line 8
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->i:J

    .line 9
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->j:J

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->k:I

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a()V

    .line 16
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1b

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v3, 0x1b

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->o:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    return v2

    .line 25
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->e:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    return v2

    .line 30
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string/jumbo p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->f:I

    .line 32
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    .line 33
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->h:J

    .line 34
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->i:J

    .line 35
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->j:J

    .line 36
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->k:I

    add-int/2addr p2, v3

    .line 37
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    .line 38
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 39
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->k:I

    invoke-interface {p1, p2, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 40
    :goto_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->k:I

    if-ge v2, p1, :cond_7

    .line 41
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->n:[I

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->p:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    aput p2, p1, v2

    .line 42
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->n:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    return v2

    .line 21
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method
