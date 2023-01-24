.class public final Lcom/google/vr/sdk/widgets/video/deps/dJ;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field public final a:J

.field public final b:J

.field private final c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->c:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gL;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dJ;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 8

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    add-long/2addr v6, v2

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    cmp-long p2, v6, v2

    if-nez p2, :cond_2

    .line 12
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    .line 13
    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    add-long/2addr v4, v6

    :goto_0
    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    .line 15
    :cond_2
    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    add-long/2addr v6, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    cmp-long p2, v6, v2

    if-nez p2, :cond_4

    .line 16
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    .line 17
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    add-long/2addr v4, v6

    :goto_1
    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    :cond_4
    :goto_2
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gL;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    .line 32
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 22
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->a:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->d:I

    .line 26
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dJ;->d:I

    return v0
.end method
