.class final Lcom/google/vr/sdk/widgets/video/deps/cU$a;
.super Lcom/google/vr/sdk/widgets/video/deps/cT;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/z;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;)V

    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$a;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cU$a;->b(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public b(IIZ)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cU$a;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 8
    invoke-virtual {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cU$a;->a(Z)I

    move-result p1

    :cond_0
    return p1
.end method
