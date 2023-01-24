.class final Lcom/google/vr/sdk/widgets/video/deps/bj;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/bk;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bk;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([BI)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    return-void
.end method

.method private a(I)I
    .locals 4

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->d:I

    .line 47
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->d:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bk;->k:I

    if-ge v1, v2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bk;->n:[I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->d:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->e:Z

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 10
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 11
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->e:Z

    if-eqz v2, :cond_1

    .line 12
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->e:Z

    .line 13
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 14
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->e:Z

    if-nez v2, :cond_9

    .line 15
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    if-gez v2, :cond_4

    .line 16
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-virtual {v2, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    .line 20
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bk;->f:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v3

    if-nez v3, :cond_3

    .line 21
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bj;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 22
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->d:I

    add-int/2addr v3, v0

    goto :goto_2

    :cond_3
    move v3, v0

    .line 23
    :goto_2
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 24
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    .line 25
    :cond_4
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bj;->a(I)I

    move-result v2

    .line 26
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->d:I

    add-int/2addr v3, v4

    if-lez v2, :cond_7

    .line 28
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    .line 29
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 30
    :cond_5
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v5

    invoke-interface {p1, v4, v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 31
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 32
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bk;->n:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->e:Z

    .line 33
    :cond_7
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bk;->k:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    .line 34
    :cond_8
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    goto/16 :goto_1

    :cond_9
    return v1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/bk;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:Lcom/google/vr/sdk/widgets/video/deps/bk;

    return-object v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/gA;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 42
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v3

    .line 43
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    return-void
.end method
