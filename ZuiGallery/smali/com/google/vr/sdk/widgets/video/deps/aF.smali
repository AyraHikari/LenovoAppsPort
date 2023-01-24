.class final Lcom/google/vr/sdk/widgets/video/deps/aF;
.super Lcom/google/vr/sdk/widgets/video/deps/aE;
.source "VideoTagPayloadReader.java"


# static fields
.field private static final b:I = 0x7

.field private static final c:I = 0x1

.field private static final d:I = 0x5

.field private static final e:I = 0x0

.field private static final f:I = 0x1


# instance fields
.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private i:I

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aE;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    .line 2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gy;->a:[B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 16
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->j:Z

    if-nez v1, :cond_0

    .line 17
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 18
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 19
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gO;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/gO;

    move-result-object p1

    .line 20
    iget p3, p1, Lcom/google/vr/sdk/widgets/video/deps/gO;->b:I

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->i:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 21
    iget v5, p1, Lcom/google/vr/sdk/widgets/video/deps/gO;->c:I

    iget v6, p1, Lcom/google/vr/sdk/widgets/video/deps/gO;->d:I

    const/high16 v7, -0x40800000    # -1.0f

    iget-object v8, p1, Lcom/google/vr/sdk/widgets/video/deps/gO;->a:Ljava/util/List;

    const/4 v9, -0x1

    iget v10, p1, Lcom/google/vr/sdk/widgets/video/deps/gO;->e:F

    const/4 v11, 0x0

    const-string/jumbo v1, "video/avc"

    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    .line 22
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 23
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->j:Z

    goto :goto_2

    :cond_0
    if-ne v0, p2, :cond_3

    .line 24
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->j:Z

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 26
    aput-byte p3, v0, p3

    .line 27
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 28
    aput-byte p3, v0, v1

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->i:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v7, p3

    .line 31
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    if-lez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->i:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 33
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 34
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3, p3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 36
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v3, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    add-int/lit8 v7, v7, 0x4

    .line 38
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v3, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    add-int/2addr v7, v2

    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->a:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->k:I

    if-ne p1, p2, :cond_2

    move v6, p2

    goto :goto_1

    :cond_2
    move v6, p3

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/aE$a;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aF;->k:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 10
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aE$a;

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Video format not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aE$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
