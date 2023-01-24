.class public Lcom/tencent/wxop/stat/a/b;
.super Lcom/tencent/wxop/stat/a/e;


# instance fields
.field protected a:Lcom/tencent/wxop/stat/a/c;

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    new-instance p1, Lcom/tencent/wxop/stat/a/c;

    invoke-direct {p1}, Lcom/tencent/wxop/stat/a/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/wxop/stat/a/b;->m:J

    iput-object p3, p1, Lcom/tencent/wxop/stat/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    iget-object v2, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v2, v2, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->d:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/wxop/stat/a/b;->m:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/a/c;->a:Ljava/lang/String;

    const-string v1, "ei"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/tencent/wxop/stat/a/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "du"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/a/c;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a/b;->h()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/a/c;->c:Lorg/json/JSONObject;

    const-string v1, "kv"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/a/c;->b:Lorg/json/JSONArray;

    const-string v1, "ar"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/tencent/wxop/stat/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/b;->a:Lcom/tencent/wxop/stat/a/c;

    return-object v0
.end method
