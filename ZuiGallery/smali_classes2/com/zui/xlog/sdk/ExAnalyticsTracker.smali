.class public Lcom/zui/xlog/sdk/ExAnalyticsTracker;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/zui/xlog/sdk/ExAnalyticsTracker;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zui/xlog/a;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private m:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    iput v1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d:I

    const-string v2, ""

    iput-object v2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->g:Ljava/lang/String;

    iput v1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->h:I

    iput-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->j:Ljava/util/Map;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Business0Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->k:Landroid/os/HandlerThread;

    new-instance v0, Lcom/zui/xlog/sdk/a;

    invoke-direct {v0, p0}, Lcom/zui/xlog/sdk/a;-><init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)V

    iput-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->g:Ljava/lang/String;

    iput p4, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->h:I

    const-string p1, "ExAnalyticsTracker"

    const-string p3, "initialize SDK Verion 1.0.0.0091"

    invoke-static {p1, p3}, Lcom/zui/xlog/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a:Landroid/content/Context;

    const-string p3, "ExAnalyticsTrackerConfig"

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "visit"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "session_id"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d:I

    if-nez p3, :cond_2

    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result p3

    const v0, 0x7fffffff

    and-int/2addr p3, v0

    iput p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d:I

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d:I

    invoke-interface {p3, p5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput v1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    :cond_2
    iget p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    const/4 p5, 0x1

    add-int/2addr p3, p5

    iput p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.zui.xlog.StartService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.zui.xlog"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    invoke-virtual {p2, p1, p3, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l:Landroid/os/Handler;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->k:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l:Landroid/os/Handler;

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;
    .locals 0

    iget-object p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    return-object p0
.end method

.method static synthetic a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Lcom/zui/xlog/a;)Lcom/zui/xlog/a;
    .locals 0

    iput-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    return-object p1
.end method

.method static synthetic a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->j:Ljava/util/Map;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->j:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->j:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I
    .locals 0

    iget p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->h:I

    return p0
.end method

.method static synthetic f(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I
    .locals 0

    iget p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d:I

    return p0
.end method

.method public static getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;
    .locals 1

    sget-object v0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->i:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-direct {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;-><init>()V

    sput-object v0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->i:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    :cond_0
    sget-object v0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->i:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    return-object v0
.end method

.method static synthetic h(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I
    .locals 0

    iget p0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c:I

    return p0
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ExAnalyticsTracker"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/zui/xlog/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    iget-object v1, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zui/xlog/a;->b(Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l:Landroid/os/Handler;

    new-instance v7, Lcom/zui/xlog/sdk/b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zui/xlog/sdk/b;-><init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/zui/xlog/sdk/ParamMap;)I
    .locals 9

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l:Landroid/os/Handler;

    new-instance v8, Lcom/zui/xlog/sdk/c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/zui/xlog/sdk/c;-><init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/zui/xlog/sdk/ParamMap;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public trackPause(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l:Landroid/os/Handler;

    new-instance v1, Lcom/zui/xlog/sdk/d;

    invoke-direct {v1, p0, p1}, Lcom/zui/xlog/sdk/d;-><init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public trackResume(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->m:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b:Lcom/zui/xlog/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l:Landroid/os/Handler;

    new-instance v1, Lcom/zui/xlog/sdk/e;

    invoke-direct {v1, p0, p1}, Lcom/zui/xlog/sdk/e;-><init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
