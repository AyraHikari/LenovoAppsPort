.class public Lcom/tencent/wxop/stat/StatConfig;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:I

.field private static F:I

.field private static G:J

.field private static H:J

.field private static volatile I:Ljava/lang/String;

.field private static J:I

.field private static volatile K:I

.field private static L:I

.field private static M:I

.field private static N:Z

.field private static O:I

.field private static P:Z

.field private static Q:Ljava/lang/String;

.field private static R:Z

.field private static S:Lcom/tencent/wxop/stat/g;

.field static a:Lcom/tencent/wxop/stat/f;

.field static b:Lcom/tencent/wxop/stat/f;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z

.field static h:I

.field static i:J

.field public static isAutoExceptionCaught:Z

.field static j:Z

.field static volatile k:Ljava/lang/String;

.field static l:Z

.field static m:I

.field static n:J

.field static o:I

.field private static p:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static q:Lcom/tencent/wxop/stat/StatReportStrategy;

.field private static r:Z

.field private static s:Z

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/wxop/stat/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/f;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    new-instance v0, Lcom/tencent/wxop/stat/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/f;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->r:Z

    sput-boolean v1, Lcom/tencent/wxop/stat/StatConfig;->s:Z

    const/16 v2, 0x7530

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->t:I

    const v2, 0x186a0

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->u:I

    const/16 v2, 0x1e

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->v:I

    const/16 v3, 0xa

    sput v3, Lcom/tencent/wxop/stat/StatConfig;->w:I

    const/16 v3, 0x64

    sput v3, Lcom/tencent/wxop/stat/StatConfig;->x:I

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->y:I

    sput v1, Lcom/tencent/wxop/stat/StatConfig;->z:I

    const-string v2, "__HIBERNATE__"

    sput-object v2, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    const-string v2, "__HIBERNATE__TIME"

    sput-object v2, Lcom/tencent/wxop/stat/StatConfig;->d:Ljava/lang/String;

    const-string v2, "__MTA_KILL__"

    sput-object v2, Lcom/tencent/wxop/stat/StatConfig;->e:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/wxop/stat/StatConfig;->A:Ljava/lang/String;

    const-string v4, "mta_channel"

    sput-object v4, Lcom/tencent/wxop/stat/StatConfig;->D:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    const/16 v4, 0xb4

    sput v4, Lcom/tencent/wxop/stat/StatConfig;->E:I

    sput-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->g:Z

    sput v3, Lcom/tencent/wxop/stat/StatConfig;->h:I

    const-wide/16 v3, 0x2710

    sput-wide v3, Lcom/tencent/wxop/stat/StatConfig;->i:J

    const/16 v5, 0x400

    sput v5, Lcom/tencent/wxop/stat/StatConfig;->F:I

    sput-boolean v1, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/tencent/wxop/stat/StatConfig;->G:J

    const-wide/32 v5, 0x493e0

    sput-wide v5, Lcom/tencent/wxop/stat/StatConfig;->H:J

    sput-boolean v1, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught:Z

    const-string v5, "pingma.qq.com:80"

    sput-object v5, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    const-string v5, "http://pingma.qq.com:80/mstat/report"

    sput-object v5, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->J:I

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->K:I

    const/16 v5, 0x14

    sput v5, Lcom/tencent/wxop/stat/StatConfig;->L:I

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    sput-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->N:Z

    const/16 v5, 0x1000

    sput v5, Lcom/tencent/wxop/stat/StatConfig;->O:I

    sput-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->P:Z

    sput-object v2, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    sput-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->R:Z

    sput-object v2, Lcom/tencent/wxop/stat/StatConfig;->S:Lcom/tencent/wxop/stat/g;

    sput-boolean v1, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    sput-wide v3, Lcom/tencent/wxop/stat/StatConfig;->n:J

    const/16 v0, 0x200

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->v:I

    return v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "_mta_ky_tag_"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    :catchall_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t find custom key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method static declared-synchronized a(I)V
    .locals 1

    const-class v0, Lcom/tencent/wxop/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->K:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(J)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/i;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "MTA is disable for current SDK version"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    .locals 2

    iget v0, p1, Lcom/tencent/wxop/stat/f;->a:I

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v1, v1, Lcom/tencent/wxop/stat/f;->a:I

    if-ne v0, v1, :cond_1

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object p1, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object p1, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    const-string v0, "iplist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object p0

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object p1, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget p0, p1, Lcom/tencent/wxop/stat/f;->a:I

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v0, v0, Lcom/tencent/wxop/stat/f;->a:I

    if-ne p0, v0, :cond_2

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    :cond_2
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "m"

    const-string v1, "c"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "v"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v6, p1, Lcom/tencent/wxop/stat/f;->d:I

    if-eq v6, v4, :cond_1

    move v2, v5

    :cond_1
    iput v4, p1, Lcom/tencent/wxop/stat/f;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/tencent/wxop/stat/f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/tencent/wxop/stat/i;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/f;)V

    :cond_5
    iget p2, p1, Lcom/tencent/wxop/stat/f;->a:I

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v0, v0, Lcom/tencent/wxop/stat/f;->a:I

    if-ne p2, v0, :cond_6

    iget-object p2, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    iget-object p2, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/tencent/wxop/stat/StatConfig;->b(Lorg/json/JSONObject;)V

    :cond_6
    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :goto_1
    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_mta_ky_tag_"

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    :goto_1
    invoke-static {p0, v2, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    goto :goto_1

    :cond_2
    const-string v2, "rs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/wxop/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v1

    if-eqz v1, :cond_0

    sput-object v1, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Change to ReportStrategy:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/wxop/stat/StatReportStrategy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "rs not found."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static a(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    return v2

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    return v2

    :cond_2
    return v0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b()V
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    return-void
.end method

.method static b(I)V
    .locals 0

    if-gez p0, :cond_0

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    return-void
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "2.0.3"

    const-string/jumbo v1, "sm"

    :try_start_0
    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_1
    if-lez p1, :cond_4

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "match sleepTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " minutes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v6, p1

    add-long/2addr v4, v6

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->d:Ljava/lang/String;

    invoke-static {p0, p1, v4, v5}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v3}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "MTA is disable for current SDK version"

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo p1, "sv"

    invoke-static {v2, p1, v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v3, "match sdk version:2.0.3"

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_5
    const-string p1, "md"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, p1, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "match MODEL:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_6
    const-string p1, "av"

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "match app version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_7
    const-string p1, "mf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "match MANUFACTURER:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_8
    const-string p1, "osv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "match android SDK version:"

    if-eqz p1, :cond_9

    :try_start_1
    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_9
    const-string p1, "ov"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_a
    const-string/jumbo p1, "ui"

    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/common/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "match imei:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/common/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v3, v1

    :cond_b
    const-string p1, "mid"

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "match mid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    move v1, v3

    :goto_2
    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->b(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatConfig;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/i;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/wxop/stat/StatConfig;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hibernateVer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current version:2.0.3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-string p0, "2.0.3"

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gtz p0, :cond_2

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "__HIBERNATE__ not found."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static c()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    return v0
.end method

.method public static declared-synchronized getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tencent/wxop/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "AppKey can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {p0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_3
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCurSessionStatReportCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->K:I

    return v0
.end method

.method public static getCustomLogger()Lcom/tencent/wxop/stat/g;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->S:Lcom/tencent/wxop/stat/g;

    return-object v0
.end method

.method public static getCustomProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCustomProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method public static getCustomUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "Context for getCustomUid is null."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MTA_CUSTOM_UID"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    return-object p0
.end method

.method public static getFlushDBSpaceMS()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/StatConfig;->n:J

    return-wide v0
.end method

.method public static declared-synchronized getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/wxop/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->D:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "installChannel can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {p0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/a/a/g;->E(Landroid/content/Context;)Lcom/tencent/a/a/a/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/g;->p()Lcom/tencent/a/a/a/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static getMaxBatchReportCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->y:I

    return v0
.end method

.method public static getMaxDaySessionNumbers()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->L:I

    return v0
.end method

.method public static getMaxImportantDataSendRetryCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->x:I

    return v0
.end method

.method public static getMaxParallelTimmingEvents()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->F:I

    return v0
.end method

.method public static getMaxReportEventLength()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->O:I

    return v0
.end method

.method public static getMaxSendRetryCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->w:I

    return v0
.end method

.method public static getMaxSessionStatReportCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->J:I

    return v0
.end method

.method public static getMaxStoreEventCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->u:I

    return v0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMsPeriodForMethodsCalledLimitClear()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/StatConfig;->i:J

    return-wide v0
.end method

.method public static getNumEventsCachedInMemory()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    return v0
.end method

.method public static getNumEventsCommitPerSec()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->z:I

    return v0
.end method

.method public static getNumOfMethodsCalledLimit()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->h:I

    return v0
.end method

.method public static getQQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    const-string v1, "mta.acc.qq"

    invoke-static {p0, v1, v0}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReportCompressedSize()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->o:I

    return v0
.end method

.method public static getSendPeriodMinutes()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->E:I

    return v0
.end method

.method public static getSessionTimoutMillis()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->t:I

    return v0
.end method

.method public static getStatReportHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatReportUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatSendStrategy()Lcom/tencent/wxop/stat/StatReportStrategy;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    return-object v0
.end method

.method public static isAutoExceptionCaught()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught:Z

    return v0
.end method

.method public static isDebugEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->r:Z

    return v0
.end method

.method public static isEnableConcurrentProcess()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->P:Z

    return v0
.end method

.method public static isEnableSmartReporting()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    return v0
.end method

.method public static isEnableStatService()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->s:Z

    return v0
.end method

.method public static isReportEventsByOrder()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    return v0
.end method

.method public static isXGProMode()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->R:Z

    return v0
.end method

.method public static setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "ctx in StatConfig.setAppKey() is null"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    :cond_2
    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr p1, v0

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "appkey in StatConfig.setAppKey() is null or exceed 256 bytes"

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "appkey in StatConfig.setAppKey() is null"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "The length of appkey cann\'t exceed 256 bytes."

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    return-void
.end method

.method public static setAutoExceptionCaught(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught:Z

    return-void
.end method

.method public static setCustomLogger(Lcom/tencent/wxop/stat/g;)V
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->S:Lcom/tencent/wxop/stat/g;

    return-void
.end method

.method public static setCustomUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "Context for setCustomUid is null."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "MTA_CUSTOM_UID"

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 1

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->r:Z

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->setDebugEnable(Z)V

    return-void
.end method

.method public static setEnableConcurrentProcess(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->P:Z

    return-void
.end method

.method public static setEnableSmartReporting(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    return-void
.end method

.method public static setEnableStatService(Z)V
    .locals 1

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->s:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setFlushDBSpaceMS(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/tencent/wxop/stat/StatConfig;->n:J

    :cond_0
    return-void
.end method

.method public static setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string/jumbo p1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->D:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setInstallChannel(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string/jumbo v0, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    return-void
.end method

.method public static setMaxBatchReportCount(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "setMaxBatchReportCount can not exceed the range of [2,1000]."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->y:I

    return-void
.end method

.method public static setMaxDaySessionNumbers(I)V
    .locals 1

    if-gtz p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "maxDaySessionNumbers must be greater than 0."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->L:I

    return-void
.end method

.method public static setMaxImportantDataSendRetryCount(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->x:I

    :cond_0
    return-void
.end method

.method public static setMaxParallelTimmingEvents(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "setMaxParallelTimmingEvents can not exceed the range of [1, 4096]."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->F:I

    return-void
.end method

.method public static setMaxReportEventLength(I)V
    .locals 1

    if-gtz p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "maxReportEventLength on setMaxReportEventLength() must greater than 0."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->O:I

    return-void
.end method

.method public static setMaxSendRetryCount(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "setMaxSendRetryCount can not exceed the range of [1,1000]."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->w:I

    return-void
.end method

.method public static setMaxSessionStatReportCount(I)V
    .locals 1

    if-gez p0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "maxSessionStatReportCount cannot be less than 0."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->J:I

    return-void
.end method

.method public static setMaxStoreEventCount(I)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7a120

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "setMaxStoreEventCount can not exceed the range of [0, 500000]."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->u:I

    return-void
.end method

.method public static setNumEventsCachedInMemory(I)V
    .locals 0

    if-ltz p0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    :cond_0
    return-void
.end method

.method public static setNumEventsCommitPerSec(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->z:I

    :cond_0
    return-void
.end method

.method public static setNumOfMethodsCalledLimit(IJ)V
    .locals 2

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->h:I

    const-wide/16 v0, 0x3e8

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    sput-wide p1, Lcom/tencent/wxop/stat/StatConfig;->i:J

    :cond_0
    return-void
.end method

.method public static setQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mta.acc.qq"

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public static setReportCompressedSize(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->o:I

    :cond_0
    return-void
.end method

.method public static setReportEventsByOrder(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    return-void
.end method

.method public static setSendPeriodMinutes(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2760

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->E:I

    return-void
.end method

.method public static setSessionTimoutMillis(I)V
    .locals 2

    const/16 v0, 0x3e8

    const v1, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000]."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->t:I

    return-void
.end method

.method public static setStatReportUrl(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    :try_start_0
    new-instance p0, Ljava/net/URI;

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string/jumbo v0, "statReportUrl cannot be null or empty."

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public static setStatSendStrategy(Lcom/tencent/wxop/stat/StatReportStrategy;)V
    .locals 3

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change to statSendStrategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setXGProMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->R:Z

    return-void
.end method
