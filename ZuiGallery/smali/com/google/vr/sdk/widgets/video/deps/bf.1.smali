.class final Lcom/google/vr/sdk/widgets/video/deps/bf;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# instance fields
.field public final a:I

.field public final b:[J

.field public final c:[I

.field public final d:I

.field public final e:[J

.field public final f:[I


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 3
    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 4
    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->b:[J

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->c:[I

    .line 7
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->d:I

    .line 8
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:[J

    .line 9
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:[I

    .line 10
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->a:I

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 14
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b(J)I
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b([JJZZ)I

    move-result p1

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->e:[J

    array-length p2, p2

    if-ge p1, p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bf;->f:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
