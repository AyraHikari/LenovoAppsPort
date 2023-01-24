.class public Lcom/tencent/wxop/stat/a/a;
.super Lcom/tencent/wxop/stat/a/e;


# instance fields
.field private a:Lcom/tencent/wxop/stat/StatAccount;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wxop/stat/a/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    iput-object p3, p0, Lcom/tencent/wxop/stat/a/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->e:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatAccount;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatAccount;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "acc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
