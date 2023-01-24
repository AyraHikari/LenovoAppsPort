.class final Lcom/google/vr/sdk/widgets/video/deps/eI;
.super Ljava/lang/Object;
.source "SsaSubtitle.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ep;


# instance fields
.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/em;

.field private final b:[J


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/em;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->a:[Lcom/google/vr/sdk/widgets/video/deps/em;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 9
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    array-length v0, v0

    return v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->b:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eI;->a:[Lcom/google/vr/sdk/widgets/video/deps/em;

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
