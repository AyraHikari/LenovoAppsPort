.class public final Lcom/google/vr/sdk/widgets/video/deps/eL;
.super Lcom/google/vr/sdk/widgets/video/deps/en;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eL$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TtmlDecoder"

.field private static final b:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"

.field private static final c:Ljava/lang/String; = "begin"

.field private static final d:Ljava/lang/String; = "dur"

.field private static final e:Ljava/lang/String; = "end"

.field private static final f:Ljava/lang/String; = "style"

.field private static final g:Ljava/lang/String; = "region"

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:I = 0x1e

.field private static final m:Lcom/google/vr/sdk/widgets/video/deps/eL$a;


# instance fields
.field private final n:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 309
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->h:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 311
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->i:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 312
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->j:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 314
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->k:Ljava/util/regex/Pattern;

    .line 315
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/eL$a;-><init>(FII)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->m:Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eL;->n:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eL$a;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    long-to-double v8, v8

    .line 274
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    long-to-double v10, v10

    add-double/2addr v8, v10

    .line 276
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v8, v6

    .line 278
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    .line 279
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v5

    :goto_0
    add-double/2addr v8, v10

    .line 280
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 282
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float p0, v10

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->a:F

    div-float/2addr p0, v1

    float-to-double v10, p0

    goto :goto_1

    :cond_1
    move-wide v10, v5

    :goto_1
    add-double/2addr v8, v10

    const/4 p0, 0x6

    .line 283
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 286
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->a:F

    float-to-double p0, p0

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v8, v5

    mul-double/2addr v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 289
    :cond_3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 291
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 293
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v11, 0x66

    if-eq v1, v11, :cond_9

    const/16 v11, 0x68

    if-eq v1, v11, :cond_8

    const/16 v11, 0x6d

    if-eq v1, v11, :cond_7

    const/16 v11, 0xda6

    if-eq v1, v11, :cond_6

    const/16 v11, 0x73

    if-eq v1, v11, :cond_5

    const/16 v7, 0x74

    if-eq v1, v7, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v4

    goto :goto_3

    :cond_5
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v6

    goto :goto_3

    :cond_7
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v8

    goto :goto_3

    :cond_8
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v5

    goto :goto_3

    :cond_a
    :goto_2
    move v7, v0

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    .line 304
    :cond_b
    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->c:I

    int-to-double p0, p0

    goto :goto_4

    .line 302
    :cond_c
    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->a:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double/2addr v9, p0

    :goto_6
    mul-double/2addr v9, v2

    double-to-long p0, v9

    return-wide p0

    .line 306
    :cond_10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string v0, "Malformed time expression: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_11
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/eL$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 60
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 64
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, " "

    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 69
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 70
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    :goto_1
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/eL;->m:Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->b:I

    const-string/jumbo v4, "subFrameRate"

    .line 73
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 76
    :cond_3
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/eL;->m:Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/eL$a;->c:I

    const-string/jumbo v5, "tickRate"

    .line 77
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 80
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    int-to-float v0, v1

    mul-float/2addr v0, v2

    invoke-direct {p1, v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/eL$a;-><init>(FII)V

    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/eM;Ljava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/eL$a;)Lcom/google/vr/sdk/widgets/video/deps/eM;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/vr/sdk/widgets/video/deps/eM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eN;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/eL$a;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/eM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 204
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    .line 205
    invoke-direct {v0, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object v11

    const-string v9, ""

    move-object v12, v5

    move-object v13, v9

    const/4 v5, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v5, v4, :cond_7

    .line 207
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "begin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "dur"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_4
    const-string v8, "region"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_5

    const/4 v6, 0x1

    if-eq v8, v6, :cond_4

    const/4 v6, 0x2

    if-eq v8, v6, :cond_3

    const/4 v6, 0x3

    if-eq v8, v6, :cond_2

    const/4 v6, 0x4

    if-eq v8, v6, :cond_1

    move-object/from16 v6, p3

    goto :goto_3

    :cond_1
    move-object/from16 v6, p3

    .line 219
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v13, v7

    goto :goto_3

    :cond_2
    move-object/from16 v6, p3

    .line 216
    invoke-direct {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 217
    array-length v8, v7

    if-lez v8, :cond_6

    move-object v12, v7

    goto :goto_3

    :cond_3
    move-object/from16 v6, p3

    .line 214
    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eL$a;)J

    move-result-wide v16

    goto :goto_3

    :cond_4
    move-object/from16 v6, p3

    .line 212
    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eL$a;)J

    move-result-wide v14

    goto :goto_3

    :cond_5
    move-object/from16 v6, p3

    .line 210
    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eL$a;)J

    move-result-wide v9

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_9

    .line 222
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    cmp-long v3, v9, v5

    if-eqz v3, :cond_8

    .line 224
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    add-long/2addr v9, v3

    :cond_8
    cmp-long v3, v14, v5

    if-eqz v3, :cond_a

    .line 226
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    add-long/2addr v14, v3

    goto :goto_4

    :cond_9
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :cond_a
    :goto_4
    move-wide v7, v9

    cmp-long v3, v14, v5

    if-nez v3, :cond_c

    cmp-long v3, v16, v5

    if-eqz v3, :cond_b

    add-long v16, v7, v16

    move-wide/from16 v9, v16

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    .line 230
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 231
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    move-wide v9, v2

    goto :goto_5

    :cond_c
    move-wide v9, v14

    .line 232
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v6 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/lang/String;JJLcom/google/vr/sdk/widgets/video/deps/eP;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eM;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_3
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 0

    if-nez p1, :cond_0

    .line 198
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eP;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/eP;-><init>()V

    :cond_0
    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 11

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_10

    .line 144
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_5
    const-string/jumbo v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string/jumbo v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    move v4, v7

    :goto_2
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_8

    .line 187
    :pswitch_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_3

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v1

    goto :goto_3

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v10

    goto :goto_3

    :sswitch_b
    const-string/jumbo v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v8

    goto :goto_3

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v9

    :cond_1
    :goto_3
    if-eqz v7, :cond_5

    if-eq v7, v10, :cond_4

    if-eq v7, v8, :cond_3

    if-eq v7, v9, :cond_2

    goto/16 :goto_8

    .line 194
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/eP;->b(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 192
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/google/vr/sdk/widgets/video/deps/eP;->b(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 190
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 188
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 176
    :pswitch_1
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    :sswitch_d
    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v7, v10

    goto :goto_4

    :sswitch_e
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v7, v8

    goto :goto_4

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v7, v1

    goto :goto_4

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v7, v9

    goto :goto_4

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v7, v6

    :cond_6
    :goto_4
    if-eqz v7, :cond_b

    if-eq v7, v10, :cond_a

    if-eq v7, v8, :cond_9

    if-eq v7, v9, :cond_8

    if-eq v7, v6, :cond_7

    goto/16 :goto_8

    .line 185
    :cond_7
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 183
    :cond_8
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 181
    :cond_9
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 179
    :cond_a
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 177
    :cond_b
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 172
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    const-string v4, "italic"

    .line 173
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 174
    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->d(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 168
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    const-string v4, "bold"

    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 170
    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->c(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto/16 :goto_8

    .line 162
    :pswitch_4
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    .line 163
    invoke-static {v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eP;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/er; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    const-string v4, "Failed parsing fontSize value: "

    .line 166
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 160
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    goto :goto_8

    .line 154
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    .line 155
    :try_start_1
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gq;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(I)Lcom/google/vr/sdk/widgets/video/deps/eP;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const-string v4, "Failed parsing color value: "

    .line 158
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 148
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    .line 149
    :try_start_2
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gq;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/eP;->b(I)Lcom/google/vr/sdk/widgets/video/deps/eP;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    const-string v4, "Failed parsing background value: "

    .line 152
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 146
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 147
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p2

    :cond_f
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_10
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eN;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 81
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v0, "style"

    .line 82
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eP;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/eP;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 87
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/eP;

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/eP;->b(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eP;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eP;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    .line 91
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eL;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/eN;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eN;->a:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const-string v0, "head"

    .line 95
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2
.end method

.method private static a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eP;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    const-string v0, "\\s+"

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 251
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/eL;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_9

    .line 253
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/eL;->j:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 254
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_8

    const/4 p0, 0x3

    .line 257
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_3

    const/16 v7, 0xca8

    if-eq v6, v7, :cond_2

    const/16 v7, 0xe08

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v3

    goto :goto_1

    :cond_3
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v2

    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_6

    if-ne v5, v2, :cond_5

    .line 263
    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/eP;->c(I)Lcom/google/vr/sdk/widgets/video/deps/eP;

    goto :goto_2

    .line 265
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/er;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid unit for fontSize: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eP;->c(I)Lcom/google/vr/sdk/widgets/video/deps/eP;

    goto :goto_2

    .line 259
    :cond_7
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/eP;->c(I)Lcom/google/vr/sdk/widgets/video/deps/eP;

    .line 266
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(F)Lcom/google/vr/sdk/widgets/video/deps/eP;

    return-void

    .line 268
    :cond_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/er;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid expression for fontSize: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_9
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/er;

    array-length p1, v0

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid number of entries for fontSize: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "\\s+"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/eN;
    .locals 11

    const-string v0, "id"

    .line 97
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "origin"

    .line 100
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TtmlDecoder"

    if-eqz v1, :cond_e

    .line 102
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/eL;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    .line 104
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    const/4 v8, 0x2

    .line 105
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v4, v7

    const-string v9, "extent"

    .line 115
    invoke-static {p1, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 117
    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/eL;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 118
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 119
    :try_start_1
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v10, v7

    .line 120
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v0, v7

    const-string v1, "displayAlign"

    .line 131
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 133
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, -0x514d33ab

    if-eq v7, v9, :cond_2

    const v9, 0x58705dc

    if-eq v7, v9, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "after"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v3, v5

    goto :goto_0

    :cond_2
    const-string v7, "center"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v3, v1

    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    goto :goto_1

    :cond_4
    add-float/2addr v4, v0

    goto :goto_2

    :cond_5
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr v4, v0

    move v8, v5

    goto :goto_2

    :cond_6
    :goto_1
    move v8, v1

    .line 140
    :goto_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eN;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v6

    move v6, v8

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eN;-><init>(Ljava/lang/String;FFIIF)V

    return-object p1

    :catch_0
    const-string p1, "Ignoring region with malformed extent: "

    .line 123
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8
    const-string p1, "Ignoring region with unsupported extent: "

    .line 125
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_4
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_a
    const-string p1, "Ignoring region without an extent"

    .line 128
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    const-string p1, "Ignoring region with malformed origin: "

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_5
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_c
    const-string p1, "Ignoring region with unsupported origin: "

    .line 110
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_6
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_e
    const-string p1, "Ignoring region without an origin"

    .line 113
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "tt"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "span"

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "style"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "styling"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "smpte:image"

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "smpte:data"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "smpte:information"

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eL;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eQ;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eQ;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eL;->n:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {p3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p3

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    .line 11
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/eN;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/eN;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 13
    invoke-interface {p3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 17
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    .line 18
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/eL;->m:Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    :goto_0
    const/4 v5, 0x1

    if-eq p2, v5, :cond_a

    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/eM;

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v3, :cond_7

    .line 22
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v9, "tt"

    if-ne p2, v7, :cond_4

    .line 24
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 25
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/eL$a;

    move-result-object v2

    .line 26
    :cond_0
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/eL;->b(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "TtmlDecoder"

    if-nez p2, :cond_2

    :try_start_2
    const-string p2, "Ignoring unsupported tag: "

    .line 27
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v5

    :goto_1
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string p2, "head"

    .line 29
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 30
    invoke-direct {p0, p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 31
    :cond_3
    :try_start_3
    invoke-direct {p0, p3, v5, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eL;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/eM;Ljava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/eL$a;)Lcom/google/vr/sdk/widgets/video/deps/eM;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz v5, :cond_9

    .line 34
    invoke-virtual {v5, p2}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Lcom/google/vr/sdk/widgets/video/deps/eM;)V
    :try_end_3
    .catch Lcom/google/vr/sdk/widgets/video/deps/er; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_4
    const-string v5, "Suppressing parser error"

    .line 37
    invoke-static {v6, v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const/4 v7, 0x4

    if-ne p2, v7, :cond_5

    .line 41
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eM;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Lcom/google/vr/sdk/widgets/video/deps/eM;)V

    goto :goto_3

    :cond_5
    if-ne p2, v6, :cond_9

    .line 43
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 44
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/eQ;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/eM;

    invoke-direct {v4, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eQ;-><init>(Lcom/google/vr/sdk/widgets/video/deps/eM;Ljava/util/Map;Ljava/util/Map;)V

    .line 45
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-ne p2, v7, :cond_8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-ne p2, v6, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 51
    :cond_9
    :goto_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 52
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_a
    return-object v4

    :catch_1
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error when reading input."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 56
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string p3, "Unable to decode source"

    invoke-direct {p2, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
