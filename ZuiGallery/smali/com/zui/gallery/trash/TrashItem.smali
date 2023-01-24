.class public Lcom/zui/gallery/trash/TrashItem;
.super Ljava/lang/Object;
.source "TrashItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/zui/gallery/trash/TrashItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private continousFolderName:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private hasDownloadOriginImage:Z

.field private height:I

.field private id:I

.field private isCloudyItem:Z

.field private isContinousImage:Z

.field private isImage:Z

.field private lastModify:J

.field private name:Ljava/lang/String;

.field private old_full_path:Ljava/lang/String;

.field private position:I

.field private relative_path:Ljava/lang/String;

.field private rotation:I

.field private timestamp:Ljava/lang/String;

.field private uniqueImageId:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/zui/gallery/trash/TrashItem$1;

    invoke-direct {v0}, Lcom/zui/gallery/trash/TrashItem$1;-><init>()V

    sput-object v0, Lcom/zui/gallery/trash/TrashItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/zui/gallery/trash/TrashItem;->lastModify:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/zui/gallery/trash/TrashItem;->lastModify:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/trash/TrashItem;->id:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->old_full_path:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->relative_path:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->uniqueImageId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->timestamp:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->continousFolderName:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->hasDownloadOriginImage:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->isContinousImage:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->duration:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/zui/gallery/trash/TrashItem;->isImage:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/trash/TrashItem;->lastModify:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zui/gallery/trash/TrashItem;)I
    .locals 7

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 0=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " 1=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  00=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  11=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  this=null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " o==null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "compareTo"

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_7

    .line 247
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 248
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    return v0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    return v1

    .line 254
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getLastModify()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    return v2

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_5

    return v0

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 263
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/zui/gallery/trash/TrashItem;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/trash/TrashItem;->compareTo(Lcom/zui/gallery/trash/TrashItem;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContinousFolderName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->continousFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/zui/gallery/trash/TrashItem;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/zui/gallery/trash/TrashItem;->id:I

    return v0
.end method

.method public getLastModify()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/zui/gallery/trash/TrashItem;->lastModify:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_full_path()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->old_full_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/zui/gallery/trash/TrashItem;->position:I

    return v0
.end method

.method public getRelative_path()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->relative_path:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/zui/gallery/trash/TrashItem;->rotation:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueImageId()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashItem;->uniqueImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/zui/gallery/trash/TrashItem;->width:I

    return v0
.end method

.method public isCloudyItem()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem:Z

    return v0
.end method

.method public isContinousImage()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->isContinousImage:Z

    return v0
.end method

.method public isHasDownloadOriginImage()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->hasDownloadOriginImage:Z

    return v0
.end method

.method public isImage()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/zui/gallery/trash/TrashItem;->isImage:Z

    return v0
.end method

.method public setCloudyItem(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem:Z

    return-void
.end method

.method public setContinousFolderName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->continousFolderName:Ljava/lang/String;

    return-void
.end method

.method public setContinousImage(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/zui/gallery/trash/TrashItem;->isContinousImage:Z

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->duration:Ljava/lang/String;

    return-void
.end method

.method public setHasDownloadOriginImage(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/zui/gallery/trash/TrashItem;->hasDownloadOriginImage:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/zui/gallery/trash/TrashItem;->height:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/zui/gallery/trash/TrashItem;->id:I

    return-void
.end method

.method public setImage(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/zui/gallery/trash/TrashItem;->isImage:Z

    return-void
.end method

.method public setLastModify(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/zui/gallery/trash/TrashItem;->lastModify:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setOld_full_path(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->old_full_path:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/zui/gallery/trash/TrashItem;->position:I

    return-void
.end method

.method public setRelative_path(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->relative_path:Ljava/lang/String;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/zui/gallery/trash/TrashItem;->rotation:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setUniqueImageId(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashItem;->uniqueImageId:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/trash/TrashItem;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 210
    iget p2, p0, Lcom/zui/gallery/trash/TrashItem;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->old_full_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->relative_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->uniqueImageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->continousFolderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-boolean p2, p0, Lcom/zui/gallery/trash/TrashItem;->isCloudyItem:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    iget-boolean p2, p0, Lcom/zui/gallery/trash/TrashItem;->hasDownloadOriginImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget-boolean p2, p0, Lcom/zui/gallery/trash/TrashItem;->isContinousImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 220
    iget-object p2, p0, Lcom/zui/gallery/trash/TrashItem;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-boolean p2, p0, Lcom/zui/gallery/trash/TrashItem;->isImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-wide v0, p0, Lcom/zui/gallery/trash/TrashItem;->lastModify:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
