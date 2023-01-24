.class public final Lcom/google/vr/sdk/widgets/video/deps/ao;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/az;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field private final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->b:[I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->d:[J

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->e:[J

    .line 6
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 8
    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->f:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->f:J

    return-wide v0
.end method

.method public b(J)J
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ao;->a(J)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method
