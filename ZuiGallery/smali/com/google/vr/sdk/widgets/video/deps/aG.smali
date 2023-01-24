.class final Lcom/google/vr/sdk/widgets/video/deps/aG;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aG$a;
    }
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x4

.field private static final k:I = 0x8

.field private static final l:I = 0x8

.field private static final m:I = 0x4

.field private static final n:I = 0x8


# instance fields
.field private final o:[B

.field private final p:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/vr/sdk/widgets/video/deps/aG$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/aL;

.field private r:Lcom/google/vr/sdk/widgets/video/deps/aI;

.field private s:I

.field private t:I

.field private u:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->o:[B

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->p:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aL;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aL;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->q:Lcom/google/vr/sdk/widgets/video/deps/aL;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/at;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->o:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->o:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aG;->a(Lcom/google/vr/sdk/widgets/video/deps/at;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->o:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->o:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aL;->a(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->o:[B

    invoke-static {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aL;->a([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 63
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aI;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 66
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    goto :goto_0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/at;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 81
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 82
    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 83
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->q:Lcom/google/vr/sdk/widgets/video/deps/aL;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aL;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aI;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aG$a;->a(Lcom/google/vr/sdk/widgets/video/deps/aG$a;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 14
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/aG$a;->b(Lcom/google/vr/sdk/widgets/video/deps/aG$a;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aI;->c(I)V

    return v2

    .line 16
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    const/4 v3, 0x4

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->q:Lcom/google/vr/sdk/widgets/video/deps/aL;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aL;->a(Lcom/google/vr/sdk/widgets/video/deps/at;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 19
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aG;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)J

    move-result-wide v4

    :cond_2
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    return v1

    :cond_3
    long-to-int v0, v4

    .line 22
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    .line 23
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    .line 24
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    const/4 v4, 0x2

    if-ne v0, v2, :cond_5

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->q:Lcom/google/vr/sdk/widgets/video/deps/aL;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v1, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/aL;->a(Lcom/google/vr/sdk/widgets/video/deps/at;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    .line 26
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    invoke-interface {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/aI;->a(I)I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_e

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 40
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    const-wide/16 v7, 0x4

    cmp-long v0, v3, v7

    if-eqz v0, :cond_7

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    goto :goto_2

    .line 41
    :cond_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/aG;->b(Lcom/google/vr/sdk/widgets/video/deps/at;I)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/aI;->a(ID)V

    .line 43
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    return v2

    .line 56
    :cond_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    long-to-int v4, v4

    invoke-interface {v0, v3, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/aI;->a(IILcom/google/vr/sdk/widgets/video/deps/at;)V

    .line 51
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    return v2

    .line 45
    :cond_a
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    long-to-int v3, v3

    invoke-direct {p0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aG;->c(Lcom/google/vr/sdk/widgets/video/deps/at;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/aI;->a(ILjava/lang/String;)V

    .line 48
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    return v2

    .line 46
    :cond_b
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_d

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    long-to-int v3, v3

    invoke-direct {p0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aG;->a(Lcom/google/vr/sdk/widgets/video/deps/at;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/aI;->a(IJ)V

    .line 38
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    return v2

    .line 36
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_e
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v5

    .line 30
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    add-long/2addr v3, v5

    .line 31
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->p:Ljava/util/Stack;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/vr/sdk/widgets/video/deps/aG$a;-><init>(IJLcom/google/vr/sdk/widgets/video/deps/aG$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->r:Lcom/google/vr/sdk/widgets/video/deps/aI;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->t:I

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    invoke-interface/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/aI;->a(IJJ)V

    .line 33
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    return v2

    .line 53
    :cond_f
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->u:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 54
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG;->s:I

    goto/16 :goto_1
.end method
