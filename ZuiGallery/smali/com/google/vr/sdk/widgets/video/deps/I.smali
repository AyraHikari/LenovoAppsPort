.class final Lcom/google/vr/sdk/widgets/video/deps/I;
.super Ljava/lang/Object;
.source "ChannelMappingAudioProcessor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/F;


# instance fields
.field private b:I

.field private c:I

.field private d:[I

.field private e:Z

.field private f:[I

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ByteBuffer;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/I;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/I;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->h:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 33
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    .line 34
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    array-length v3, v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    .line 35
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 36
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    if-ge v0, v1, :cond_2

    .line 39
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 40
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 42
    :cond_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->h:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([I)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->d:[I

    return-void
.end method

.method public a()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->e:Z

    return v0
.end method

.method public a(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/F$a;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->d:[I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->d:[I

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 12
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->e:Z

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_6

    if-nez v0, :cond_1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->c:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    if-ne v0, p2, :cond_1

    return v3

    .line 18
    :cond_1
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->c:I

    .line 19
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    array-length v0, v0

    if-eq p2, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->e:Z

    move v0, v3

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 22
    aget v2, v2, v0

    if-ge v2, p2, :cond_4

    .line 25
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->e:Z

    if-eq v2, v0, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->e:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/F$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/F$a;-><init>(III)V

    throw v0

    :cond_5
    return v1

    .line 15
    :cond_6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/F$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/F$a;-><init>(III)V

    throw v0
.end method

.method public b()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->i:Z

    return-void
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->h:Ljava/nio/ByteBuffer;

    .line 50
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/I;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->h:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->h:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/I;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 1

    .line 53
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/I;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->h:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->i:Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/I;->g()V

    .line 57
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/I;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->g:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->b:I

    .line 59
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->c:I

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->f:[I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/I;->e:Z

    return-void
.end method
