.class public Lcom/zui/transcoder/compat/MediaCodecListCompat;
.super Ljava/lang/Object;
.source "MediaCodecListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;
    }
.end annotation


# static fields
.field public static final ALL_CODECS:I = 0x1

.field public static final REGULAR_CODECS:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "kind other than REGULAR_CODECS is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100()I
    .locals 1

    .line 15
    invoke-static {}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->getCodecCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method private findCoderForFormat(Landroid/media/MediaFormat;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "mime"

    .line 34
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;-><init>(Lcom/zui/transcoder/compat/MediaCodecListCompat;Lcom/zui/transcoder/compat/MediaCodecListCompat$1;)V

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodecInfo;

    .line 38
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eq v3, p2, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private static getCodecCount()I
    .locals 1

    .line 57
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method private static getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 61
    invoke-static {p0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->findCoderForFormat(Landroid/media/MediaFormat;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->findCoderForFormat(Landroid/media/MediaFormat;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCodecInfos()[Landroid/media/MediaCodecInfo;
    .locals 4

    .line 47
    invoke-static {}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->getCodecCount()I

    move-result v0

    .line 48
    new-array v1, v0, [Landroid/media/MediaCodecInfo;

    .line 49
    new-instance v2, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;-><init>(Lcom/zui/transcoder/compat/MediaCodecListCompat;Lcom/zui/transcoder/compat/MediaCodecListCompat$1;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    invoke-static {v2}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
