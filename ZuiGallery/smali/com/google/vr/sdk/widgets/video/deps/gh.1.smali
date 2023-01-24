.class public final Lcom/google/vr/sdk/widgets/video/deps/gh;
.super Ljava/lang/Object;
.source "AesCipherDataSink.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fu;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fu;

.field private final b:[B

.field private final c:[B

.field private d:Lcom/google/vr/sdk/widgets/video/deps/gj;


# direct methods
.method public constructor <init>([BLcom/google/vr/sdk/widgets/video/deps/fu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gh;-><init>([BLcom/google/vr/sdk/widgets/video/deps/fu;[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/vr/sdk/widgets/video/deps/fu;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->a:Lcom/google/vr/sdk/widgets/video/deps/fu;

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->b:[B

    .line 6
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->c:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->d:Lcom/google/vr/sdk/widgets/video/deps/gj;

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->a:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->a:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 9
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gk;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 10
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gj;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->b:[B

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/gj;-><init>(I[BJJ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->d:Lcom/google/vr/sdk/widgets/video/deps/gj;

    return-void
.end method

.method public a([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->c:[B

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->d:Lcom/google/vr/sdk/widgets/video/deps/gj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gj;->a([BII)V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->a:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a([BII)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    sub-int v2, p3, v1

    .line 17
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->c:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 18
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->d:Lcom/google/vr/sdk/widgets/video/deps/gj;

    add-int v6, p2, v1

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->c:[B

    const/4 v9, 0x0

    move-object v5, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/gj;->a([BII[BI)V

    .line 19
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->a:Lcom/google/vr/sdk/widgets/video/deps/fu;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gh;->c:[B

    invoke-interface {v3, v4, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a([BII)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
