.class Lcom/zui/transcoder/format/Android720pFormatStrategy;
.super Ljava/lang/Object;
.source "Android720pFormatStrategy.java"

# interfaces
.implements Lcom/zui/transcoder/format/MediaFormatStrategy;


# static fields
.field private static final DEFAULT_BITRATE:I = 0x7a1200

.field private static final LONGER_LENGTH:I = 0x500

.field private static final SHORTER_LENGTH:I = 0x2d0

.field private static final TAG:Ljava/lang/String; = "720pFormatStrategy"


# instance fields
.field private final mBitRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7a1200

    .line 15
    iput v0, p0, Lcom/zui/transcoder/format/Android720pFormatStrategy;->mBitRate:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/zui/transcoder/format/Android720pFormatStrategy;->mBitRate:I

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 9

    const-string v0, "width"

    .line 24
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 25
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    if-lt v0, p1, :cond_0

    move v5, p1

    move v4, v0

    move v3, v2

    goto :goto_0

    :cond_0
    move v4, p1

    move v5, v0

    move v3, v1

    move v1, v2

    :goto_0
    mul-int/lit8 v4, v4, 0x9

    mul-int/lit8 v6, v5, 0x10

    const-string v7, ")"

    const-string v8, "x"

    if-ne v4, v6, :cond_2

    if-gt v5, v2, :cond_1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This video is less or equal to 720p, pass-through. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "720pFormatStrategy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string p1, "video/avc"

    .line 45
    invoke-static {p1, v1, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 47
    iget v0, p0, Lcom/zui/transcoder/format/Android720pFormatStrategy;->mBitRate:I

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x1e

    const-string v1, "frame-rate"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x3

    const-string v1, "i-frame-interval"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v0, 0x7f000789

    const-string v1, "color-format"

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1

    .line 39
    :cond_2
    new-instance v1, Lcom/zui/transcoder/format/OutputFormatUnavailableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This video is not 16:9, and is not able to transcode. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/zui/transcoder/format/OutputFormatUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
