.class Lcom/zui/gallery/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/zui/gallery/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/zui/gallery/exif/ExifInterface;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifReader;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/zui/gallery/exif/ExifData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/gallery/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifReader;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/zui/gallery/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/zui/gallery/exif/ExifInterface;)Lcom/zui/gallery/exif/ExifParser;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 51
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    const-string v3, "ExifReader"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v2, v1, [B

    .line 82
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    :cond_1
    const-string v1, "Failed to read the strip bytes"

    .line 85
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    new-array v2, v1, [B

    .line 74
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 75
    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string v1, "Failed to read the compressed thumbnail"

    .line 77
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getTag()Lcom/zui/gallery/exif/ExifTag;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 68
    invoke-virtual {p1, v1}, Lcom/zui/gallery/exif/ExifParser;->readFullTagValue(Lcom/zui/gallery/exif/ExifTag;)V

    .line 70
    :cond_5
    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    goto :goto_1

    .line 58
    :cond_6
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getTag()Lcom/zui/gallery/exif/ExifTag;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 60
    invoke-virtual {p1, v1}, Lcom/zui/gallery/exif/ExifParser;->registerForTagValue(Lcom/zui/gallery/exif/ExifTag;)V

    goto :goto_1

    .line 62
    :cond_7
    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    goto :goto_1

    .line 55
    :cond_8
    new-instance v1, Lcom/zui/gallery/exif/IfdData;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/zui/gallery/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->addIfdData(Lcom/zui/gallery/exif/IfdData;)V

    .line 89
    :goto_1
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifParser;->next()I

    move-result v1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method
