.class public Lcom/zui/gallery/banner/MonitorHomeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MonitorHomeReceiver.java"


# instance fields
.field private final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_LOCK_SCREEN:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field private isRecentApps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "reason"

    .line 16
    iput-object v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    const-string v0, "homekey"

    .line 17
    iput-object v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    const-string v0, "recentapps"

    .line 18
    iput-object v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    const-string v0, "dream"

    .line 19
    iput-object v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->SYSTEM_DIALOG_REASON_LOCK_SCREEN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps:Z

    return-void
.end method


# virtual methods
.method public isRecentApps()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reason"

    .line 25
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "homekey"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 32
    iput-boolean v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps:Z

    :cond_1
    const-string p2, "recentapps"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 38
    iput-boolean v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps:Z

    :cond_2
    const-string p2, "dream"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    iput-boolean v0, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps:Z

    :cond_3
    return-void
.end method

.method public setRecentApps(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/zui/gallery/banner/MonitorHomeReceiver;->isRecentApps:Z

    return-void
.end method
