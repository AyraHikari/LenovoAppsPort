.class public Lcom/tencent/wxop/stat/a/l;
.super Lcom/tencent/wxop/stat/a/e;


# instance fields
.field private a:Lcom/tencent/wxop/stat/common/b;

.field private m:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    new-instance p2, Lcom/tencent/wxop/stat/common/b;

    invoke-direct {p2, p1}, Lcom/tencent/wxop/stat/common/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/wxop/stat/a/l;->a:Lcom/tencent/wxop/stat/common/b;

    iput-object p3, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->b:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/e;->e:Lcom/tencent/wxop/stat/common/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/e;->e:Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/common/a;->d()I

    move-result v0

    const-string/jumbo v1, "ut"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "cfg"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->y(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "ncts"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/l;->a:Lcom/tencent/wxop/stat/common/b;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/wxop/stat/common/b;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    return v1
.end method
