.class public Lcom/zui/gallery/trash/CloudTrashItem;
.super Lcom/zui/gallery/trash/TrashItem;
.source "CloudTrashItem.java"


# instance fields
.field account:Ljava/lang/String;

.field checkSum:Ljava/lang/String;

.field cloudId:I

.field mimeType:I

.field reminderDays:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/zui/gallery/trash/TrashItem;-><init>()V

    return-void
.end method

.method public static getFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/CloudTrashItem;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "deleted"

    .line 72
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "remain_days"

    .line 74
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    new-instance v3, Lcom/zui/gallery/trash/CloudTrashItem;

    invoke-direct {v3}, Lcom/zui/gallery/trash/CloudTrashItem;-><init>()V

    const-string v4, "_id"

    .line 78
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zui/gallery/trash/CloudTrashItem;->setId(I)V

    const-string v4, "name"

    .line 79
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zui/gallery/trash/CloudTrashItem;->setName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v1}, Lcom/zui/gallery/trash/CloudTrashItem;->setReminderDays(I)V

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/gallery/trash/CloudTrashItem;->setTimestamp(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v2}, Lcom/zui/gallery/trash/CloudTrashItem;->setCloudyItem(Z)V

    .line 84
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/zui/gallery/trash/CloudTrashItem;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/trash/CloudTrashItem;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/zui/gallery/trash/CloudTrashItem;->cloudId:I

    return v0
.end method

.method public getMimeType()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/zui/gallery/trash/CloudTrashItem;->mimeType:I

    return v0
.end method

.method public getReminderDays()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/zui/gallery/trash/CloudTrashItem;->reminderDays:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/zui/gallery/trash/CloudTrashItem;->size:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/trash/CloudTrashItem;->account:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/trash/CloudTrashItem;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setCloudId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/zui/gallery/trash/CloudTrashItem;->cloudId:I

    return-void
.end method

.method public setMimeType(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/zui/gallery/trash/CloudTrashItem;->mimeType:I

    return-void
.end method

.method public setReminderDays(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/zui/gallery/trash/CloudTrashItem;->reminderDays:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/trash/CloudTrashItem;->size:I

    return-void
.end method
