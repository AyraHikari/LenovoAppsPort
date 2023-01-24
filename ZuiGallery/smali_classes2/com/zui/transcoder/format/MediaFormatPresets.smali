.class public Lcom/zui/transcoder/format/MediaFormatPresets;
.super Ljava/lang/Object;
.source "MediaFormatPresets.java"


# static fields
.field private static final LONGER_LENGTH_960x540:I = 0x3c0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExportPreset960x540()Landroid/media/MediaFormat;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "video/avc"

    const/16 v1, 0x3c0

    const/16 v2, 0x21c

    .line 15
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "bitrate"

    const v2, 0x53ec60

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-format"

    const v2, 0x7f000789

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getExportPreset960x540(II)Landroid/media/MediaFormat;
    .locals 8

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x3c0

    if-gt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int/lit16 v3, v1, 0x3c0

    .line 37
    rem-int v4, v3, v0

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 45
    div-int/2addr v3, v0

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v3

    move v3, v2

    move v2, v7

    :goto_0
    const-string p0, "video/avc"

    .line 55
    invoke-static {p0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const p1, 0x53ec60

    const-string v0, "bitrate"

    .line 56
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const p1, 0x7f000789

    const-string v0, "color-format"

    .line 57
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x1e

    const-string v0, "frame-rate"

    .line 58
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    .line 59
    invoke-virtual {p0, p1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0

    :cond_2
    const-wide/high16 p0, 0x408e000000000000L    # 960.0

    int-to-double v3, v1

    mul-double/2addr v3, p0

    int-to-double p0, v0

    div-double/2addr v3, p0

    .line 40
    new-instance p0, Lcom/zui/transcoder/format/OutputFormatUnavailableException;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Could not fit to integer, original: (%d, %d), scaled: (%d, %f)"

    .line 40
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/transcoder/format/OutputFormatUnavailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
