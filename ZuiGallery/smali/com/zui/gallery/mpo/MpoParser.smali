.class public Lcom/zui/gallery/mpo/MpoParser;
.super Ljava/lang/Object;
.source "MpoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/mpo/MpoParser$MpoTag;,
        Lcom/zui/gallery/mpo/MpoParser$MpEntry;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGTAG:Ljava/lang/String; = "MpoParser"

.field private static final MP_INDEX_FIELD_SIZE_BYTES:I = 0xc


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

.field private mIfd1Offset:I

.field private mMpEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/mpo/MpoParser$MpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMpEntryOffset:I

.field private mMpHeaderOffset:I

.field private mTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Lcom/zui/gallery/mpo/MpoParser$MpoTag;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mTags:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    iput-object p2, p0, Lcom/zui/gallery/mpo/MpoParser;->mUri:Landroid/net/Uri;

    .line 73
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mTags:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 77
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/mpo/MpoParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lcom/zui/gallery/mpo/MpoParser;->seekToMpData(Ljava/io/InputStream;)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpHeaderOffset:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 94
    invoke-static {p1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    .line 83
    :cond_0
    :try_start_1
    new-instance p2, Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-direct {p2, p1}, Lcom/zui/gallery/mpo/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    .line 84
    invoke-direct {p0}, Lcom/zui/gallery/mpo/MpoParser;->readMpHeader()V

    .line 87
    invoke-direct {p0}, Lcom/zui/gallery/mpo/MpoParser;->readMpIndexIfdData()V

    .line 90
    invoke-direct {p0}, Lcom/zui/gallery/mpo/MpoParser;->readMpEntryData()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 92
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {p1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 95
    throw p2
.end method

.method public static getDepthmapFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "dm"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Landroid/content/Context;Landroid/net/Uri;)Lcom/zui/gallery/mpo/MpoParser;
    .locals 1

    .line 99
    new-instance v0, Lcom/zui/gallery/mpo/MpoParser;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/mpo/MpoParser;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static readDepthMapFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x0

    .line 290
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 298
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p0, v0

    .line 294
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 298
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    move-object v0, p0

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz p0, :cond_2

    .line 298
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    :cond_2
    :goto_4
    throw v0
.end method

.method private readMpEntryData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mTags:Ljava/util/HashMap;

    const/16 v1, -0x4fff

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;

    .line 161
    iget v0, v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->mData:I

    .line 163
    iget-object v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    iget v2, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntryOffset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipTo(J)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    new-instance v2, Lcom/zui/gallery/mpo/MpoParser$MpEntry;

    invoke-direct {v2, p0}, Lcom/zui/gallery/mpo/MpoParser$MpEntry;-><init>(Lcom/zui/gallery/mpo/MpoParser;)V

    .line 167
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgAttribute:I

    .line 168
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgSize:I

    .line 169
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    .line 170
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mDepImg1Entry:S

    .line 171
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mDepImg2Entry:S

    .line 172
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readMpHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    if-ne v0, v1, :cond_0

    .line 127
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mByteOrder:Ljava/nio/ByteOrder;

    .line 128
    iget-object v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 129
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x2a

    const-string v2, "MpoParser"

    if-ne v0, v1, :cond_1

    const-string v0, "correct endian!"

    .line 130
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "incorrect endian!"

    .line 132
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mIfd1Offset:I

    return-void
.end method

.method private readMpIndexIfdData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    iget v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mIfd1Offset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skipTo(J)V

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/zui/gallery/mpo/MpoParser;->readMpoTag()Lcom/zui/gallery/mpo/MpoParser$MpoTag;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/zui/gallery/mpo/MpoParser;->mTags:Ljava/util/HashMap;

    iget-short v4, v2, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->mId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mIfd1Offset:I

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntryOffset:I

    return-void
.end method

.method private readMpoTag()Lcom/zui/gallery/mpo/MpoParser$MpoTag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;

    invoke-direct {v0, p0}, Lcom/zui/gallery/mpo/MpoParser$MpoTag;-><init>(Lcom/zui/gallery/mpo/MpoParser;)V

    .line 152
    iget-object v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->mId:S

    .line 153
    iget-object v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->mType:S

    .line 154
    iget-object v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->mCount:I

    .line 155
    iget-object v1, p0, Lcom/zui/gallery/mpo/MpoParser;->mDataStream:Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->mData:I

    return-object v0
.end method

.method private seekToMpData(Ljava/io/InputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/zui/gallery/mpo/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/zui/gallery/mpo/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result p1

    const/4 v1, -0x1

    const/16 v2, -0x28

    if-eq p1, v2, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v2, -0x27

    if-eq p1, v2, :cond_4

    .line 110
    invoke-static {p1}, Lcom/zui/gallery/mpo/MpoHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_4

    .line 111
    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readUnsignedShort()I

    move-result v2

    const/16 v3, -0x1e

    if-ne p1, v3, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readInt()I

    .line 114
    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x2

    if-lt v2, p1, :cond_3

    add-int/lit8 v2, v2, -0x2

    int-to-long v2, v2

    .line 116
    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/mpo/CountedDataInputStream;->skip(J)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/mpo/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "MpoParser"

    const-string v0, "Invalid JPEG format."

    .line 117
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public static writeDepthMapFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 269
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 276
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 272
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 276
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :goto_1
    if-eqz v0, :cond_1

    .line 276
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    :cond_1
    :goto_2
    throw p0
.end method


# virtual methods
.method public isDepthImage()Z
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimaryForDisplay()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readImgData(I)[B
    .locals 12

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;

    if-nez p1, :cond_1

    return-object v1

    .line 316
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zui/gallery/mpo/MpoParser;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 317
    :try_start_1
    iget v2, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgSize:I

    new-array v3, v2, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    :try_start_2
    iget v4, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    if-lez v4, :cond_2

    iget p1, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    iget v4, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpHeaderOffset:I

    add-int/2addr p1, v4

    :goto_0
    int-to-long v4, p1

    goto :goto_1

    .line 320
    :cond_2
    iget p1, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    goto :goto_0

    .line 319
    :goto_1
    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 321
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, -0x1

    const-string v5, "MpoParser"

    if-ne p1, v4, :cond_3

    :try_start_3
    const-string p1, "read EOF. invalid offset/size"

    .line 322
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v3, v1

    goto/16 :goto_5

    .line 326
    :cond_3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v6, 0x0

    .line 327
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    const/16 v8, -0x28

    if-eq v7, v8, :cond_4

    const-string p1, "non valid SOI. offset incorrect."

    .line 328
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 330
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const/16 v7, -0x27

    if-eq p1, v7, :cond_8

    const-string p1, "non valid EOI. size incorrect. attempting to read further till EOI"

    .line 331
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 334
    :try_start_4
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v8, v8, [B

    .line 337
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    add-int/lit8 v10, v2, -0x2

    .line 339
    aget-byte v10, v3, v10

    aput-byte v10, v8, v6

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    .line 340
    aget-byte v2, v3, v2

    aput-byte v2, v8, v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    :goto_3
    :try_start_5
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    if-eq v2, v7, :cond_6

    .line 346
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v4, :cond_5

    const-string v2, "reached EOF before EOI. invalid file"

    .line 348
    invoke-static {v5, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 352
    :cond_5
    aget-byte v3, v8, v10

    aput-byte v3, v8, v6

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v8, v10

    .line 355
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_6
    move v6, v10

    :goto_4
    if-eqz v6, :cond_7

    .line 359
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    move-object v3, v1

    move-object v1, p1

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v11, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v11

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v11, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v11

    goto :goto_6

    .line 365
    :cond_8
    :goto_5
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 366
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v0, v1

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v0, v1

    move-object v3, v0

    .line 363
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 365
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 366
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_7
    return-object v3

    :catchall_3
    move-exception p1

    .line 365
    :goto_8
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 366
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 367
    throw p1
.end method

.method public readImgData(Z)[B
    .locals 13

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;

    goto :goto_0

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;

    goto :goto_0

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 193
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;

    goto :goto_0

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;

    :goto_0
    if-nez p1, :cond_4

    return-object v2

    .line 205
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/zui/gallery/mpo/MpoParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/zui/gallery/mpo/MpoParser;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 206
    :try_start_1
    iget v5, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgSize:I

    new-array v6, v5, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    :try_start_2
    iget v7, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    if-lez v7, :cond_5

    iget p1, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    iget v7, p0, Lcom/zui/gallery/mpo/MpoParser;->mMpHeaderOffset:I

    add-int/2addr p1, v7

    :goto_1
    int-to-long v7, p1

    goto :goto_2

    :cond_5
    iget p1, p1, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->mImgDataOffset:I

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 209
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, -0x1

    const-string v8, "MpoParser"

    if-ne p1, v7, :cond_6

    :try_start_3
    const-string p1, "read EOF. invalid offset/size"

    .line 210
    invoke-static {v8, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v6, v2

    goto/16 :goto_7

    .line 214
    :cond_6
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    const/16 v10, -0x28

    if-eq v9, v10, :cond_7

    const-string p1, "non valid SOI. offset incorrect."

    .line 216
    invoke-static {v8, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 218
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const/16 v9, -0x27

    if-eq p1, v9, :cond_b

    const-string p1, "non valid EOI. size incorrect. attempting to read further till EOI"

    .line 219
    invoke-static {v8, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    :try_start_4
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v1, v1, [B

    .line 224
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    add-int/lit8 v11, v5, -0x2

    .line 226
    aget-byte v11, v6, v11

    aput-byte v11, v1, v0

    sub-int/2addr v5, v3

    .line 227
    aget-byte v5, v6, v5

    aput-byte v5, v1, v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    :goto_4
    :try_start_5
    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    if-eq v5, v9, :cond_9

    .line 233
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v7, :cond_8

    const-string v1, "reached EOF before EOI. invalid file"

    .line 235
    invoke-static {v8, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 239
    :cond_8
    aget-byte v6, v1, v3

    aput-byte v6, v1, v0

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 242
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_9
    move v0, v3

    :goto_5
    if-eqz v0, :cond_a

    .line 246
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    move-object v6, v2

    move-object v2, p1

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v6, v2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v4

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_6
    move-object v2, v4

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_9

    .line 252
    :cond_b
    :goto_7
    invoke-static {v4}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_a

    :catch_2
    move-exception p1

    move-object v0, v2

    goto :goto_8

    :catchall_1
    move-exception p1

    move-object v0, v2

    move-object v2, v4

    goto :goto_b

    :catch_3
    move-exception p1

    move-object v0, v2

    move-object v6, v0

    :goto_8
    move-object v2, v4

    goto :goto_9

    :catchall_2
    move-exception p1

    move-object v0, v2

    goto :goto_b

    :catch_4
    move-exception p1

    move-object v0, v2

    move-object v6, v0

    .line 250
    :goto_9
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 252
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_a
    return-object v6

    :catchall_3
    move-exception p1

    .line 252
    :goto_b
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 254
    throw p1
.end method
