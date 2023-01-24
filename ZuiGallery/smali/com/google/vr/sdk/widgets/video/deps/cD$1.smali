.class Lcom/google/vr/sdk/widgets/video/deps/cD$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cD;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cD;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cD;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cD$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cD;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cD$1;->a:Lcom/google/vr/sdk/widgets/video/deps/cD;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cD;->a(Lcom/google/vr/sdk/widgets/video/deps/cD;)V

    :goto_0
    return-void
.end method
