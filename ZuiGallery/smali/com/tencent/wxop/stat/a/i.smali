.class public Lcom/tencent/wxop/stat/a/i;
.super Lcom/tencent/wxop/stat/a/e;


# static fields
.field public static final a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/a/i;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    const-string v1, "A9VH9B8L4GX4"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/a/i;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/tencent/wxop/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->i:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "actky"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
