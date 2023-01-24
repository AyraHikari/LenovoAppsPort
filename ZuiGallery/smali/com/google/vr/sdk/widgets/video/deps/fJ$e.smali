.class final Lcom/google/vr/sdk/widgets/video/deps/fJ$e;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fJ$d;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$e;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ$d;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$e;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ$d;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$d;->g()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$e;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
