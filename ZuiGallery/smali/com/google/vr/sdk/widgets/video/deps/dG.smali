.class public Lcom/google/vr/sdk/widgets/video/deps/dG;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fL$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/dF;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MpdParser"

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 483
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dG;->b:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 484
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dG;->c:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 486
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dG;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dG;->e:Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dG;->f:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 447
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 449
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dG;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 451
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 452
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 454
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 420
    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    return p0
.end method

.method protected static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 428
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 429
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dH;

    .line 430
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->a:Ljava/lang/String;

    const-string/jumbo v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 431
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/dG;->c:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 433
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string v2, "Unable to parse CEA-608 channel number from: "

    .line 434
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 404
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 407
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 408
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected static b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 437
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 438
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dH;

    .line 439
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->a:Ljava/lang/String;

    const-string/jumbo v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 440
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/dG;->d:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 441
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 442
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string v2, "Unable to parse CEA-708 service block number from: "

    .line 443
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dH;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 457
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 460
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->e(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dH;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 422
    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    .line 423
    invoke-static {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    .line 424
    invoke-static {p0, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 426
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/dH;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dH;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 385
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gx;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gx;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :cond_1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "application/mp4"

    .line 391
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "stpp"

    .line 392
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "application/ttml+xml"

    return-object p0

    :cond_3
    const-string/jumbo p0, "wvtt"

    .line 394
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "application/x-mp4-vtt"

    return-object p0

    :cond_4
    const-string v0, "application/x-rawcc"

    .line 396
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    const-string p0, "cea708"

    .line 398
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "application/cea-708"

    return-object p0

    :cond_5
    const-string p0, "eia608"

    .line 400
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "cea608"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const-string p0, "application/cea-608"

    return-object p0

    :cond_7
    return-object v1
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x0

    .line 461
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 464
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->f(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 414
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    return-object p0
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 466
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/gL;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 469
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method protected static j(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    .line 473
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 476
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "fa01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "f801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "a000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "4000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    return v3

    :cond_5
    return v4

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected a(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 2

    .line 161
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 166
    :cond_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 168
    :cond_2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/google/vr/sdk/widgets/video/deps/dI;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "id"

    .line 69
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start"

    .line 70
    invoke-static {p1, v2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p3

    const-string v2, "duration"

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    invoke-static {p1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object v6, v0

    .line 75
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "BaseURL"

    .line 76
    invoke-static {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v5, :cond_5

    .line 78
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "AdaptationSet"

    .line 80
    invoke-static {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;)Lcom/google/vr/sdk/widgets/video/deps/dE;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v7, "SegmentBase"

    .line 82
    invoke-static {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$e;)Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v7, "SegmentList"

    .line 84
    invoke-static {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$b;)Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-string v7, "SegmentTemplate"

    .line 86
    invoke-static {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$c;)Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    move-result-object v6

    :cond_5
    :goto_0
    const-string v7, "Period"

    .line 88
    invoke-static {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {p0, v1, p3, p4, v4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected a(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dE;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dK;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;"
        }
    .end annotation

    .line 153
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dE;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dE;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;)Lcom/google/vr/sdk/widgets/video/deps/dE;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const-string v0, "id"

    const/4 v1, -0x1

    .line 91
    invoke-static {v15, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 92
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v13, 0x0

    const-string v2, "mimeType"

    .line 93
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "codecs"

    .line 94
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "width"

    .line 95
    invoke-static {v15, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string v2, "height"

    .line 96
    invoke-static {v15, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const/high16 v2, -0x40800000    # -1.0f

    .line 97
    invoke-static {v15, v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    const-string v2, "audioSamplingRate"

    .line 99
    invoke-static {v15, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    const-string v12, "lang"

    .line 100
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    move-object/from16 v6, p2

    move-object/from16 v24, p3

    move v5, v0

    move/from16 v25, v1

    move-object v4, v2

    move-object/from16 v28, v13

    move/from16 v26, v23

    move/from16 v27, v26

    .line 109
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 110
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v26, :cond_0

    .line 112
    invoke-static {v15, v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v26, 0x1

    move-object/from16 v30, v0

    :goto_1
    move-object v6, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v37, v13

    move-object v1, v15

    move v8, v5

    goto/16 :goto_6

    :cond_0
    :goto_2
    move-object/from16 v29, v4

    move v2, v5

    move-object/from16 v30, v6

    move-object v6, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v37, v13

    move-object v1, v15

    goto/16 :goto_5

    :cond_1
    const-string v0, "ContentProtection"

    .line 114
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 116
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/String;

    .line 118
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 119
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v0, "ContentComponent"

    .line 120
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(II)I

    move-result v1

    move-object v4, v0

    move-object/from16 v30, v6

    move-object v6, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v7, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v37, v13

    move v8, v1

    move-object v1, v15

    goto/16 :goto_6

    :cond_4
    const-string v0, "Role"

    .line 123
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    or-int v27, v27, v0

    :cond_5
    :goto_3
    move-object/from16 v30, v6

    goto/16 :goto_1

    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 125
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    move/from16 v25, v0

    goto :goto_3

    :cond_7
    const-string v0, "Accessibility"

    .line 127
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dH;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v0, "SupplementalProperty"

    .line 129
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 130
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dH;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v0, "Representation"

    .line 131
    invoke-static {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v17

    move-object/from16 v29, v4

    move-object/from16 v4, v18

    move v15, v5

    move/from16 v5, v19

    move-object/from16 v30, v6

    move/from16 v6, v20

    move-object/from16 v31, v7

    move/from16 v7, v21

    move-object/from16 v32, v8

    move/from16 v8, v25

    move-object/from16 v33, v9

    move/from16 v9, v22

    move-object/from16 v34, v10

    move-object/from16 v10, v29

    move-object/from16 v35, v11

    move/from16 v11, v27

    move-object/from16 v36, v12

    move-object/from16 v12, v33

    move-object/from16 v37, v13

    move-object/from16 v13, v24

    .line 132
    invoke-virtual/range {v0 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dM;)Lcom/google/vr/sdk/widgets/video/deps/dG$a;

    move-result-object v0

    .line 133
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 134
    invoke-virtual {v14, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v1

    .line 135
    invoke-static {v15, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(II)I

    move-result v1

    move-object/from16 v6, v31

    .line 136
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v1

    move-object/from16 v4, v29

    move-object/from16 v7, v34

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v29, v4

    move v15, v5

    move-object/from16 v30, v6

    move-object v6, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v37, v13

    const-string v0, "SegmentBase"

    move-object/from16 v1, p1

    move v2, v15

    .line 137
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    invoke-virtual {v14, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$e;)Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    move-result-object v0

    :goto_4
    move-object/from16 v24, v0

    move v8, v2

    move-object/from16 v4, v29

    move-object/from16 v7, v34

    goto :goto_6

    :cond_b
    const-string v0, "SegmentList"

    .line 139
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    invoke-virtual {v14, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$b;)Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v0, "SegmentTemplate"

    .line 141
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 142
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    invoke-virtual {v14, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$c;)Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string v0, "InbandEventStream"

    .line 143
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 144
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dH;

    move-result-object v0

    move-object/from16 v7, v34

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v7, v34

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 146
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_f
    :goto_5
    move v8, v2

    move-object/from16 v4, v29

    :goto_6
    const-string v0, "AdaptationSet"

    .line 147
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 148
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v10, v23

    .line 149
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_10

    .line 150
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;

    iget-object v2, v14, Lcom/google/vr/sdk/widgets/video/deps/dG;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, v28

    move-object/from16 v4, v35

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lcom/google/vr/sdk/widgets/video/deps/dG$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/vr/sdk/widgets/video/deps/dK;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v33

    move-object/from16 v5, v32

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dE;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v15, v1

    move-object v10, v7

    move v5, v8

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move-object/from16 v13, v37

    move-object v7, v6

    move-object/from16 v6, v30

    goto/16 :goto_0
.end method

.method protected a(JJJZJJJLcom/google/vr/sdk/widgets/video/deps/dP;Landroid/net/Uri;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dF;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/vr/sdk/widgets/video/deps/dP;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dI;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 64
    new-instance v17, Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/dF;-><init>(JJJZJJJLcom/google/vr/sdk/widgets/video/deps/dP;Landroid/net/Uri;Ljava/util/List;)V

    return-object v17
.end method

.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/dF;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dG;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "MPD"

    .line 13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "inputStream does not contain a valid media presentation description"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dF;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "availabilityStartTime"

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "mediaPresentationDuration"

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "minBufferTime"

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v1, 0x0

    const-string/jumbo v4, "type"

    .line 21
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    const-string v13, "dynamic"

    .line 22
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    if-eqz v13, :cond_1

    const-string v4, "minimumUpdatePeriod"

    .line 23
    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_1

    :cond_1
    move-wide v14, v2

    :goto_1
    if-eqz v13, :cond_2

    const-string/jumbo v4, "timeShiftBufferDepth"

    .line 26
    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v2

    :goto_2
    if-eqz v13, :cond_3

    const-string/jumbo v4, "suggestedPresentationDelay"

    .line 28
    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v2

    .line 31
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_4

    move-wide/from16 v20, v2

    goto :goto_4

    :cond_4
    const-wide/16 v20, 0x0

    :goto_4
    move/from16 v22, v12

    move-wide/from16 v11, v20

    move-object/from16 v20, v1

    move/from16 v21, v22

    move-object/from16 v1, p2

    move-object/from16 p2, v20

    .line 35
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "BaseURL"

    .line 36
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v21, :cond_5

    .line 38
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    const/16 v21, 0x1

    goto/16 :goto_9

    :cond_5
    move-object/from16 v25, v1

    move-wide/from16 v26, v11

    goto/16 :goto_8

    :cond_6
    const-string v2, "UTCTiming"

    .line 40
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 41
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dP;

    move-result-object v2

    goto/16 :goto_9

    :cond_7
    const-string v2, "Location"

    .line 42
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_6
    move-object/from16 v2, p2

    goto/16 :goto_9

    :cond_8
    const-string v2, "Period"

    .line 44
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v22, :cond_5

    move-object/from16 v2, p0

    .line 45
    invoke-virtual {v2, v0, v1, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v3

    move-object/from16 v25, v1

    .line 46
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-wide/from16 v26, v11

    .line 47
    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v11, v23

    if-nez v11, :cond_a

    if-eqz v13, :cond_9

    move-object/from16 v2, p2

    move-object/from16 v1, v25

    move-wide/from16 v11, v26

    const/16 v22, 0x1

    goto :goto_9

    .line 50
    :cond_9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to determine start of period "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_a
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v11, v23

    if-nez v3, :cond_b

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    .line 53
    :cond_b
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    add-long/2addr v2, v11

    .line 54
    :goto_7
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v11, v2

    move-object/from16 v1, v25

    goto :goto_6

    :goto_8
    move-object/from16 v2, p2

    move-object/from16 v1, v25

    move-wide/from16 v11, v26

    :goto_9
    const-string v3, "MPD"

    .line 55
    invoke-static {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_10

    cmp-long v0, v7, v23

    if-nez v0, :cond_e

    cmp-long v0, v11, v23

    if-eqz v0, :cond_c

    move-wide v7, v11

    goto :goto_a

    :cond_c
    if-eqz v13, :cond_d

    goto :goto_a

    .line 60
    :cond_d
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_e
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move-object v3, v4

    move-object/from16 v4, p0

    move v11, v13

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v20

    move-object/from16 v20, v3

    .line 63
    invoke-virtual/range {v4 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(JJJZJJJLcom/google/vr/sdk/widgets/video/deps/dP;Landroid/net/Uri;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-result-object v0

    return-object v0

    .line 62
    :cond_f
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 p2, v2

    move-wide/from16 v2, v23

    goto/16 :goto_5
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dM;)Lcom/google/vr/sdk/widgets/video/deps/dG$a;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/dM;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/dG$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "id"

    .line 213
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bandwidth"

    const/4 v4, -0x1

    .line 214
    invoke-static {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v3, "mimeType"

    move-object/from16 v4, p3

    .line 215
    invoke-static {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "codecs"

    move-object/from16 v5, p4

    .line 216
    invoke-static {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, "width"

    move/from16 v5, p5

    .line 217
    invoke-static {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "height"

    move/from16 v6, p6

    .line 218
    invoke-static {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move/from16 v6, p7

    .line 219
    invoke-static {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v6

    const-string v7, "audioSamplingRate"

    move/from16 v9, p9

    .line 221
    invoke-static {v0, v7, v9}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 223
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move-object/from16 v10, p13

    move-object v11, v1

    move/from16 v16, v9

    move-object/from16 v1, p2

    move/from16 v9, p8

    .line 226
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move/from16 p2, v9

    const-string v9, "BaseURL"

    .line 227
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v16, :cond_0

    .line 229
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    move-object/from16 v16, v1

    move v1, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v9, p2

    goto/16 :goto_4

    :cond_0
    move-object/from16 p3, v1

    goto/16 :goto_3

    :cond_1
    const-string v9, "AudioChannelConfiguration"

    .line 231
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 232
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_1
    move/from16 v19, v16

    move-object/from16 v16, v1

    move/from16 v1, v19

    goto/16 :goto_4

    :cond_2
    const-string v9, "SegmentBase"

    .line 233
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 234
    check-cast v10, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    invoke-virtual {v13, v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$e;)Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    move-result-object v9

    :goto_2
    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move/from16 v9, p2

    goto :goto_1

    :cond_3
    const-string v9, "SegmentList"

    .line 235
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 236
    check-cast v10, Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    invoke-virtual {v13, v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$b;)Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    move-result-object v9

    goto :goto_2

    :cond_4
    const-string v9, "SegmentTemplate"

    .line 237
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 238
    check-cast v10, Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    invoke-virtual {v13, v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$c;)Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    move-result-object v9

    goto :goto_2

    :cond_5
    const-string v9, "ContentProtection"

    .line 239
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 240
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v9

    move-object/from16 p3, v1

    .line 241
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 242
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 243
    :cond_6
    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 244
    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object/from16 p3, v1

    const-string v1, "InbandEventStream"

    .line 245
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 246
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dH;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v1, v16

    move-object/from16 v16, p3

    :goto_4
    const-string v10, "Representation"

    .line 247
    invoke-static {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    .line 248
    invoke-virtual/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    if-eqz v17, :cond_9

    move-object/from16 v1, v17

    goto :goto_5

    .line 249
    :cond_9
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/dM$e;-><init>()V

    .line 250
    :goto_5
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/dG$a;

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move-object/from16 p3, v16

    move-object/from16 p4, v1

    move-object/from16 p5, v18

    move-object/from16 p6, v14

    move-object/from16 p7, v15

    invoke-direct/range {p1 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/dG$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2

    :cond_a
    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v19, v16

    move/from16 v16, v1

    move-object/from16 v1, v19

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dE;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dI;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dI;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/dI;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;JJ)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 7

    .line 376
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 7

    const/4 v0, 0x0

    .line 366
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 372
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 373
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p2, 0x1

    .line 374
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    move-wide v5, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v5, p2

    :goto_0
    move-wide v3, v0

    move-object v1, p0

    .line 375
    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;JJ)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/dG$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/vr/sdk/widgets/video/deps/dK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dG$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/aa$a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dK;"
        }
    .end annotation

    .line 265
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 266
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 267
    iget-object p3, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->d:Ljava/lang/String;

    .line 268
    :cond_0
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->e:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 271
    new-instance p4, Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-direct {p4, v1}, Lcom/google/vr/sdk/widgets/video/deps/aa;-><init>(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 273
    invoke-virtual {p4, p3}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object p4

    .line 274
    :cond_1
    invoke-virtual {v0, p4}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 275
    iget-object v7, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->f:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v7, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v2, -0x1

    .line 277
    iget-object v5, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/vr/sdk/widgets/video/deps/dG$a;->c:Lcom/google/vr/sdk/widgets/video/deps/dM;

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dK;->a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dK;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dM$b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$b;"
        }
    .end annotation

    .line 320
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    move-object v0, v11

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dM$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v11
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$b;)Lcom/google/vr/sdk/widgets/video/deps/dM$b;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 296
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    const-string/jumbo v4, "timescale"

    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_1

    .line 298
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 299
    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v1, :cond_2

    .line 300
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v1, :cond_3

    .line 301
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->d:I

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    :goto_3
    const-string/jumbo v3, "startNumber"

    invoke-static {v0, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 305
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    .line 306
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v5, "SegmentTimeline"

    .line 308
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 309
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_6
    const-string v5, "SegmentURL"

    .line 310
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_7

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const-string v5, "SegmentList"

    .line 314
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_c

    if-eqz v3, :cond_9

    goto :goto_5

    .line 316
    :cond_9
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    :goto_5
    if-eqz v4, :cond_a

    goto :goto_6

    .line 317
    :cond_a
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->f:Ljava/util/List;

    :goto_6
    if-eqz v2, :cond_b

    goto :goto_7

    .line 318
    :cond_b
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$b;->g:Ljava/util/List;

    :cond_c
    :goto_7
    move-object v15, v2

    move-object v6, v3

    move-object v14, v4

    move-object/from16 v5, p0

    .line 319
    invoke-virtual/range {v5 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dM$b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dO;Lcom/google/vr/sdk/widgets/video/deps/dO;)Lcom/google/vr/sdk/widgets/video/deps/dM$c;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/dO;",
            "Lcom/google/vr/sdk/widgets/video/deps/dO;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$c;"
        }
    .end annotation

    .line 345
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dM$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dO;Lcom/google/vr/sdk/widgets/video/deps/dO;)V

    return-object v12
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$c;)Lcom/google/vr/sdk/widgets/video/deps/dM$c;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 321
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    const-string/jumbo v4, "timescale"

    invoke-static {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz v1, :cond_1

    .line 323
    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const-string v6, "presentationTimeOffset"

    .line 324
    invoke-static {v0, v6, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v1, :cond_2

    .line 325
    iget-wide v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->e:J

    goto :goto_2

    :cond_2
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v8, "duration"

    invoke-static {v0, v8, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_3

    .line 326
    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->d:I

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    :goto_3
    const-string/jumbo v9, "startNumber"

    invoke-static {v0, v9, v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x0

    if-eqz v1, :cond_4

    .line 328
    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->h:Lcom/google/vr/sdk/widgets/video/deps/dO;

    goto :goto_4

    :cond_4
    move-object v10, v9

    :goto_4
    const-string v11, "media"

    .line 329
    invoke-virtual {p0, v0, v11, v10}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dO;)Lcom/google/vr/sdk/widgets/video/deps/dO;

    move-result-object v11

    if-eqz v1, :cond_5

    .line 331
    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->g:Lcom/google/vr/sdk/widgets/video/deps/dO;

    goto :goto_5

    :cond_5
    move-object v10, v9

    :goto_5
    const-string v13, "initialization"

    .line 332
    invoke-virtual {p0, v0, v13, v10}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dO;)Lcom/google/vr/sdk/widgets/video/deps/dO;

    move-result-object v10

    move-object v13, v9

    .line 335
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v14, "Initialization"

    .line 336
    invoke-static {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 337
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v9

    goto :goto_6

    :cond_7
    const-string v14, "SegmentTimeline"

    .line 338
    invoke-static {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 339
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v13

    :cond_8
    :goto_6
    const-string v14, "SegmentTemplate"

    .line 340
    invoke-static {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v1, :cond_b

    if-eqz v9, :cond_9

    goto :goto_7

    .line 342
    :cond_9
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->a:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    :goto_7
    if-eqz v13, :cond_a

    goto :goto_8

    .line 343
    :cond_a
    iget-object v13, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->f:Ljava/util/List;

    :cond_b
    :goto_8
    move-object v1, v9

    move-object v9, v13

    move-object v0, p0

    .line 344
    invoke-virtual/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dO;Lcom/google/vr/sdk/widgets/video/deps/dO;)Lcom/google/vr/sdk/widgets/video/deps/dM$c;

    move-result-object v0

    return-object v0
.end method

.method protected a(JJ)Lcom/google/vr/sdk/widgets/video/deps/dM$d;
    .locals 1

    .line 359
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dM$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/dM$d;-><init>(JJ)V

    return-object v0
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJJJ)Lcom/google/vr/sdk/widgets/video/deps/dM$e;
    .locals 11

    .line 295
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dM$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJJJ)V

    return-object v10
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/dM$e;)Lcom/google/vr/sdk/widgets/video/deps/dM$e;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 278
    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$e;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string/jumbo v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 280
    iget-wide v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$e;->c:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 281
    invoke-static {v0, v8, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 282
    iget-wide v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$e;->d:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 283
    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$e;->e:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 284
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 286
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 287
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 288
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 289
    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$e;->a:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    .line 290
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 291
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    invoke-virtual/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object v1

    move-object v8, v1

    :cond_6
    const-string v1, "SegmentBase"

    .line 293
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    .line 294
    invoke-virtual/range {v7 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJJJ)Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dO;)Lcom/google/vr/sdk/widgets/video/deps/dO;
    .locals 1

    const/4 v0, 0x0

    .line 360
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dO;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dO;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dP;
    .locals 1

    .line 68
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dP;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dP;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 66
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dP;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object v1, p2

    move-object/from16 v3, p12

    .line 251
    invoke-static {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 253
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v9, p10

    .line 254
    invoke-static/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p10

    move-object/from16 v9, p9

    .line 256
    invoke-static/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0

    .line 257
    :cond_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "application/cea-608"

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-static/range {p11 .. p11}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Ljava/util/List;)I

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_2
    const-string v0, "application/cea-708"

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    invoke-static/range {p11 .. p11}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move/from16 v5, p10

    move-object/from16 v6, p9

    .line 263
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move/from16 v5, p10

    move-object/from16 v6, p9

    .line 264
    invoke-static/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 154
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "video"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "text"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    return v1
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 171
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "urn:mpeg:dash:mp4protection:2011"

    .line 177
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "value"

    .line 178
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cenc:default_KID"

    .line 179
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 180
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 181
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 182
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/b;->bc:Ljava/util/UUID;

    new-array v7, v3, [Ljava/util/UUID;

    aput-object v5, v7, v4

    invoke-static {v6, v7, v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v5

    .line 183
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/b;->bc:Ljava/util/UUID;

    goto :goto_1

    :cond_0
    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v5, v1

    :goto_0
    move-object v6, v5

    :goto_1
    move v7, v4

    .line 184
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v8, 0x4

    if-nez v5, :cond_3

    const-string v9, "cenc:pssh"

    .line 185
    invoke-static {p1, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v8, :cond_3

    .line 187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 188
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a([B)Ljava/util/UUID;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v5, "MpdParser"

    const-string v8, "Skipping malformed cenc:pssh data"

    .line 190
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    const-string v9, "mspr:pro"

    .line 192
    invoke-static {p1, v9}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 193
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 194
    sget-object v5, Lcom/google/vr/sdk/widgets/video/deps/b;->bf:Ljava/util/UUID;

    .line 195
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 196
    invoke-static {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a(Ljava/util/UUID;[B)[B

    move-result-object v5

    .line 197
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/b;->bf:Ljava/util/UUID;

    goto :goto_2

    :cond_4
    const-string/jumbo v8, "widevine:license"

    .line 198
    invoke-static {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v7, "robustness_level"

    .line 199
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "HW"

    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v4

    :cond_6
    :goto_2
    const-string v8, "ContentProtection"

    .line 201
    invoke-static {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_7

    .line 203
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    const-string/jumbo p1, "video/mp4"

    invoke-direct {v0, v6, p1, v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/aa$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 204
    :cond_7
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 205
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "value"

    .line 206
    invoke-static {p1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Role"

    .line 208
    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "urn:mpeg:dash:role:2011"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "main"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 348
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    .line 349
    invoke-static {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gN;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "t"

    .line 350
    invoke-static {p1, v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-string v5, "d"

    .line 351
    invoke-static {p1, v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "r"

    const/4 v6, 0x0

    .line 352
    invoke-static {p1, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_0
    if-ge v6, v5, :cond_1

    .line 354
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(JJ)Lcom/google/vr/sdk/widgets/video/deps/dM$d;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "SegmentTimeline"

    .line 357
    invoke-static {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method protected g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 2

    const-string/jumbo v0, "sourceURL"

    const-string v1, "range"

    .line 364
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    return-object p1
.end method

.method protected h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    .line 365
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    return-object p1
.end method

.method protected i(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 377
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "value"

    .line 379
    invoke-static {p1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/dG;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dG;->j(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 382
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 383
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gN;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2
.end method
