.class public final Lcom/tencent/mm/sdk/diffdev/a/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/diffdev/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/tencent/mm/sdk/diffdev/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final ai:Z

.field private static final aj:Ljava/lang/String;

.field private static ak:Ljava/lang/String;


# instance fields
.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Lcom/tencent/mm/sdk/diffdev/OAuthListener;

.field private ao:Lcom/tencent/mm/sdk/diffdev/a/f;

.field private appId:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/tencent/mm/sdk/diffdev/a/d;->ai:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/MicroMsg/oauth_qrcode.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/d;->aj:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/d;->ak:Ljava/lang/String;

    const-string v0, "http://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s"

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/d;->ak:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/diffdev/OAuthListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->scope:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->al:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->am:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->signature:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->an:Lcom/tencent/mm/sdk/diffdev/OAuthListener;

    return-void
.end method

.method static synthetic r()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mm/sdk/diffdev/a/d;->ai:Z

    return v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mm/sdk/diffdev/a/d;->aj:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "external storage available = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/mm/sdk/diffdev/a/d;->ai:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicroMsg.SDK.GetQRCodeTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/tencent/mm/sdk/diffdev/a/d;->ak:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->appId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->al:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->am:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->scope:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->signature:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v2, v1, v6

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v6, -0x1

    invoke-static {p1, v6}, Lcom/tencent/mm/sdk/diffdev/a/e;->b(Ljava/lang/String;I)[B

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v4

    const-string p1, "doInBackground, url = %s, time consumed = %d(ms)"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/tencent/mm/sdk/diffdev/a/d$a;->d([B)Lcom/tencent/mm/sdk/diffdev/a/d$a;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;

    iget-object v0, p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    const-string v2, "MicroMsg.SDK.GetQRCodeTask"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "onPostExecute, get qrcode success"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->an:Lcom/tencent/mm/sdk/diffdev/OAuthListener;

    iget-object v1, p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;->as:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;->av:[B

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/diffdev/OAuthListener;->onAuthGotQrcode(Ljava/lang/String;[B)V

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/f;

    iget-object p1, p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;->aq:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->an:Lcom/tencent/mm/sdk/diffdev/OAuthListener;

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/sdk/diffdev/a/f;-><init>(Ljava/lang/String;Lcom/tencent/mm/sdk/diffdev/OAuthListener;)V

    iput-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->ao:Lcom/tencent/mm/sdk/diffdev/a/f;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mm/sdk/diffdev/a/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-array p1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/sdk/diffdev/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    aput-object v1, v0, v3

    const-string v1, "onPostExecute, get qrcode fail, OAuthErrCode = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->an:Lcom/tencent/mm/sdk/diffdev/OAuthListener;

    iget-object p1, p1, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/mm/sdk/diffdev/OAuthListener;->onAuthFinish(Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;Ljava/lang/String;)V

    return-void
.end method

.method public final q()Z
    .locals 2

    const-string v0, "MicroMsg.SDK.GetQRCodeTask"

    const-string v1, "cancelTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/d;->ao:Lcom/tencent/mm/sdk/diffdev/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/sdk/diffdev/a/d;->cancel(Z)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/diffdev/a/f;->cancel(Z)Z

    move-result v0

    return v0
.end method
