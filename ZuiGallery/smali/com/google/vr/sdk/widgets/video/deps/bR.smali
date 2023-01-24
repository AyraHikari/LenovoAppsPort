.class final Lcom/google/vr/sdk/widgets/video/deps/bR;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bR$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "WavHeaderReader"

.field private static final b:I = 0x1

.field private static final c:I = 0xfffe


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/at;)Lcom/google/vr/sdk/widgets/video/deps/bQ;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    .line 4
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bR$a;

    move-result-object v2

    .line 5
    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    const-string v3, "RIFF"

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return-object v4

    .line 7
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-interface {p0, v2, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 8
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    const-string v3, "WAVE"

    .line 10
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v3

    const-string v6, "WavHeaderReader"

    if-eq v2, v3, :cond_1

    const/16 p0, 0x24

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported RIFF format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 13
    :cond_1
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bR$a;

    move-result-object v2

    .line 14
    :goto_0
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    const-string v7, "fmt "

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v7

    if-eq v3, v7, :cond_2

    .line 15
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->c:J

    long-to-int v2, v2

    invoke-interface {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    .line 16
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bR$a;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_2
    iget-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->c:J

    const-wide/16 v9, 0x10

    cmp-long v3, v7, v9

    const/4 v7, 0x1

    if-ltz v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 18
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p0, v3, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 19
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 20
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->j()I

    move-result v3

    .line 21
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->j()I

    move-result v9

    .line 22
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->y()I

    move-result v10

    .line 23
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->y()I

    move-result v11

    .line 24
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->j()I

    move-result v12

    .line 25
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->j()I

    move-result v13

    mul-int v0, v9, v13

    .line 26
    div-int/lit8 v0, v0, 0x8

    if-ne v12, v0, :cond_6

    .line 29
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(I)I

    move-result v14

    if-nez v14, :cond_4

    const/16 p0, 0x26

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported WAV bit depth: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    if-eq v3, v7, :cond_5

    const v0, 0xfffe

    if-eq v3, v0, :cond_5

    const/16 p0, 0x28

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported WAV format type: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 36
    :cond_5
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->c:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    .line 37
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/bQ;

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/bQ;-><init>(IIIIII)V

    return-object p0

    .line 28
    :cond_6
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected block alignment: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; got: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/bQ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {p0}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 41
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    .line 42
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bR$a;

    move-result-object v2

    .line 43
    :goto_0
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    const-string v4, "data"

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 44
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WavHeaderReader"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x8

    .line 45
    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->c:J

    add-long/2addr v5, v3

    .line 46
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    const-string v4, "RIFF"

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const-wide/16 v5, 0xc

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v5, v3

    if-gtz v3, :cond_1

    long-to-int v2, v5

    .line 50
    invoke-interface {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 51
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bR$a;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    iget p1, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    const/16 v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_2
    invoke-interface {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 54
    invoke-interface {p0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v0

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->c:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bQ;->a(JJ)V

    return-void
.end method
