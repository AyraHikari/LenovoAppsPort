.class public final Lcom/google/vr/sdk/widgets/video/deps/cs;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bX;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x4

.field private static final c:I = 0x5

.field private static final d:I = 0x6

.field private static final e:I = 0xff


# instance fields
.field private final f:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/gJ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/ca;)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bY;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->h:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->g:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->h:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 6
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->f:J

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->h:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 8
    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->f:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->g:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c(J)J

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->e:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 12
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 13
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v1, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a([BI)V

    .line 14
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    .line 16
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    int-to-long v3, p1

    or-long/2addr v1, v3

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 18
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    .line 19
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->g:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    const/4 v4, 0x0

    .line 21
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    if-eqz v3, :cond_6

    const/16 v5, 0xff

    if-eq v3, v5, :cond_5

    const/4 p1, 0x4

    if-eq v3, p1, :cond_4

    const/4 p1, 0x5

    if-eq v3, p1, :cond_3

    const/4 p1, 0x6

    if-eq v3, p1, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->h:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-static {p1, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cw;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/gJ;)Lcom/google/vr/sdk/widgets/video/deps/cw;

    move-result-object v4

    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->h:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-static {p1, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/gJ;)Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object v4

    goto :goto_0

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/cv;

    move-result-object v4

    goto :goto_0

    .line 31
    :cond_5
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cs;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {v3, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cq;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IJ)Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-result-object v4

    goto :goto_0

    .line 23
    :cond_6
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/cu;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/cu;-><init>()V

    :goto_0
    const/4 p1, 0x0

    if-nez v4, :cond_7

    .line 33
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bW;

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bW;-><init>([Lcom/google/vr/sdk/widgets/video/deps/bW$a;)V

    goto :goto_1

    :cond_7
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bW;

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    aput-object v4, v0, p1

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bW;-><init>([Lcom/google/vr/sdk/widgets/video/deps/bW$a;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method
