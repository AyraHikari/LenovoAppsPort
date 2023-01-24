.class Lcom/google/vr/sdk/widgets/video/deps/bU$1;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/bS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bV;->a()Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bV;->b(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object p1

    return-object p1
.end method
