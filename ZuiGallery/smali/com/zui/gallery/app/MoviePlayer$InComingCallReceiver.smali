.class Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InComingCallReceiver"
.end annotation


# instance fields
.field isPlayingBeforeIncomingCall:Z

.field final synthetic this$0:Lcom/zui/gallery/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/MoviePlayer;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/MoviePlayer;Lcom/zui/gallery/app/MoviePlayer$1;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;-><init>(Lcom/zui/gallery/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "phone"

    .line 653
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 654
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const-string p2, "MoviePlayer"

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MoviePlayer [Broadcast]\u901a\u8bdd\u4e2d"

    .line 673
    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "MoviePlayer [Broadcast]\u7b49\u5f85\u63a5\u7535\u8bdd"

    .line 657
    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 660
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$1300(Lcom/zui/gallery/app/MoviePlayer;)V

    .line 661
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->isPlayingBeforeIncomingCall:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 663
    iput-boolean p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->isPlayingBeforeIncomingCall:Z

    goto :goto_0

    :cond_3
    const-string p1, "MoviePlayer [Broadcast]\u7535\u8bdd\u6302\u65ad"

    .line 667
    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-boolean p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->isPlayingBeforeIncomingCall:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    .line 669
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$1400(Lcom/zui/gallery/app/MoviePlayer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$1100(Lcom/zui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$InComingCallReceiver;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$1100(Lcom/zui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
