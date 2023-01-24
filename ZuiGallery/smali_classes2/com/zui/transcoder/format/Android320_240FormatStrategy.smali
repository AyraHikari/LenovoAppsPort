.class Lcom/zui/transcoder/format/Android320_240FormatStrategy;
.super Ljava/lang/Object;
.source "Android320_240FormatStrategy.java"

# interfaces
.implements Lcom/zui/transcoder/format/MediaFormatStrategy;


# static fields
.field private static final DEFAULT_BITRATE:I = 0x6ddd0

.field private static final LONGER_LENGTH:I = 0x140

.field private static final SHORTER_LENGTH:I = 0xf0

.field private static final TAG:Ljava/lang/String; = "720pFormatStrategy"


# instance fields
.field private final mBitRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6ddd0

    .line 19
    iput v0, p0, Lcom/zui/transcoder/format/Android320_240FormatStrategy;->mBitRate:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/zui/transcoder/format/Android320_240FormatStrategy;->mBitRate:I

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 2

    const-string v0, "width"

    .line 28
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    const-string v0, "height"

    .line 29
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    const-string p1, "video/avc"

    const/16 v0, 0x140

    const/16 v1, 0xf0

    .line 49
    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 51
    iget v0, p0, Lcom/zui/transcoder/format/Android320_240FormatStrategy;->mBitRate:I

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate-mode"

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    const/16 v1, 0x1e

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    const/4 v1, 0x5

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "profile"

    const/16 v1, 0x8

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "level"

    const/16 v1, 0x10

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-format"

    const v1, 0x7f000789

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method
