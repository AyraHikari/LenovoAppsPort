.class public final Lcom/google/vr/sdk/widgets/video/deps/ap;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/at;


# static fields
.field private static final a:I = 0x10000

.field private static final b:I = 0x80000

.field private static final c:[B


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final e:J

.field private f:J

.field private g:[B

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 92
    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ap;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->d:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->f:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->e:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    return-void
.end method

.method private a([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->d:Lcom/google/vr/sdk/widgets/video/deps/fv;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 87
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private d([BII)I
    .locals 2

    .line 67
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/ap;->f(I)V

    return p3
.end method

.method private d(I)V
    .locals 3

    .line 59
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    add-int/2addr v0, p1

    .line 60
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 61
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(III)I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 65
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ap;->f(I)V

    return p1
.end method

.method private f(I)V
    .locals 5

    .line 73
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    .line 75
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    .line 76
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    .line 77
    new-array v2, v0, [B

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    invoke-static {v0, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    return-void
.end method

.method private g(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 90
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->f:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ap;->e(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ap;->c:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a([BIIIZ)I

    move-result v0

    .line 23
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ap;->g(I)V

    return v0
.end method

.method public a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ap;->d([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a([BIIIZ)I

    move-result v0

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ap;->g(I)V

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    return-void
.end method

.method public a(JLjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 57
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->f:J

    .line 58
    throw p3
.end method

.method public a(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ap;->e(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 27
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ap;->c:[B

    neg-int v3, v5

    array-length v0, v2

    add-int/2addr v0, v5

    .line 28
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v1, p0

    move v6, p2

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/ap;->g(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public a([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ap;->d([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/ap;->g(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b()J
    .locals 4

    .line 53
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->f:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a(IZ)Z

    return-void
.end method

.method public b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a([BIIZ)Z

    return-void
.end method

.method public b(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ap;->d(I)V

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v0

    :cond_0
    if-ge v5, p1, :cond_1

    .line 43
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;->a([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    .line 47
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->i:I

    const/4 p1, 0x1

    return p1
.end method

.method public b([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ap;->b(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_0
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->g:[B

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->h:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->f:J

    return-wide v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ap;->b(IZ)Z

    return-void
.end method

.method public c([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/ap;->b([BIIZ)Z

    return-void
.end method

.method public d()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->e:J

    return-wide v0
.end method
