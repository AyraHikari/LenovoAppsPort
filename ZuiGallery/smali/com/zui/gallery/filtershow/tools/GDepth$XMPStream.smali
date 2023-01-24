.class Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;
.super Ljava/io/InputStream;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/tools/GDepth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMPStream"
.end annotation


# static fields
.field private static final END:I = 0x3

.field private static final EXTEND:I = 0x2

.field private static final STANDARD:I = 0x1

.field private static final START:I


# instance fields
.field private chunk:I

.field private extended:Ljava/lang/String;

.field private status:I

.field private stream:Lcom/zui/gallery/mpo/CountedDataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->status:I

    .line 232
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    .line 235
    new-instance v0, Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/zui/gallery/mpo/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    return-void
.end method

.method private next()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 241
    invoke-static {v0}, Lcom/zui/gallery/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, -0x1f

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 247
    iget v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->status:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 252
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    .line 253
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    return v3

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x23

    if-ge v0, v1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ns.adobe.com/xmp/extension/\u0000"

    .line 264
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 265
    iget-object v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->extended:Ljava/lang/String;

    if-nez v4, :cond_6

    return v2

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    iget-object v4, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->extended:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    .line 269
    :cond_7
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipOrThrow(J)V

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2a

    .line 270
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    return v3

    .line 273
    :cond_8
    iget-object v2, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipOrThrow(J)V

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v0, 0x3

    .line 242
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->status:I

    return v2
.end method


# virtual methods
.method prepareExtended()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->extended:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 287
    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->status:I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->extended:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0, v1, v2, v0}, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    aget-byte v0, v1, v2

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    if-lez v0, :cond_1

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    .line 303
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1

    .line 306
    :cond_1
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->status:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v3, -0x28

    if-eq v0, v3, :cond_2

    return v2

    .line 308
    :cond_2
    iput v1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->status:I

    goto :goto_1

    :cond_3
    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 312
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    if-lez v0, :cond_6

    if-le v0, p3, :cond_5

    goto :goto_2

    :cond_5
    move p3, v0

    .line 314
    :goto_2
    iget v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->chunk:I

    .line 315
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->stream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_6
    :goto_3
    return v2
.end method

.method setExtended(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;->extended:Ljava/lang/String;

    return-void
.end method
