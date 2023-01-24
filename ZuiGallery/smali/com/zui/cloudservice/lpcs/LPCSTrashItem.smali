.class public Lcom/zui/cloudservice/lpcs/LPCSTrashItem;
.super Ljava/lang/Object;
.source "LPCSTrashItem.java"


# static fields
.field public static final RECYCLE_DELETE_FALG:Ljava/lang/String; = "deleteFlag"

.field public static final RECYLE_DELETE_TIME:Ljava/lang/String; = "deleteTime"

.field public static final RECYLE_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final RECYLE_ORIGIN_CHECKSUM:Ljava/lang/String; = "origin"

.field public static final RECYLE_PHOTO_ID:Ljava/lang/String; = "id"

.field public static final RECYLE_PHOTO_NAME:Ljava/lang/String; = "name"

.field public static final RECYLE_REMAIN_DAY:Ljava/lang/String; = "remainDay"

.field public static final RECYLE_SIZE:Ljava/lang/String; = "size"

.field public static final RECYLE_THUMB_BIG:Ljava/lang/String; = "url"

.field public static final RECYLE_THUMB_MID:Ljava/lang/String; = "thumb200"

.field public static final RECYLE_THUMB_SMALL:Ljava/lang/String; = "thumbnail"


# instance fields
.field private deleteFlag:Z

.field private deleteTime:J

.field private id:J

.field private mediaType:I

.field private name:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private remainDay:I

.field private size:J

.field private thumb200:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteTime()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->deleteTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->id:J

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->mediaType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainDay()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->remainDay:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->size:J

    return-wide v0
.end method

.method public getThumb200()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->thumb200:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDeleteTime(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->deleteTime:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->id:J

    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->mediaType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->origin:Ljava/lang/String;

    return-void
.end method

.method public setRemainDay(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->remainDay:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->size:J

    return-void
.end method

.method public setThumb200(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->thumb200:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSTrashItem;->url:Ljava/lang/String;

    return-void
.end method
