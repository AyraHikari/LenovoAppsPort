.class final Lcom/google/vr/sdk/widgets/video/deps/D$a;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/D;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/D$a;->a:Lcom/google/vr/sdk/widgets/video/deps/D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/D;Lcom/google/vr/sdk/widgets/video/deps/D$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/D$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/D;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/D$a;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/C;->a(Landroid/content/Intent;)Lcom/google/vr/sdk/widgets/video/deps/C;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/D$a;->a:Lcom/google/vr/sdk/widgets/video/deps/D;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/D;->a:Lcom/google/vr/sdk/widgets/video/deps/C;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/C;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/D$a;->a:Lcom/google/vr/sdk/widgets/video/deps/D;

    iput-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/D;->a:Lcom/google/vr/sdk/widgets/video/deps/C;

    .line 6
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/D$a;->a:Lcom/google/vr/sdk/widgets/video/deps/D;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/D;->a(Lcom/google/vr/sdk/widgets/video/deps/D;)Lcom/google/vr/sdk/widgets/video/deps/D$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/D$b;->a(Lcom/google/vr/sdk/widgets/video/deps/C;)V

    :cond_0
    return-void
.end method
