.class Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/MoviePlayer;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/MoviePlayer;Lcom/zui/gallery/app/MoviePlayer$1;)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 632
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$1300(Lcom/zui/gallery/app/MoviePlayer;)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$1100(Lcom/zui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$1100(Lcom/zui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
