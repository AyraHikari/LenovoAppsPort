.class public Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;
.super Lcom/zui/cloudservice/lpcs/LPCSResult;
.source "LPCSPhotoDetail.java"


# instance fields
.field private detectedFileTypeName:Ljava/lang/String;

.field private fNumber:Ljava/lang/String;

.field private focalLength:Ljava/lang/String;

.field private height:I

.field private isoSpeedRatings:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private make:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private photoTime:J

.field private shutterSpeedValue:Ljava/lang/String;

.field private size:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;-><init>()V

    const/4 v0, 0x3

    .line 65
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->type:I

    return-void
.end method

.method public static fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;
    .locals 4

    .line 13
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->setSuccess(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->setErrCode(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->setErrMsg(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->setCache(Z)V

    .line 18
    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "photoTime"

    .line 21
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->photoTime:J

    const-string p0, "make"

    .line 22
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->make:Ljava/lang/String;

    const-string p0, "model"

    .line 23
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->model:Ljava/lang/String;

    const-string/jumbo p0, "width"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->width:I

    const-string p0, "height"

    .line 25
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->height:I

    const-string/jumbo p0, "size"

    .line 26
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->size:J

    const-string p0, "detectedFileTypeName"

    .line 27
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->detectedFileTypeName:Ljava/lang/String;

    const-string p0, "focalLength"

    .line 28
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->focalLength:Ljava/lang/String;

    const-string/jumbo p0, "shutterSpeedValue"

    .line 29
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->shutterSpeedValue:Ljava/lang/String;

    const-string p0, "fNumber"

    .line 30
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->fNumber:Ljava/lang/String;

    const-string p0, "isoSpeedRatings"

    .line 31
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->isoSpeedRatings:Ljava/lang/String;

    const-string p0, "location"

    .line 32
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->location:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected generateExtra()Ljava/lang/String;
    .locals 4

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "photoTime"

    .line 44
    iget-wide v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->photoTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "make"

    .line 45
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->make:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    .line 46
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "width"

    .line 47
    iget v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 48
    iget v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "size"

    .line 49
    iget-wide v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "detectedFileTypeName"

    .line 50
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->detectedFileTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "focalLength"

    .line 51
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->focalLength:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "shutterSpeedValue"

    .line 52
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->shutterSpeedValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fNumber"

    .line 53
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->fNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isoSpeedRatings"

    .line 54
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->isoSpeedRatings:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "location"

    .line 55
    iget-object v2, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetectedFileTypeName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->detectedFileTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getFNumber()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->fNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFocalLength()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->focalLength:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->height:I

    return v0
.end method

.method public getIsoSpeedRatings()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->isoSpeedRatings:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->make:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->photoTime:J

    return-wide v0
.end method

.method public getShutterSpeedValue()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->shutterSpeedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->size:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->width:I

    return v0
.end method

.method public setDetectedFileTypeName(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->detectedFileTypeName:Ljava/lang/String;

    return-void
.end method

.method public setFNumber(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->fNumber:Ljava/lang/String;

    return-void
.end method

.method public setFocalLength(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->focalLength:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->height:I

    return-void
.end method

.method public setIsoSpeedRatings(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->isoSpeedRatings:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->location:Ljava/lang/String;

    return-void
.end method

.method public setMake(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->make:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->model:Ljava/lang/String;

    return-void
.end method

.method public setPhotoTime(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->photoTime:J

    return-void
.end method

.method public setShutterSpeedValue(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->shutterSpeedValue:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->size:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->width:I

    return-void
.end method
