.class public Lcom/google/vr/sdk/widgets/video/deps/d;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/t;I)Z
    .locals 0

    .line 6
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/t;->setRepeatMode(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/t;IJ)Z
    .locals 0

    .line 4
    invoke-interface {p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/t;->seekTo(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/t;Z)Z
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/t;->setPlayWhenReady(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/t;Z)Z
    .locals 0

    .line 8
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/t;->setShuffleModeEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method
