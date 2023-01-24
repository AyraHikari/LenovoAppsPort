.class public final Lcom/google/vr/sdk/widgets/video/deps/br;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# static fields
.field private static final d:I = 0x9

.field private static final e:I = 0x8

.field private static final f:I

.field private static final g:I = 0x4

.field private static final h:I = 0x8

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2


# instance fields
.field private final l:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private o:I

.field private p:I

.field private q:J

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RCC\u0001"

    .line 58
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->l:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:I

    if-ne p1, v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->p:I

    return v3

    .line 32
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input not RawCC"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v1
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v3, 0x5

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2d

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:J

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_3

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v3, 0x9

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->t()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:J

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:I

    .line 47
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:I

    return v1

    .line 45
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->p:I

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported version number: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 49
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:I

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 53
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:I

    .line 54
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:I

    goto :goto_0

    .line 55
    :cond_0
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:I

    if-lez v5, :cond_1

    .line 56
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 14
    :goto_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v1, :cond_1

    if-ne p2, v3, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->d(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    .line 23
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    return v2

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 19
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    goto :goto_0

    .line 20
    :cond_2
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    return v0

    .line 15
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    goto :goto_0

    :cond_4
    return v0
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 3

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 8
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->l:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 13
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method
