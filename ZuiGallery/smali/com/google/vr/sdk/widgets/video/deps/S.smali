.class public final Lcom/google/vr/sdk/widgets/video/deps/S;
.super Ljava/lang/Object;
.source "DecoderCounters.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    monitor-enter p0

    .line 2
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/S;)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I

    .line 4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->d:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->d:I

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->g:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->g:I

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->h:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->h:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/S;->h:I

    return-void
.end method
