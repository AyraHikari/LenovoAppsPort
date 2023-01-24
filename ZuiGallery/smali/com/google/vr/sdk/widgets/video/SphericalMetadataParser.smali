.class public Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;
.super Ljava/lang/Object;
.source "SphericalMetadataParser.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_HEADING:Ljava/lang/String; = "InitialViewHeadingDegrees"

.field private static final INITIAL_PITCH:Ljava/lang/String; = "InitialViewPitchDegrees"

.field private static final INITIAL_ROLL:Ljava/lang/String; = "InitialViewRollDegrees"

.field private static final PROJECTION_TYPE:Ljava/lang/String; = "ProjectionType"

.field private static final SPHERICAL:Ljava/lang/String; = "Spherical"

.field private static final STEREO_MODE:Ljava/lang/String; = "StereoMode"

.field private static final STEREO_MODE_LEFT_RIGHT:Ljava/lang/String; = "left-right"

.field private static final STEREO_MODE_MONO:Ljava/lang/String; = "mono"

.field private static final STEREO_MODE_TOP_BOTTOM:Ljava/lang/String; = "top-bottom"

.field private static final STITCHED:Ljava/lang/String; = "Stitched"

.field private static final STITCHING_SOFTWARE:Ljava/lang/String; = "StitchingSoftware"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 2

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/StringBufferInputStream;

    invoke-direct {v1, p0}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 9
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;->readFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    sget-object v0, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    return-object p0
.end method

.method private static readFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    .line 14
    :goto_0
    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    .line 15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    move v4, v2

    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    if-lez v4, :cond_4

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v3, :cond_3

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    .line 28
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "Stitched"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_1
    const-string v5, "InitialViewHeadingDegrees"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    goto :goto_3

    :sswitch_2
    const-string v5, "ProjectionType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x7

    goto :goto_3

    :sswitch_3
    const-string v5, "InitialViewPitchDegrees"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_3

    :sswitch_4
    const-string v5, "StitchingSoftware"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_5
    const-string v6, "Spherical"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :sswitch_6
    const-string v5, "StereoMode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_3

    :sswitch_7
    const-string v5, "InitialViewRollDegrees"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v9

    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 43
    sget-object v1, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;->TAG:Ljava/lang/String;

    const-string v2, "Unknown name: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 36
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x333ae3

    if-eq v4, v5, :cond_9

    const v5, 0x3d4814d6

    if-eq v4, v5, :cond_8

    const v5, 0x677d09a3

    if-eq v4, v5, :cond_7

    goto :goto_4

    :cond_7
    const-string/jumbo v4, "top-bottom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_8
    const-string v4, "left-right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v8, v2

    goto :goto_5

    :cond_9
    const-string v4, "mono"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v8, v3

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v9

    :goto_5
    if-eqz v8, :cond_c

    if-eq v8, v2, :cond_b

    goto :goto_6

    .line 39
    :cond_b
    sget-object v1, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;->TAG:Ljava/lang/String;

    const-string v3, "left-right videos are unsupported"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_6
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    goto/16 :goto_0

    .line 37
    :cond_c
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    goto/16 :goto_0

    .line 34
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewRollDegrees:I

    goto/16 :goto_0

    .line 32
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewPitchDegrees:I

    goto/16 :goto_0

    .line 30
    :pswitch_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewHeadingDegrees:I

    goto/16 :goto_0

    .line 43
    :cond_d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_7
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7086b3bf -> :sswitch_7
        -0x60369a25 -> :sswitch_6
        -0x4af325c3 -> :sswitch_5
        -0xf1d7dc8 -> :sswitch_4
        0x4d24250 -> :sswitch_3
        0x7e7da49 -> :sswitch_2
        0x18c4cb0e -> :sswitch_1
        0x60127930 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
