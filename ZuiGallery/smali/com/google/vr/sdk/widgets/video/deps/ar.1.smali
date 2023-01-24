.class public final Lcom/google/vr/sdk/widgets/video/deps/ar;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aA;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 7
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V
    .locals 0

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 0

    return-void
.end method
