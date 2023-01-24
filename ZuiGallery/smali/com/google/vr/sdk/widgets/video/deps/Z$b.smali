.class Lcom/google/vr/sdk/widgets/video/deps/Z$b;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ae$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/ae$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/Z;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/Z;Lcom/google/vr/sdk/widgets/video/deps/Z$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Z$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Z;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/ae;[BII[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "+TT;>;[BII[B)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/Z;->d(Lcom/google/vr/sdk/widgets/video/deps/Z;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Z;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/Z;->f:Lcom/google/vr/sdk/widgets/video/deps/Z$c;

    invoke-virtual {p1, p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/Z$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
