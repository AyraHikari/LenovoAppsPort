.class final Lcom/google/vr/sdk/widgets/video/deps/bI$a;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x40


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/bz;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/gJ;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bz;Lcom/google/vr/sdk/widgets/video/deps/gJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bz;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->c:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    return-void
.end method

.method private b()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->e:Z

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->f:Z

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->h:I

    return-void
.end method

.method private c()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->i:J

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->e:Z

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 29
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 30
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 31
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 32
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 33
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 34
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->g:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->f:Z

    if-eqz v5, :cond_0

    .line 35
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 36
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 37
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 38
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 39
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 40
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 41
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 42
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->c:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    .line 43
    iput-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->g:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->c:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->i:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->g:Z

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->b()V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->h:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->d:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->c()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bz;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->i:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(JZ)V

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/bz;->b()V

    return-void
.end method
