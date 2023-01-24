.class public final Lcom/google/vr/sdk/widgets/video/deps/bP;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;
.implements Lcom/google/vr/sdk/widgets/video/deps/az;


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private static final e:I = 0x8000


# instance fields
.field private f:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bP$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bP$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bP;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    if-nez p2, :cond_1

    .line 12
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bR;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/bQ;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->c()I

    move-result v3

    const v4, 0x8000

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->e()I

    move-result v5

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    .line 17
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->d()I

    move-result v6

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->g()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, "audio/raw"

    .line 18
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->g:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 20
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->b()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->i:I

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->f()Z

    move-result p2

    if-nez p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bR;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/bQ;)V

    .line 23
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->f:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->g:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const v0, 0x8000

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 26
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    .line 27
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->i:I

    div-int/2addr v1, v2

    if-lez v1, :cond_4

    .line 29
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->b(J)J

    move-result-wide v6

    .line 30
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->i:I

    mul-int v9, v1, p1

    .line 31
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    sub-int v10, p1, v9

    iput v10, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    .line 32
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->g:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    :cond_4
    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->j:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->f:Lcom/google/vr/sdk/widgets/video/deps/au;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->g:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    .line 6
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bR;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/bQ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()J
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bP;->h:Lcom/google/vr/sdk/widgets/video/deps/bQ;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
