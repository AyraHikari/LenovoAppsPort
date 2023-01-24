.class final Lcom/google/vr/sdk/widgets/video/deps/cU$b;
.super Lcom/google/vr/sdk/widgets/video/deps/cI;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/z;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/z;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dd$b;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dd$b;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dd;)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->c:I

    .line 4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->d:I

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->e:I

    .line 6
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->c:I

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    .line 7
    div-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "LoopingMediaSource contains too many periods"

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->c:I

    div-int/2addr p1, v0

    return p1
.end method

.method public b()I
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->d:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected b(I)I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->d:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .line 13
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 15
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->c:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected c(I)Lcom/google/vr/sdk/widgets/video/deps/z;
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    return-object p1
.end method

.method protected d(I)I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->c:I

    mul-int/2addr p1, v0

    return p1
.end method

.method protected e(I)I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$b;->d:I

    mul-int/2addr p1, v0

    return p1
.end method

.method protected f(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
