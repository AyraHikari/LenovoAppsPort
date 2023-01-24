.class public Lcom/zui/gallery/filtershow/tools/GDepth$Parser;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/tools/GDepth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private blurLevel:I

.field private disparity:[B

.field private hasDepthInfo:Z

.field private image:[B

.field private otp:[B

.field private roiHeight:I

.field private roiWidth:I

.field private roiX:I

.field private roiY:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiX:I

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiY:I

    .line 68
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiWidth:I

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiHeight:I

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->blurLevel:I

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->type:I

    return-void
.end method

.method private parse(Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 113
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 114
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    if-eqz p2, :cond_0

    .line 116
    iget-boolean v3, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->hasDepthInfo:Z

    if-eqz v3, :cond_0

    const-string p1, "GDepth"

    const-string p2, "has depth info, stop parse"

    .line 117
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    const-string v1, "Description"

    .line 121
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 122
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_c

    .line 124
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    .line 125
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Data"

    if-eqz v5, :cond_8

    if-eqz p2, :cond_1

    .line 127
    :try_start_1
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->hasDepthInfo:Z

    goto/16 :goto_3

    .line 130
    :cond_1
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    invoke-direct {p0, v5}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parseData(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->disparity:[B

    goto/16 :goto_2

    :cond_2
    const-string v6, "RoiX"

    .line 134
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiX:I

    goto/16 :goto_2

    :cond_3
    const-string v6, "RoiY"

    .line 136
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiY:I

    goto/16 :goto_2

    :cond_4
    const-string v6, "RoiWidth"

    .line 138
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiWidth:I

    goto/16 :goto_2

    :cond_5
    const-string v6, "RoiHeight"

    .line 140
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiHeight:I

    goto/16 :goto_2

    :cond_6
    const-string v6, "Level"

    .line 142
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->blurLevel:I

    goto :goto_2

    :cond_7
    const-string v6, "Type"

    .line 144
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->type:I

    goto :goto_2

    :cond_8
    const-string v5, "http://ns.google.com/photos/1.0/image/"

    .line 147
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 148
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 149
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parseData(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->image:[B

    goto :goto_2

    :cond_9
    const-string v5, "http://ns.google.com/photos/1.0/otp/"

    .line 151
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 152
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 153
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parseData(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->otp:[B

    goto :goto_2

    :cond_a
    const-string v5, "http://ns.adobe.com/xmp/note/"

    .line 167
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "HasExtendedXMP"

    .line 168
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 169
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->setExtended(Ljava/lang/String;)V

    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 174
    :cond_c
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_d
    :goto_4
    return-void
.end method

.method private parseData(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x2

    .line 182
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public decodeOriginImage()Landroid/graphics/Bitmap;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->image:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GDepth"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->image:[B

    .line 195
    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiHeight:I

    if-nez v1, :cond_1

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiWidth:I

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiHeight:I

    :cond_1
    return-object v0
.end method

.method public getBlurLevel()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->blurLevel:I

    return v0
.end method

.method public getDisparity()[B
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->disparity:[B

    return-object v0
.end method

.method public getOtp()[B
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->otp:[B

    return-object v0
.end method

.method public getRoi()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 211
    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiY:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiWidth:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->roiHeight:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getVendorType()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->type:I

    return v0
.end method

.method public isDepthImage(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 78
    new-instance p1, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;

    invoke-direct {p1, v0}, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parse(Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 81
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 86
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->hasDepthInfo:Z

    return p1

    .line 83
    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 84
    throw p1
.end method

.method public parse(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 93
    new-instance p1, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;

    invoke-direct {p1, v0}, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parse(Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;Z)V

    .line 95
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->prepareExtended()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parse(Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    throw p1

    .line 100
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 102
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->valid()Z

    move-result p1

    return p1
.end method

.method public valid()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->disparity:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->image:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
