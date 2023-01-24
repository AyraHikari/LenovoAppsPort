.class final Lcom/google/vr/sdk/widgets/video/deps/bp;
.super Lcom/google/vr/sdk/widgets/video/deps/bn;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bp$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

.field private b:I

.field private c:Z

.field private d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/bq$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bn;-><init>()V

    return-void
.end method

.method static a(BII)I
    .locals 0

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static a(BLcom/google/vr/sdk/widgets/video/deps/bp$a;)I
    .locals 2

    .line 54
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bp;->a(BII)I

    move-result p0

    .line 55
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/bq$c;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$c;->a:Z

    if-nez p0, :cond_0

    .line 56
    iget-object p0, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->g:I

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->h:I

    :goto_0
    return p0
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V
    .locals 6

    .line 48
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 1

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/r; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->e:Lcom/google/vr/sdk/widgets/video/deps/bq$b;

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->b:I

    .line 11
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->c:Z

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/bn$a;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bp;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 31
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->j:[B

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->c:[B

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 34
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->e:I

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget v5, p1, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->b:I

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget-wide v8, p1, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->c:J

    long-to-int v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/vorbis"

    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    iput-object p1, p4, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    return p2
.end method

.method protected b(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
    .locals 5

    .line 17
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->a:Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    invoke-static {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/bp;->a(BLcom/google/vr/sdk/widgets/video/deps/bp$a;)I

    move-result v0

    .line 20
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->c:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->b:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_1
    int-to-long v3, v1

    .line 22
    invoke-static {p1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/bp;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V

    .line 23
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->c:Z

    .line 24
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->b:I

    return-wide v3
.end method

.method c(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bp$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    return-object v1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->e:Lcom/google/vr/sdk/widgets/video/deps/bq$b;

    if-nez v0, :cond_1

    .line 40
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bq$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->e:Lcom/google/vr/sdk/widgets/video/deps/bq$b;

    return-object v1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    new-array v4, v0, [B

    .line 43
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->b:I

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)[Lcom/google/vr/sdk/widgets/video/deps/bq$c;

    move-result-object v5

    .line 45
    array-length p1, v5

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(I)I

    move-result v6

    .line 46
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bp$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->e:Lcom/google/vr/sdk/widgets/video/deps/bq$b;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/bp$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bq$d;Lcom/google/vr/sdk/widgets/video/deps/bq$b;[B[Lcom/google/vr/sdk/widgets/video/deps/bq$c;I)V

    return-object p1
.end method

.method protected c(J)V
    .locals 2

    .line 13
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bn;->c(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->c:Z

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->d:Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    if-eqz p1, :cond_1

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/bq$d;->g:I

    :cond_1
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bp;->b:I

    return-void
.end method
