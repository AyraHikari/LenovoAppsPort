.class public final Lcom/google/vr/sdk/widgets/video/deps/bs;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final e:I = 0x2000

.field private static final f:I = 0xb77

.field private static final g:I = 0xae2

.field private static final h:I


# instance fields
.field private final i:J

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/bt;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bs$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bs$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bs;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "ID3"

    .line 58
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/bs;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bs;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->i:J

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bt;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bt;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->j:Lcom/google/vr/sdk/widgets/video/deps/bt;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 p2, 0xae2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 47
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 51
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 52
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->l:Z

    if-nez p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->j:Lcom/google/vr/sdk/widgets/video/deps/bt;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->i:J

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/bt;->a(JZ)V

    .line 54
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->l:Z

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->j:Lcom/google/vr/sdk/widgets/video/deps/bt;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->k:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bt;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    return v0
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->l:Z

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->j:Lcom/google/vr/sdk/widgets/video/deps/bt;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bt;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bs;->j:Lcom/google/vr/sdk/widgets/video/deps/bt;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bO$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bt;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    .line 40
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 41
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 10
    :goto_0
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v4, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v4

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/bs;->h:I

    if-eq v4, v5, :cond_4

    .line 19
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 20
    invoke-interface {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    move v1, v2

    move v4, v3

    .line 23
    :goto_1
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v6, 0x5

    invoke-interface {p1, v5, v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 25
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    .line 28
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 31
    :cond_0
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    return v5

    .line 34
    :cond_2
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/A;->a([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x5

    .line 37
    invoke-interface {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 17
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method
