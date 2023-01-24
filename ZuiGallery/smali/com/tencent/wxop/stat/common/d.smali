.class Lcom/tencent/wxop/stat/common/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/util/DisplayMetrics;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0.3"

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->b:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/tencent/wxop/stat/common/d;->d:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/common/d;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/d;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->d(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->c:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->o(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tencent/wxop/stat/common/d;->l:I

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->m:Ljava/lang/String;

    iget p1, p0, Lcom/tencent/wxop/stat/common/d;->d:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->p:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->u(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->r:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/d;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tencent/wxop/stat/common/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/common/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .locals 4

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->c:Landroid/util/DisplayMetrics;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/d;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wxop/stat/common/d;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "sr"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/wxop/stat/common/d;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/d;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dpi"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/a;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bs"

    invoke-static {p2, v1, v0}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/q;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ss"

    invoke-static {p2, v1, v0}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "wf"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "wflist"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->p:Ljava/lang/String;

    const-string v0, "sen"

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "thn"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/StatConfig;->getQQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "qq"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/StatConfig;->getCustomUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "cui"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->r:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "/"

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->r:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->r:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    const-string v3, "fram"

    invoke-static {p1, v3, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->s:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->s:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->s:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    const-string v0, "from"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/common/a;->b()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "ui"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mid"

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/k;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pcn"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "osn"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->a:Ljava/lang/String;

    const-string v0, "av"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->h:Ljava/lang/String;

    const-string v0, "ch"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->f:Ljava/lang/String;

    const-string v0, "mf"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->b:Ljava/lang/String;

    const-string/jumbo v0, "sv"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v0, "osd"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "prod"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string/jumbo v0, "tags"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "fng"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->n:Ljava/lang/String;

    const-string v0, "lch"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/wxop/stat/common/d;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ov"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string v0, "os"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->i:Ljava/lang/String;

    const-string v0, "op"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->g:Ljava/lang/String;

    const-string v0, "lg"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->e:Ljava/lang/String;

    const-string v0, "md"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->j:Ljava/lang/String;

    const-string/jumbo v0, "tz"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/wxop/stat/common/d;->l:I

    if-eqz p2, :cond_7

    const-string v0, "jb"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->k:Ljava/lang/String;

    const-string v0, "sd"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->m:Ljava/lang/String;

    const-string v0, "apn"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->q:Ljava/lang/String;

    const-string v0, "cpu"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v0, "abi"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v0, "abi2"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->r:Ljava/lang/String;

    const-string v0, "ram"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/common/d;->s:Ljava/lang/String;

    const-string v0, "rom"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
