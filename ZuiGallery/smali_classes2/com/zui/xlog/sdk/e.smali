.class Lcom/zui/xlog/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    iput-object p2, p0, Lcom/zui/xlog/sdk/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;

    move-result-object v1

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->e(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v4

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->f(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->g(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v6

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->h(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v7

    iget-object v0, p0, Lcom/zui/xlog/sdk/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/zui/xlog/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
