.class final Lcom/tencent/wxop/stat/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

.field final synthetic c:Lcom/tencent/wxop/stat/a/c;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;Lcom/tencent/wxop/stat/a/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/ac;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/wxop/stat/ac;->b:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    iput-object p3, p0, Lcom/tencent/wxop/stat/ac;->c:Lcom/tencent/wxop/stat/a/c;

    iput p4, p0, Lcom/tencent/wxop/stat/ac;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/tencent/wxop/stat/a/b;

    iget-object v1, p0, Lcom/tencent/wxop/stat/ac;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/ac;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/wxop/stat/ac;->b:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v2, v3, v4}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/wxop/stat/ac;->c:Lcom/tencent/wxop/stat/a/c;

    iget-object v3, v3, Lcom/tencent/wxop/stat/a/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/wxop/stat/ac;->b:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/wxop/stat/a/b;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a/b;->b()Lcom/tencent/wxop/stat/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wxop/stat/ac;->c:Lcom/tencent/wxop/stat/a/c;

    iget-object v2, v2, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    iget v1, p0, Lcom/tencent/wxop/stat/ac;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wxop/stat/a/b;->a(J)V

    new-instance v1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/a/e;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/aq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/ac;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
