.class Lcom/google/vr/sdk/widgets/video/deps/Y$b;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/Y;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/Y;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 4
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/Y;->a:Lcom/google/vr/sdk/widgets/video/deps/ak;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/Y;->b:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ak;->a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae$a;)[B

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/Y;->a:Lcom/google/vr/sdk/widgets/video/deps/ak;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/Y;->b:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ae$c;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ak;->a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae$c;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$b;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/Y;->c:Lcom/google/vr/sdk/widgets/video/deps/Y$c;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/Y$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
