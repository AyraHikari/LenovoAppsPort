.class public abstract Lcom/google/vr/sdk/widgets/video/deps/en;
.super Lcom/google/vr/sdk/widgets/video/deps/V;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/eq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/V<",
        "Lcom/google/vr/sdk/widgets/video/deps/et;",
        "Lcom/google/vr/sdk/widgets/video/deps/eu;",
        "Lcom/google/vr/sdk/widgets/video/deps/er;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/eq;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/et;

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/V;-><init>([Lcom/google/vr/sdk/widgets/video/deps/T;[Lcom/google/vr/sdk/widgets/video/deps/U;)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/en;->a:Ljava/lang/String;

    const/16 p1, 0x400

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(I)V

    return-void
.end method


# virtual methods
.method protected abstract a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/et;Lcom/google/vr/sdk/widgets/video/deps/eu;Z)Lcom/google/vr/sdk/widgets/video/deps/er;
    .locals 8

    .line 11
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->e:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/en;->a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;

    move-result-object v5

    .line 13
    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->f:J

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->g:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(JLcom/google/vr/sdk/widgets/video/deps/ep;J)V

    const/high16 p1, -0x80000000

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->c(I)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/er; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/T;Lcom/google/vr/sdk/widgets/video/deps/U;Z)Ljava/lang/Exception;
    .locals 0

    .line 18
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/et;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/eu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(Lcom/google/vr/sdk/widgets/video/deps/et;Lcom/google/vr/sdk/widgets/video/deps/eu;Z)Lcom/google/vr/sdk/widgets/video/deps/er;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/U;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/eu;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(Lcom/google/vr/sdk/widgets/video/deps/eu;)V

    return-void
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/eu;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/V;->a(Lcom/google/vr/sdk/widgets/video/deps/U;)V

    return-void
.end method

.method protected synthetic h()Lcom/google/vr/sdk/widgets/video/deps/T;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/en;->j()Lcom/google/vr/sdk/widgets/video/deps/et;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic i()Lcom/google/vr/sdk/widgets/video/deps/U;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/en;->k()Lcom/google/vr/sdk/widgets/video/deps/eu;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Lcom/google/vr/sdk/widgets/video/deps/et;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/et;-><init>()V

    return-object v0
.end method

.method protected final k()Lcom/google/vr/sdk/widgets/video/deps/eu;
    .locals 1

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eo;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/eo;-><init>(Lcom/google/vr/sdk/widgets/video/deps/en;)V

    return-object v0
.end method
