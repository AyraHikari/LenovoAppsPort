.class public abstract Lcom/zui/gallery/data/LocalMediaItem;
.super Lcom/zui/gallery/data/MediaItem;
.source "LocalMediaItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMediaItem"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field private info:Lcom/zui/gallery/data/MicroVideoInfo;

.field private is360ModImage:Z

.field private is360ModVideo:Z

.field private isDepthImage:Z

.field private isLayerImage:Z

.field private isMicroVideo:Z

.field private isMotoralMediaTypeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isPortraitImage:Z

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;J)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/MediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    const-wide/16 p1, 0x0

    .line 42
    iput-wide p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->latitude:D

    .line 43
    iput-wide p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->longitude:D

    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->isMotoralMediaTypeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 4

    .line 73
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 8

    .line 108
    invoke-super {p0}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/zui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/zui/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 111
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 112
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/zui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 113
    iget v1, p0, Lcom/zui/gallery/data/LocalMediaItem;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 114
    iget v1, p0, Lcom/zui/gallery/data/LocalMediaItem;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pic from db LATITUDE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalMediaItem;->latitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " LONGITUDE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalMediaItem;->longitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocalMediaItem"

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-wide v3, p0, Lcom/zui/gallery/data/LocalMediaItem;->latitude:D

    iget-wide v5, p0, Lcom/zui/gallery/data/LocalMediaItem;->longitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    .line 117
    iget-wide v5, p0, Lcom/zui/gallery/data/LocalMediaItem;->latitude:D

    aput-wide v5, v3, v4

    iget-wide v4, p0, Lcom/zui/gallery/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 119
    :cond_0
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalMediaItem;->fileSize:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const/16 v3, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3

    .line 90
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->latitude:D

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 91
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->longitude:D

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    return-void
.end method

.method public getMicroVideoInfo()Lcom/zui/gallery/data/MicroVideoInfo;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 6

    .line 83
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/zui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeModified()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public is360ModImage()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->is360ModImage:Z

    return v0
.end method

.method public is360ModVideo()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->is360ModVideo:Z

    return v0
.end method

.method public isDepthImage()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->isDepthImage:Z

    return v0
.end method

.method public isLayerImage()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->isLayerImage:Z

    return v0
.end method

.method public isMicroVideo()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->isMicroVideo:Z

    return v0
.end method

.method public isMotoralMediaTypeInit()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->isMotoralMediaTypeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPortraitImage()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->isPortraitImage:Z

    return v0
.end method

.method public setDepthImage(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->isDepthImage:Z

    return-void
.end method

.method public setIs360ModImage(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->is360ModImage:Z

    return-void
.end method

.method public setIs360ModVideo(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->is360ModVideo:Z

    return-void
.end method

.method public setIsLayerImage(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->isLayerImage:Z

    return-void
.end method

.method public setIsMicroVideo(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->isMicroVideo:Z

    return-void
.end method

.method public setIsPortraitImage(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->isPortraitImage:Z

    return-void
.end method

.method public setMicroVideoInfo(Lcom/zui/gallery/data/MicroVideoInfo;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->info:Lcom/zui/gallery/data/MicroVideoInfo;

    return-void
.end method

.method public setMotoralMeidaTypeInit()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->isMotoralMediaTypeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-static {}, Lcom/zui/gallery/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalMediaItem;->mDataVersion:J

    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method

.method public updateWidthAndHeight(II)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/zui/gallery/data/LocalMediaItem;->width:I

    .line 144
    iput p2, p0, Lcom/zui/gallery/data/LocalMediaItem;->height:I

    return-void
.end method
