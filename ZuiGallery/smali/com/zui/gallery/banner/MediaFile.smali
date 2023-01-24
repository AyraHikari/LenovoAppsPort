.class public Lcom/zui/gallery/banner/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/banner/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WMV:I = 0x19

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x23

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x19

.field public static sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/banner/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/banner/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/banner/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v0, "MP4"

    const/16 v1, 0x15

    const-string/jumbo v2, "video/mp4"

    .line 63
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M4V"

    const/16 v1, 0x16

    .line 64
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string/jumbo v2, "video/3gpp"

    .line 65
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GPP"

    .line 66
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string/jumbo v2, "video/3gpp2"

    .line 67
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GPP2"

    .line 68
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string/jumbo v2, "video/x-ms-wmv"

    .line 69
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "JPG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    .line 71
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "JPEG"

    .line 72
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "GIF"

    const/16 v1, 0x20

    const-string v2, "image/gif"

    .line 73
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PNG"

    const/16 v1, 0x21

    const-string v2, "image/png"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "BMP"

    const/16 v1, 0x22

    const-string v2, "image/x-ms-bmp"

    .line 75
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WBMP"

    const/16 v1, 0x23

    const-string v2, "image/vnd.wap.wbmp"

    .line 76
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/banner/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    sget-object v1, Lcom/zui/gallery/banner/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/banner/MediaFile;->sFileExtensions:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 58
    sget-object v0, Lcom/zui/gallery/banner/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/zui/gallery/banner/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/zui/gallery/banner/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object p0, Lcom/zui/gallery/banner/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/zui/gallery/banner/MediaFile$MediaFileType;
    .locals 2

    const-string v0, "."

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    sget-object v1, Lcom/zui/gallery/banner/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/banner/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    .line 141
    sget-object v0, Lcom/zui/gallery/banner/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static isGifFileType(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGifFileType(Ljava/lang/String;)Z
    .locals 0

    .line 132
    invoke-static {p0}, Lcom/zui/gallery/banner/MediaFile;->getFileType(Ljava/lang/String;)Lcom/zui/gallery/banner/MediaFile$MediaFileType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 134
    iget p0, p0, Lcom/zui/gallery/banner/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/zui/gallery/banner/MediaFile;->isGifFileType(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x23

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(Ljava/lang/String;)Z
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/zui/gallery/banner/MediaFile;->getFileType(Ljava/lang/String;)Lcom/zui/gallery/banner/MediaFile$MediaFileType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 125
    iget p0, p0, Lcom/zui/gallery/banner/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/zui/gallery/banner/MediaFile;->isImageFileType(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x19

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(Ljava/lang/String;)Z
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/zui/gallery/banner/MediaFile;->getFileType(Ljava/lang/String;)Lcom/zui/gallery/banner/MediaFile$MediaFileType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    iget p0, p0, Lcom/zui/gallery/banner/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
