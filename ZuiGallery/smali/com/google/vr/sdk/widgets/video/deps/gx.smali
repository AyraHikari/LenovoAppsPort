.class public final Lcom/google/vr/sdk/widgets/video/deps/gx;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final A:Ljava/lang/String; = "audio/true-hd"

.field public static final B:Ljava/lang/String; = "audio/vnd.dts"

.field public static final C:Ljava/lang/String; = "audio/vnd.dts.hd"

.field public static final D:Ljava/lang/String; = "audio/vnd.dts.hd;profile=lbr"

.field public static final E:Ljava/lang/String; = "audio/vorbis"

.field public static final F:Ljava/lang/String; = "audio/opus"

.field public static final G:Ljava/lang/String; = "audio/3gpp"

.field public static final H:Ljava/lang/String; = "audio/amr-wb"

.field public static final I:Ljava/lang/String; = "audio/flac"

.field public static final J:Ljava/lang/String; = "audio/alac"

.field public static final K:Ljava/lang/String; = "audio/gsm"

.field public static final L:Ljava/lang/String; = "audio/x-unknown"

.field public static final M:Ljava/lang/String; = "text/vtt"

.field public static final N:Ljava/lang/String; = "text/x-ssa"

.field public static final O:Ljava/lang/String; = "application/mp4"

.field public static final P:Ljava/lang/String; = "application/webm"

.field public static final Q:Ljava/lang/String; = "application/x-mpegURL"

.field public static final R:Ljava/lang/String; = "application/id3"

.field public static final S:Ljava/lang/String; = "application/cea-608"

.field public static final T:Ljava/lang/String; = "application/cea-708"

.field public static final U:Ljava/lang/String; = "application/x-subrip"

.field public static final V:Ljava/lang/String; = "application/ttml+xml"

.field public static final W:Ljava/lang/String; = "application/x-quicktime-tx3g"

.field public static final X:Ljava/lang/String; = "application/x-mp4-vtt"

.field public static final Y:Ljava/lang/String; = "application/x-mp4-cea-608"

.field public static final Z:Ljava/lang/String; = "application/x-rawcc"

.field public static final a:Ljava/lang/String; = "video"

.field public static final aa:Ljava/lang/String; = "application/vobsub"

.field public static final ab:Ljava/lang/String; = "application/pgs"

.field public static final ac:Ljava/lang/String; = "application/x-scte35"

.field public static final ad:Ljava/lang/String; = "application/x-camera-motion"

.field public static final ae:Ljava/lang/String; = "application/x-emsg"

.field public static final af:Ljava/lang/String; = "application/dvbsubs"

.field public static final ag:Ljava/lang/String; = "application/x-exif"

.field public static final b:Ljava/lang/String; = "audio"

.field public static final c:Ljava/lang/String; = "text"

.field public static final d:Ljava/lang/String; = "application"

.field public static final e:Ljava/lang/String; = "video/mp4"

.field public static final f:Ljava/lang/String; = "video/webm"

.field public static final g:Ljava/lang/String; = "video/3gpp"

.field public static final h:Ljava/lang/String; = "video/avc"

.field public static final i:Ljava/lang/String; = "video/hevc"

.field public static final j:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final k:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final l:Ljava/lang/String; = "video/mp4v-es"

.field public static final m:Ljava/lang/String; = "video/mpeg2"

.field public static final n:Ljava/lang/String; = "video/wvc1"

.field public static final o:Ljava/lang/String; = "video/x-unknown"

.field public static final p:Ljava/lang/String; = "audio/mp4"

.field public static final q:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final r:Ljava/lang/String; = "audio/webm"

.field public static final s:Ljava/lang/String; = "audio/mpeg"

.field public static final t:Ljava/lang/String; = "audio/mpeg-L1"

.field public static final u:Ljava/lang/String; = "audio/mpeg-L2"

.field public static final v:Ljava/lang/String; = "audio/raw"

.field public static final w:Ljava/lang/String; = "audio/g711-alaw"

.field public static final x:Ljava/lang/String; = "audio/g711-mlaw"

.field public static final y:Ljava/lang/String; = "audio/ac3"

.field public static final z:Ljava/lang/String; = "audio/eac3"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 10
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 18
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 19
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 20
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "avc1"

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v1, "hev1"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string/jumbo v1, "vp9"

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "vp09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string/jumbo v1, "vp8"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "vp08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v1, "mp4a"

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_5
    const-string v1, "ac-3"

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "dac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "ec-3"

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "dec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "dtsc"

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "dtse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "dtsh"

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "dtsl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    const-string v1, "opus"

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "audio/opus"

    return-object p0

    :cond_a
    const-string/jumbo v1, "vorbis"

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "audio/vorbis"

    return-object p0

    :cond_b
    return-object v0

    :cond_c
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_d
    :goto_1
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_e
    :goto_2
    const-string p0, "audio/eac3"

    return-object p0

    :cond_f
    :goto_3
    const-string p0, "audio/ac3"

    return-object p0

    :cond_10
    :goto_4
    const-string/jumbo p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_11
    :goto_5
    const-string/jumbo p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_12
    :goto_6
    const-string/jumbo p0, "video/hevc"

    return-object p0

    :cond_13
    :goto_7
    const-string/jumbo p0, "video/avc"

    return-object p0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 2

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/cea-708"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-subrip"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-quicktime-tx3g"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-rawcc"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/vobsub"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/pgs"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/dvbsubs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "application/id3"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "application/x-emsg"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "application/x-scte35"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "application/x-camera-motion"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->h(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mime type: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
