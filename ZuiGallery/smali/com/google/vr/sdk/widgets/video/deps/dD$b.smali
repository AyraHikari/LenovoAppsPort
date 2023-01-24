.class public final Lcom/google/vr/sdk/widgets/video/deps/dD$b;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/vr/sdk/widgets/video/deps/dn;

.field public b:Lcom/google/vr/sdk/widgets/video/deps/dK;

.field public c:Lcom/google/vr/sdk/widgets/video/deps/dA;

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(JILcom/google/vr/sdk/widgets/video/deps/dK;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    .line 3
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    .line 4
    iget-object p1, p4, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    goto :goto_1

    :cond_0
    const-string p2, "application/x-rawcc"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/br;

    iget-object p2, p4, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/br;-><init>(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/aJ;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aJ;-><init>(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    if-eqz p5, :cond_3

    const/4 p1, 0x4

    :cond_3
    if-eqz p6, :cond_4

    or-int/lit8 p1, p1, 0x8

    .line 16
    :cond_4
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/aU;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/aU;-><init>(I)V

    move-object p1, p2

    .line 17
    :goto_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget-object p5, p4, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p2, p1, p3, p5}, Lcom/google/vr/sdk/widgets/video/deps/dn;-><init>(Lcom/google/vr/sdk/widgets/video/deps/as;ILcom/google/vr/sdk/widgets/video/deps/m;)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dn;

    .line 18
    :goto_1
    invoke-virtual {p4}, Lcom/google/vr/sdk/widgets/video/deps/dK;->e()Lcom/google/vr/sdk/widgets/video/deps/dA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "video/webm"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/webm"

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(J)I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(JJ)I

    move-result p1

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    add-int/2addr p1, p2

    return p1
.end method

.method public a(I)J
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method a(JLcom/google/vr/sdk/widgets/video/deps/dK;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/cK;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dK;->e()Lcom/google/vr/sdk/widgets/video/deps/dA;

    move-result-object v0

    .line 21
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/dK;->e()Lcom/google/vr/sdk/widgets/video/deps/dA;

    move-result-object v1

    .line 22
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    .line 23
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->b:Lcom/google/vr/sdk/widgets/video/deps/dK;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    .line 27
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dA;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 29
    :cond_1
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(J)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 32
    :cond_2
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 33
    invoke-interface {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    .line 34
    invoke-interface {v0, p2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(IJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 35
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a()I

    move-result p1

    .line 36
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(I)J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_3

    .line 38
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p1

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    .line 41
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    invoke-interface {v0, v4, v5, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(JJ)I

    move-result p3

    sub-int/2addr p3, p1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    :goto_0
    return-void

    .line 40
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cK;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cK;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(J)I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 5

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->a(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    sub-int/2addr p1, v3

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->d:J

    .line 47
    invoke-interface {v2, p1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->c:Lcom/google/vr/sdk/widgets/video/deps/dA;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dD$b;->e:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dA;->b(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    return-object p1
.end method
