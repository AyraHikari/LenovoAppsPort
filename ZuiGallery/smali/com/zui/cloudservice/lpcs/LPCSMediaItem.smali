.class public Lcom/zui/cloudservice/lpcs/LPCSMediaItem;
.super Ljava/lang/Object;
.source "LPCSMediaItem.java"


# static fields
.field public static final MEDIA_ALBUM_NAME:Ljava/lang/String; = "albumName"

.field public static final MEDIA_CHECK_SUM:Ljava/lang/String; = "checksum"

.field public static final MEDIA_DELETE_FLAG:Ljava/lang/String; = "deleteFlag"

.field public static final MEDIA_DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final MEDIA_FILE_SIZE:Ljava/lang/String; = "size"

.field public static final MEDIA_LARGE_URL:Ljava/lang/String; = "largeUrl"

.field public static final MEDIA_LOCAL_FILE:Ljava/lang/String; = "localFile"

.field public static final MEDIA_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final MEDIA_PHOTO_ID:Ljava/lang/String; = "photoId"

.field public static final MEDIA_PHOTO_NAME:Ljava/lang/String; = "photoName"

.field public static final MEDIA_PLAY_URL:Ljava/lang/String; = "playUrl"

.field public static final MEDIA_SMALL_URL:Ljava/lang/String; = "smallUrl"

.field public static final MEDIA_SORT_TIME:Ljava/lang/String; = "sortTime"

.field public static final MEDIA_SUPPORT_RANGE:Ljava/lang/String; = "supportRange"


# instance fields
.field private albumName:Ljava/lang/String;

.field private checksum:Ljava/lang/String;

.field private deleteFlag:Z

.field private downloadUrl:Ljava/lang/String;

.field private largeUrl:Ljava/lang/String;

.field private localFile:Ljava/lang/String;

.field private mediaType:I

.field private photoId:J

.field private photoName:Ljava/lang/String;

.field private playUrl:Ljava/lang/String;

.field private size:I

.field private smallUrl:Ljava/lang/String;

.field private sortTime:J

.field private supportRange:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->largeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFile()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->localFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->mediaType:I

    return v0
.end method

.method public getPhotoId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->photoId:J

    return-wide v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->photoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->size:I

    return v0
.end method

.method public getSmallUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->smallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSortTime()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->sortTime:J

    return-wide v0
.end method

.method public getSupportRange()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->supportRange:Z

    return v0
.end method

.method public isDeleteFlag()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->deleteFlag:Z

    return v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->checksum:Ljava/lang/String;

    return-void
.end method

.method public setDeleteFlag(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->deleteFlag:Z

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setLargeUrl(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->largeUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocalFile(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->localFile:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->mediaType:I

    return-void
.end method

.method public setPhotoId(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->photoId:J

    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->photoName:Ljava/lang/String;

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->size:I

    return-void
.end method

.method public setSmallUrl(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->smallUrl:Ljava/lang/String;

    return-void
.end method

.method public setSortTime(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->sortTime:J

    return-void
.end method

.method public setSupportRange(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/zui/cloudservice/lpcs/LPCSMediaItem;->supportRange:Z

    return-void
.end method
