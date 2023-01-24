.class public final Lcom/google/vr/sdk/widgets/video/deps/ej;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fL$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ej$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/ei;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "NO"

.field private static final B:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final C:Ljava/util/regex/Pattern;

.field private static final D:Ljava/util/regex/Pattern;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/regex/Pattern;

.field private static final G:Ljava/util/regex/Pattern;

.field private static final H:Ljava/util/regex/Pattern;

.field private static final I:Ljava/util/regex/Pattern;

.field private static final J:Ljava/util/regex/Pattern;

.field private static final K:Ljava/util/regex/Pattern;

.field private static final L:Ljava/util/regex/Pattern;

.field private static final M:Ljava/util/regex/Pattern;

.field private static final N:Ljava/util/regex/Pattern;

.field private static final O:Ljava/util/regex/Pattern;

.field private static final P:Ljava/util/regex/Pattern;

.field private static final Q:Ljava/util/regex/Pattern;

.field private static final R:Ljava/util/regex/Pattern;

.field private static final S:Ljava/util/regex/Pattern;

.field private static final T:Ljava/util/regex/Pattern;

.field private static final U:Ljava/util/regex/Pattern;

.field private static final V:Ljava/util/regex/Pattern;

.field private static final W:Ljava/util/regex/Pattern;

.field private static final X:Ljava/util/regex/Pattern;

.field private static final Y:Ljava/util/regex/Pattern;

.field private static final Z:Ljava/util/regex/Pattern;

.field private static final a:Ljava/lang/String; = "#EXTM3U"

.field private static final b:Ljava/lang/String; = "#EXT"

.field private static final c:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final d:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final e:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final f:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final g:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final h:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final i:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final j:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final k:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final l:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final m:Ljava/lang/String; = "#EXTINF"

.field private static final n:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final o:Ljava/lang/String; = "#EXT-X-START"

.field private static final p:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final q:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final r:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final s:Ljava/lang/String; = "AUDIO"

.field private static final t:Ljava/lang/String; = "VIDEO"

.field private static final u:Ljava/lang/String; = "SUBTITLES"

.field private static final v:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final w:Ljava/lang/String; = "NONE"

.field private static final x:Ljava/lang/String; = "AES-128"

.field private static final y:Ljava/lang/String; = "SAMPLE-AES"

.field private static final z:Ljava/lang/String; = "YES"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 238
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->C:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 239
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->D:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 240
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->E:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 241
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->F:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 242
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->G:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 243
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->H:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->I:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 245
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->J:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 246
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->K:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 247
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->L:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 248
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->M:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->N:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->O:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES)"

    .line 252
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->P:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 253
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->Q:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 254
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->R:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 255
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->S:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 256
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->T:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 257
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->U:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 258
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->V:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 260
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->W:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 261
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ej;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->X:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 262
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ej;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->Y:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 263
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ej;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->Z:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 45
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .line 114
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->Y:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    .line 115
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ej;->Z:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 116
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ej;->X:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    :cond_1
    or-int p0, v0, v1

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 223
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/ej$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    .line 56
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;->a()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string v10, "#EXT"

    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 59
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v10, "#EXT-X-MEDIA"

    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_c

    .line 61
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;)I

    move-result v21

    .line 62
    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/ej;->R:Ljava/util/regex/Pattern;

    invoke-static {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    .line 63
    sget-object v13, Lcom/google/vr/sdk/widgets/video/deps/ej;->V:Ljava/util/regex/Pattern;

    invoke-static {v9, v13}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v13

    .line 64
    sget-object v14, Lcom/google/vr/sdk/widgets/video/deps/ej;->U:Ljava/util/regex/Pattern;

    invoke-static {v9, v14}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v22

    .line 65
    sget-object v14, Lcom/google/vr/sdk/widgets/video/deps/ej;->T:Ljava/util/regex/Pattern;

    invoke-static {v9, v14}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v12, -0x392db8c5

    const/4 v2, 0x2

    if-eq v15, v12, :cond_4

    const v12, -0x13dc6572

    if-eq v15, v12, :cond_3

    const v12, 0x3bba3b6

    if-eq v15, v12, :cond_2

    goto :goto_1

    :cond_2
    const-string v12, "AUDIO"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    const-string v12, "CLOSED-CAPTIONS"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v2

    goto :goto_2

    :cond_4
    const-string v12, "SUBTITLES"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v12, -0x1

    :goto_2
    if-eqz v12, :cond_a

    if-eq v12, v11, :cond_9

    if-eq v12, v2, :cond_6

    goto :goto_0

    .line 74
    :cond_6
    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/ej;->W:Ljava/util/regex/Pattern;

    invoke-static {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "CC"

    .line 75
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 77
    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v9, "application/cea-608"

    goto :goto_3

    :cond_7
    const/4 v2, 0x7

    .line 79
    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v9, "application/cea-708"

    :goto_3
    move/from16 v20, v2

    move-object v15, v9

    if-nez v1, :cond_8

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    move/from16 v18, v21

    move-object/from16 v19, v22

    .line 82
    invoke-static/range {v13 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x0

    const/16 v17, -0x1

    const-string v14, "application/x-mpegURL"

    const-string/jumbo v15, "text/vtt"

    move/from16 v18, v21

    move-object/from16 v19, v22

    .line 71
    invoke-static/range {v13 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    .line 72
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-direct {v9, v10, v2}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const-string v14, "application/x-mpegURL"

    .line 66
    invoke-static/range {v13 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    if-nez v10, :cond_b

    move-object v7, v2

    goto/16 :goto_0

    .line 69
    :cond_b
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-direct {v9, v10, v2}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-string v2, "#EXT-X-STREAM-INF"

    .line 84
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CLOSED-CAPTIONS=NONE"

    .line 85
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    or-int/2addr v8, v2

    .line 86
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ej;->D:Ljava/util/regex/Pattern;

    invoke-static {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    .line 87
    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/ej;->C:Ljava/util/regex/Pattern;

    invoke-static {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_d
    move/from16 v27, v2

    .line 90
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ej;->E:Ljava/util/regex/Pattern;

    invoke-static {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v26

    .line 91
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ej;->F:Ljava/util/regex/Pattern;

    invoke-static {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string/jumbo v10, "x"

    .line 93
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 94
    aget-object v12, v2, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 95
    aget-object v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v12, :cond_f

    if-gtz v2, :cond_e

    goto :goto_4

    :cond_e
    move/from16 v16, v2

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v12, -0x1

    const/16 v16, -0x1

    :goto_5
    move/from16 v28, v12

    move/from16 v29, v16

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    :goto_6
    const/high16 v2, -0x40800000    # -1.0f

    .line 103
    sget-object v11, Lcom/google/vr/sdk/widgets/video/deps/ej;->G:Ljava/util/regex/Pattern;

    invoke-static {v9, v11}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 105
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_11
    move/from16 v30, v2

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v24, "application/x-mpegURL"

    invoke-static/range {v23 .. v32}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v9

    .line 109
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-direct {v11, v2, v9}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_13

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_7

    :cond_13
    move-object v8, v1

    .line 113
    :goto_7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/eg;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 33
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 36
    invoke-static {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/io/BufferedReader;ZI)I

    move-result v0

    const/4 v2, 0x7

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_4

    const-string v4, "#EXTM3U"

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_3

    return v1

    .line 41
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 43
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 44
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(I)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 231
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 233
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static b(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 224
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/ej$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eh;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-wide v10, v0

    move-wide/from16 v19, v10

    move v0, v8

    move v1, v0

    move v14, v1

    move/from16 v16, v14

    move/from16 v17, v16

    move/from16 v21, v17

    move/from16 v22, v21

    move/from16 v26, v22

    move/from16 v43, v26

    move/from16 v18, v9

    const-wide/16 v12, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v41, -0x1

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    :goto_0
    const/16 v50, 0x0

    .line 141
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;->a()Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "#EXT"

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "#EXT-X-PLAYLIST-TYPE"

    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->J:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "VOD"

    .line 147
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    const-string v4, "EVENT"

    .line 149
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v4, "#EXT-X-START"

    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-wide v27, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_4

    .line 152
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->M:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v4

    mul-double v4, v4, v27

    double-to-long v10, v4

    goto :goto_1

    :cond_4
    const-string v4, "#EXT-X-MAP"

    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "@"

    if-eqz v4, :cond_6

    .line 154
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->R:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v28

    .line 155
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->O:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 157
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    .line 159
    array-length v4, v2

    if-le v4, v9, :cond_5

    .line 160
    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    :cond_5
    move-wide/from16 v29, v24

    move-wide/from16 v31, v41

    .line 161
    new-instance v23, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    move-object/from16 v27, v23

    invoke-direct/range {v27 .. v32}, Lcom/google/vr/sdk/widgets/video/deps/eh$b;-><init>(Ljava/lang/String;JJ)V

    const-wide/16 v24, 0x0

    const-wide/16 v41, -0x1

    goto/16 :goto_1

    :cond_6
    const-string v4, "#EXT-X-TARGETDURATION"

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v19, 0xf4240

    mul-long v19, v19, v4

    goto/16 :goto_1

    :cond_7
    const-string v4, "#EXT-X-MEDIA-SEQUENCE"

    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->K:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v26

    move/from16 v17, v26

    goto/16 :goto_1

    :cond_8
    const-string v4, "#EXT-X-VERSION"

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 170
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->I:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v18

    goto/16 :goto_1

    :cond_9
    const-string v4, "#EXTINF"

    .line 171
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 172
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->L:Ljava/util/regex/Pattern;

    .line 173
    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v4

    mul-double v4, v4, v27

    double-to-long v4, v4

    move-wide/from16 v48, v4

    goto/16 :goto_1

    :cond_a
    const-string v4, "#EXT-X-KEY"

    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 175
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->P:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AES-128"

    .line 176
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "SAMPLE-AES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    move/from16 v43, v8

    goto :goto_3

    :cond_c
    :goto_2
    move/from16 v43, v9

    :goto_3
    if-eqz v43, :cond_e

    .line 178
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->Q:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const-string v4, "identity"

    .line 181
    :cond_d
    sget-object v5, Lcom/google/vr/sdk/widgets/video/deps/ej;->R:Ljava/util/regex/Pattern;

    invoke-static {v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v5

    .line 182
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/ej;->S:Ljava/util/regex/Pattern;

    invoke-static {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/ej;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v46, v2

    move-object/from16 v47, v4

    move-object/from16 v50, v5

    goto/16 :goto_1

    :cond_e
    const/16 v46, 0x0

    const/16 v47, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v4, "#EXT-X-BYTERANGE"

    .line 186
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 187
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ej;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ej;->d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 189
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    .line 190
    array-length v4, v2

    if-le v4, v9, :cond_0

    .line 191
    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    goto/16 :goto_1

    :cond_10
    const-string v4, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 192
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x3a

    if-eqz v4, :cond_11

    .line 194
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move v14, v9

    goto/16 :goto_1

    :cond_11
    const-string v4, "#EXT-X-DISCONTINUITY"

    .line 195
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_12
    const-string v4, "#EXT-X-PROGRAM-DATE-TIME"

    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-wide/16 v6, 0x0

    cmp-long v4, v12, v6

    if-nez v4, :cond_0

    .line 200
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->f(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v4

    sub-long v12, v4, v44

    goto/16 :goto_1

    :cond_13
    const-string v4, "#"

    .line 203
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    if-nez v43, :cond_14

    const/16 v36, 0x0

    goto :goto_4

    :cond_14
    if-eqz v46, :cond_15

    move-object/from16 v36, v46

    goto :goto_4

    .line 208
    :cond_15
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_4
    add-int/lit8 v4, v26, 0x1

    const-wide/16 v5, -0x1

    cmp-long v7, v41, v5

    if-nez v7, :cond_16

    const-wide/16 v24, 0x0

    .line 212
    :cond_16
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/eh$b;

    move-object/from16 v26, v5

    move-object/from16 v27, v2

    move-wide/from16 v28, v48

    move/from16 v30, v0

    move-wide/from16 v31, v44

    move/from16 v33, v43

    move-object/from16 v34, v47

    move-object/from16 v35, v50

    move-wide/from16 v37, v24

    move-wide/from16 v39, v41

    invoke-direct/range {v26 .. v40}, Lcom/google/vr/sdk/widgets/video/deps/eh$b;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v44, v44, v48

    if-eqz v7, :cond_17

    add-long v24, v24, v41

    :cond_17
    move/from16 v26, v4

    const-wide/16 v41, -0x1

    const-wide/16 v48, 0x0

    goto/16 :goto_1

    :cond_18
    const-string v4, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 218
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v21, v9

    goto/16 :goto_1

    :cond_19
    const-string v4, "#EXT-X-ENDLIST"

    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v22, v9

    goto/16 :goto_1

    .line 222
    :cond_1a
    new-instance v24, Lcom/google/vr/sdk/widgets/video/deps/eh;

    const-wide/16 v4, 0x0

    cmp-long v0, v12, v4

    if-eqz v0, :cond_1b

    move/from16 v25, v9

    goto :goto_5

    :cond_1b
    move/from16 v25, v8

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v2, p1

    move-wide v4, v10

    move-wide v6, v12

    move v8, v14

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move-wide/from16 v12, v19

    move/from16 v14, v21

    move-object/from16 v18, v15

    move/from16 v15, v22

    move/from16 v16, v25

    move-object/from16 v17, v23

    invoke-direct/range {v0 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/eh;-><init>(ILjava/lang/String;Ljava/util/List;JJZIIIJZZZLcom/google/vr/sdk/widgets/video/deps/eh$b;Ljava/util/List;)V

    return-object v24
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 4

    .line 235
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const-string v1, "NO"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    const-string v2, "YES"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 0

    .line 225
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 227
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t match "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/ei;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Ljava/io/BufferedReader;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "#EXT-X-STREAM-INF"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ej$a;

    invoke-direct {v1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Lcom/google/vr/sdk/widgets/video/deps/ej$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_1
    :try_start_1
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXTINF"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-KEY"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-BYTERANGE"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-ENDLIST"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ej$a;

    invoke-direct {v1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ej$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ej;->b(Lcom/google/vr/sdk/widgets/video/deps/ej$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eh;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return-object p1

    .line 27
    :cond_4
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    .line 30
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_5
    :try_start_2
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dj;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dj;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ej;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/ei;

    move-result-object p1

    return-object p1
.end method
