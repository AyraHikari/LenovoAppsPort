.class Lcom/zui/transcoder/format/Android16By9FormatStrategy;
.super Ljava/lang/Object;
.source "Android16By9FormatStrategy.java"

# interfaces
.implements Lcom/zui/transcoder/format/MediaFormatStrategy;


# static fields
.field public static final SCALE_720P:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Android16By9FormatStrategy"


# instance fields
.field private final mBitrate:I

.field private final mScale:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/zui/transcoder/format/Android16By9FormatStrategy;->mScale:I

    .line 15
    iput p2, p0, Lcom/zui/transcoder/format/Android16By9FormatStrategy;->mBitrate:I

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

    .line 20
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 21
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 22
    iget v1, p0, Lcom/zui/transcoder/format/Android16By9FormatStrategy;->mScale:I

    mul-int/lit8 v2, v1, 0x10

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x9

    if-lt v0, p1, :cond_0

    move v5, p1

    move v4, v0

    move v3, v1

    goto :goto_0

    :cond_0
    move v4, p1

    move v5, v0

    move v3, v2

    move v2, v1

    :goto_0
    mul-int/lit8 v4, v4, 0x9

    mul-int/lit8 v6, v5, 0x10

    const-string v7, ")"

    const-string v8, "x"

    if-ne v4, v6, :cond_2

    if-gt v5, v1, :cond_1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This video\'s height is less or equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pass-through. ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Android16By9FormatStrategy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string p1, "video/avc"

    .line 43
    invoke-static {p1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 45
    iget v0, p0, Lcom/zui/transcoder/format/Android16By9FormatStrategy;->mBitrate:I

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x1e

    const-string v1, "frame-rate"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x3

    const-string v1, "i-frame-interval"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v0, 0x7f000789

    const-string v1, "color-format"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1

    .line 37
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
