.class public Lcom/google/vr/sdk/widgets/video/deps/bi;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final e:I = 0x8


# instance fields
.field private f:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/bn;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bi$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bi$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bi;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gA;
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object p0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bk;-><init>()V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->f:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 25
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    .line 26
    iget-object v4, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v4, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 27
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bi;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bh;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bi;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bp;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bp;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bp;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bi;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bm;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bm;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bm;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
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

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bi;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->h:Z

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->f:Lcom/google/vr/sdk/widgets/video/deps/au;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->f:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->f:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-virtual {v1, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 19
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->h:Z

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result p1

    return p1
.end method

.method public a(JJ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->g:Lcom/google/vr/sdk/widgets/video/deps/bn;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bi;->f:Lcom/google/vr/sdk/widgets/video/deps/au;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bi;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/r; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
