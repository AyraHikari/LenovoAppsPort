.class Lcom/zui/transcoder/engine/MediaFormatValidator;
.super Ljava/lang/Object;
.source "MediaFormatValidator.java"


# static fields
.field private static final PROFILE_IDC_BASELINE:B = 0x42t


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateAudioOutputFormat(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "mime"

    .line 30
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio/mp4a-latm"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/zui/transcoder/engine/InvalidOutputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio codecs other than AAC is not supported, actual mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zui/transcoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateVideoOutputFormat(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "mime"

    .line 16
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
