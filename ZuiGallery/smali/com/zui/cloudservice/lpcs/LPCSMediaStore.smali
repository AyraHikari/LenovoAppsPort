.class public Lcom/zui/cloudservice/lpcs/LPCSMediaStore;
.super Lcom/zui/cloudservice/lpcs/LPCSResult;
.source "LPCSMediaStore.java"


# instance fields
.field private contentProviderAddress:Ljava/lang/String;

.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;-><init>()V

    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->type:I

    return-void
.end method

.method static fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSMediaStore;
    .locals 2

    .line 16
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->setSuccess(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->setErrCode(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->setErrMsg(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->setCache(Z)V

    .line 21
    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "count"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->count:I

    const-string/jumbo p0, "uri"

    .line 25
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->contentProviderAddress:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected generateExtra()Ljava/lang/String;
    .locals 3

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "count"

    .line 53
    iget v2, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->count:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uri"

    .line 54
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->contentProviderAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentProviderAddress()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->contentProviderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->count:I

    return v0
.end method

.method public setContentProviderAddress(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->contentProviderAddress:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->count:I

    return-void
.end method
