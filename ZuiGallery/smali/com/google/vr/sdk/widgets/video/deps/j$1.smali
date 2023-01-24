.class Lcom/google/vr/sdk/widgets/video/deps/j$1;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/j;-><init>([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/j;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/j;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j$1;->a:Lcom/google/vr/sdk/widgets/video/deps/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j$1;->a:Lcom/google/vr/sdk/widgets/video/deps/j;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/j;->a(Landroid/os/Message;)V

    return-void
.end method
