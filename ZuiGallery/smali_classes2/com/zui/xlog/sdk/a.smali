.class Lcom/zui/xlog/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ExAnalyticsTracker"

    const-string v0, "###onServiceConnected--"

    invoke-static {p1, v0}, Lcom/zui/xlog/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p2}, Lcom/zui/xlog/a$a;->a(Landroid/os/IBinder;)Lcom/zui/xlog/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Lcom/zui/xlog/a;)Lcom/zui/xlog/a;

    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p1}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p1}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p1}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/zui/xlog/a;->a(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    iget-object p2, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;

    move-result-object p2

    invoke-interface {p2}, Lcom/zui/xlog/a;->a()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ExAnalyticsTracker"

    const-string v0, "###onServiceDisconnected--"

    invoke-static {p1, v0}, Lcom/zui/xlog/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/xlog/sdk/a;->a:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Lcom/zui/xlog/a;)Lcom/zui/xlog/a;

    return-void
.end method
