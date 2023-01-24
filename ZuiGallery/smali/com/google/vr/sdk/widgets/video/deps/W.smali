.class public Lcom/google/vr/sdk/widgets/video/deps/W;
.super Lcom/google/vr/sdk/widgets/video/deps/U;
.source "SimpleOutputBuffer.java"


# instance fields
.field public c:Ljava/nio/ByteBuffer;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/V<",
            "*",
            "Lcom/google/vr/sdk/widgets/video/deps/W;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/V<",
            "*",
            "Lcom/google/vr/sdk/widgets/video/deps/W;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/U;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->d:Lcom/google/vr/sdk/widgets/video/deps/V;

    return-void
.end method


# virtual methods
.method public a(JI)Ljava/nio/ByteBuffer;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->a:J

    .line 5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_1

    .line 6
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/U;->a()V

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/W;->d:Lcom/google/vr/sdk/widgets/video/deps/V;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/V;->a(Lcom/google/vr/sdk/widgets/video/deps/U;)V

    return-void
.end method
