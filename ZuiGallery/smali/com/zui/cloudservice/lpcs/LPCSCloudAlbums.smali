.class public Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;
.super Lcom/zui/cloudservice/lpcs/LPCSResult;
.source "LPCSCloudAlbums.java"


# instance fields
.field private count:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;-><init>()V

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->type:I

    return-void
.end method

.method public static fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;
    .locals 2

    .line 21
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->setSuccess(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->setErrCode(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->setErrMsg(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->setCache(Z)V

    .line 26
    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "count"

    .line 29
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->count:I

    const-string/jumbo p0, "uri"

    .line 30
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->uri:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected generateExtra()Ljava/lang/String;
    .locals 3

    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "count"

    .line 47
    iget v2, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->count:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uri"

    .line 48
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->count:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->count:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->uri:Ljava/lang/String;

    return-void
.end method
