.class public final Lcom/google/vr/sdk/widgets/video/deps/gt;
.super Ljava/lang/Object;
.source "FlacStreamInfo.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:J


# direct methods
.method public constructor <init>(IIIIIIIJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->a:I

    .line 16
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->b:I

    .line 17
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->c:I

    .line 18
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->d:I

    .line 19
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->e:I

    .line 20
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->f:I

    .line 21
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->g:I

    .line 22
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->h:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->a:I

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->b:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->c:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->d:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->e:I

    const/4 p1, 0x3

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->f:I

    const/4 p1, 0x5

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->g:I

    const/4 p1, 0x4

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v1, 0xf

    and-long/2addr p1, v1

    const/16 v1, 0x20

    shl-long/2addr p1, v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->h:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->b:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->f:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->g:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 2

    .line 25
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->g:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public c()J
    .locals 4

    .line 26
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->h:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gt;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
