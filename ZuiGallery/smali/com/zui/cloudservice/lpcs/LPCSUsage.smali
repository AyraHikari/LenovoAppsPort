.class public Lcom/zui/cloudservice/lpcs/LPCSUsage;
.super Lcom/zui/cloudservice/lpcs/LPCSResult;
.source "LPCSUsage.java"


# instance fields
.field private totalSize:J

.field private usedSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->type:I

    return-void
.end method

.method static fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSUsage;
    .locals 6

    .line 22
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSUsage;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSUsage;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSUsage;->setSuccess(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSUsage;->setErrCode(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSUsage;->setErrMsg(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/cloudservice/lpcs/LPCSUsage;->setCache(Z)V

    .line 27
    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    iget-object p0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 29
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 30
    aget-object v1, p0, v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/cloud/JavaTypeUtils;->convertLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->usedSize:J

    const/4 v1, 0x1

    .line 31
    aget-object p0, p0, v1

    invoke-static {p0, v2, v3}, Lcom/zui/gallery/cloud/JavaTypeUtils;->convertLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->totalSize:J

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected generateExtra()Ljava/lang/String;
    .locals 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->usedSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->totalSize:J

    return-wide v0
.end method

.method public getUsedSize()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->usedSize:J

    return-wide v0
.end method

.method public isOutOfSpace()Z
    .locals 4

    .line 60
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->usedSize:J

    iget-wide v2, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->totalSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->totalSize:J

    return-void
.end method

.method public setUsedSize(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSUsage;->usedSize:J

    return-void
.end method
