.class public Lcom/zui/cloudservice/lpcs/LPCSTrashBin;
.super Lcom/zui/cloudservice/lpcs/LPCSResult;
.source "LPCSTrashBin.java"


# instance fields
.field contentProviderAddress:Ljava/lang/String;

.field count:J

.field outdate:I

.field size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;-><init>()V

    const/4 v0, 0x4

    .line 59
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->type:I

    return-void
.end method

.method static fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSTrashBin;
    .locals 4

    .line 12
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->setSuccess(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->setErrCode(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->setErrMsg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->setCache(Z)V

    .line 17
    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "count"

    .line 20
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->count:J

    const-string/jumbo p0, "size"

    .line 21
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->size:J

    const-string p0, "outdate"

    .line 22
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->outdate:I

    const-string/jumbo p0, "uri"

    .line 23
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->contentProviderAddress:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected generateExtra()Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "count"

    .line 35
    iget-wide v2, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->count:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "size"

    .line 36
    iget-wide v2, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "outdate"

    .line 37
    iget v2, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->outdate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uri"

    .line 38
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->contentProviderAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentProviderAddress()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->contentProviderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->count:J

    return-wide v0
.end method

.method public getOutdate()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->outdate:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->size:J

    return-wide v0
.end method

.method public setContentProviderAddress(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->contentProviderAddress:Ljava/lang/String;

    return-void
.end method

.method public setCount(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->count:J

    return-void
.end method

.method public setOutdate(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->outdate:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->size:J

    return-void
.end method
