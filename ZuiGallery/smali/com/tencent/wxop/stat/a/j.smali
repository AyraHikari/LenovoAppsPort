.class public Lcom/tencent/wxop/stat/a/j;
.super Lcom/tencent/wxop/stat/a/e;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tencent/wxop/stat/a/j;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wxop/stat/a/j;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/a;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wxop/stat/a/j;->m:Ljava/lang/String;

    sget-object p2, Lcom/tencent/wxop/stat/a/j;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/wxop/stat/a/j;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->h:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/a/j;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/a/j;->a:Ljava/lang/String;

    const-string v1, "op"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/j;->m:Ljava/lang/String;

    const-string v1, "cn"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/j;->n:Ljava/lang/String;

    const-string/jumbo v1, "sp"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
