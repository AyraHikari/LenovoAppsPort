.class final Lcom/google/vr/sdk/widgets/video/deps/be;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public a:Lcom/google/vr/sdk/widgets/video/deps/aS;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lcom/google/vr/sdk/widgets/video/deps/bd;

.field public p:I

.field public q:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field public r:Z

.field public s:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->e:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->s:J

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->m:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->r:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->o:Lcom/google/vr/sdk/widgets/video/deps/bd;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 22
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 23
    :cond_1
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->p:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->m:Z

    .line 25
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->r:Z

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->e:I

    .line 9
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->f:I

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->h:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 11
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->g:[J

    .line 12
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->h:[I

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->i:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    if-ge p1, p2, :cond_3

    :cond_2
    mul-int/lit8 p2, p2, 0x7d

    .line 14
    div-int/lit8 p2, p2, 0x64

    .line 15
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->i:[I

    .line 16
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->j:[I

    .line 17
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->k:[J

    .line 18
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->l:[Z

    .line 19
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->n:[Z

    :cond_3
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->p:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 28
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 29
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->r:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->p:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 32
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->q:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 33
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->r:Z

    return-void
.end method

.method public b(I)J
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->k:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/be;->j:[I

    aget p1, v2, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method
