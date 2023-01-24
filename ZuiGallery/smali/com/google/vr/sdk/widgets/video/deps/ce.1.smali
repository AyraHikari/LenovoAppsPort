.class public final Lcom/google/vr/sdk/widgets/video/deps/ce;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/ca;)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 11

    .line 2
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->e:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v1, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([BI)V

    .line 6
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->C()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v5

    const/4 v2, 0x4

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 10
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    div-long v5, v7, v5

    .line 11
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v7

    .line 12
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bW;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/bW$a;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cd;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/cd;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bW;-><init>([Lcom/google/vr/sdk/widgets/video/deps/bW$a;)V

    return-object p1
.end method
