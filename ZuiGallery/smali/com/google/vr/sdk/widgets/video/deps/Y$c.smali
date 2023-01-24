.class Lcom/google/vr/sdk/widgets/video/deps/Y$c;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/Y;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/Y;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$c;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$c;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Lcom/google/vr/sdk/widgets/video/deps/Y;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y$c;->a:Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Lcom/google/vr/sdk/widgets/video/deps/Y;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
