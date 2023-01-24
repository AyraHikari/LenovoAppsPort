.class public final Lcom/google/vr/sdk/widgets/video/deps/bu;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final e:I = 0xc8

.field private static final f:I

.field private static final g:I = 0x2000


# instance fields
.field private final h:J

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/bv;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bu$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bu$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bu;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "ID3"

    .line 64
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/bu;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bu;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->h:J

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bv;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bv;-><init>(Z)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->i:Lcom/google/vr/sdk/widgets/video/deps/bv;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

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

    .line 53
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-interface {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 57
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 58
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->k:Z

    if-nez p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->i:Lcom/google/vr/sdk/widgets/video/deps/bv;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->h:J

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(JZ)V

    .line 60
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->k:Z

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->i:Lcom/google/vr/sdk/widgets/video/deps/bv;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->j:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    return v0
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->k:Z

    .line 50
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->i:Lcom/google/vr/sdk/widgets/video/deps/bv;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bu;->i:Lcom/google/vr/sdk/widgets/video/deps/bv;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bO$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bv;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    .line 46
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 47
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 10
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

    .line 9
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    const/4 v3, 0x0

    move v4, v3

    .line 11
    :goto_0
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v5, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 13
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v5

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/bu;->f:I

    if-eq v5, v6, :cond_4

    .line 20
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 21
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    move v1, v3

    move v6, v1

    move v5, v4

    .line 25
    :goto_1
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v8, 0x2

    invoke-interface {p1, v7, v3, v8}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 27
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v7

    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_1

    .line 31
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v4

    const/16 v6, 0x2000

    if-lt v1, v6, :cond_0

    return v3

    .line 34
    :cond_0
    invoke-interface {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    move v1, v3

    move v6, v1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    add-int/2addr v1, v7

    const/4 v8, 0x4

    if-lt v1, v8, :cond_2

    const/16 v9, 0xbc

    if-le v6, v9, :cond_2

    return v7

    .line 37
    :cond_2
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v7, v3, v8}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    const/16 v7, 0xe

    .line 38
    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    const/16 v7, 0xd

    .line 39
    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_3

    return v3

    :cond_3
    add-int/lit8 v8, v7, -0x6

    .line 42
    invoke-interface {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    add-int/2addr v6, v7

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    .line 15
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 16
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v5

    add-int/lit8 v6, v5, 0xa

    add-int/2addr v4, v6

    .line 18
    invoke-interface {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method
