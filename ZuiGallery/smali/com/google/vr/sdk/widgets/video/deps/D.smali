.class public final Lcom/google/vr/sdk/widgets/video/deps/D;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/D$a;,
        Lcom/google/vr/sdk/widgets/video/deps/D$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/vr/sdk/widgets/video/deps/C;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/D$b;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/D$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->b:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/D$b;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->c:Lcom/google/vr/sdk/widgets/video/deps/D$b;

    .line 4
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/4 p2, 0x0

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/D$a;

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/D$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/D;Lcom/google/vr/sdk/widgets/video/deps/D$1;)V

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/D;)Lcom/google/vr/sdk/widgets/video/deps/D$b;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->c:Lcom/google/vr/sdk/widgets/video/deps/D$b;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/C;
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/C;->a(Landroid/content/Intent;)Lcom/google/vr/sdk/widgets/video/deps/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->a:Lcom/google/vr/sdk/widgets/video/deps/C;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/D;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
