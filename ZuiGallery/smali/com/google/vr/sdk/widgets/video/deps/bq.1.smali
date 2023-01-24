.class final Lcom/google/vr/sdk/widgets/video/deps/bq;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bq$c;,
        Lcom/google/vr/sdk/widgets/video/deps/bq$d;,
        Lcom/google/vr/sdk/widgets/video/deps/bq$b;,
        Lcom/google/vr/sdk/widgets/video/deps/bq$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static a(JJ)J
    .locals 2

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p2

    .line 226
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bq$d;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;Z)Z

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v6

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v7

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->s()I

    move-result v9

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->s()I

    move-result v10

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->s()I

    move-result v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v3

    and-int/lit8 v12, v3, 0xf

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 15
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v2, v3

    .line 16
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v3

    and-int/2addr v3, v1

    if-lez v3, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 18
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 19
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bq$d;

    move-object v3, v0

    move v13, v2

    invoke-direct/range {v3 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/bq$d;-><init>(JIJIIIIIZ[B)V

    return-object v0
.end method

.method private static a(ILcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x6

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    .line 88
    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x34

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "mapping type other than 0 not supported: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 93
    :goto_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 94
    invoke-virtual {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    add-int/2addr v6, v1

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    .line 96
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 97
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 99
    invoke-virtual {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    move v6, v2

    :goto_3
    if-ge v6, p0, :cond_3

    .line 103
    invoke-virtual {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_4

    .line 106
    invoke-virtual {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 107
    invoke-virtual {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 108
    invoke-virtual {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string/jumbo p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static a(ILcom/google/vr/sdk/widgets/video/deps/gA;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 42
    :cond_0
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p1

    const/16 p2, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo p2, "too short header: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    .line 46
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p2, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    .line 48
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    .line 49
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    .line 50
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    .line 51
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    .line 52
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    .line 55
    :cond_7
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/bo;)[Lcom/google/vr/sdk/widgets/video/deps/bq$c;
    .locals 8

    const/4 v0, 0x6

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 77
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/bq$c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v3

    const/16 v4, 0x10

    .line 80
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v5

    .line 81
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v4

    const/16 v6, 0x8

    .line 82
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    .line 83
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/bq$c;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/bq$c;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)[Lcom/google/vr/sdk/widgets/video/deps/bq$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;Z)Z

    .line 58
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 59
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bo;-><init>([B)V

    .line 60
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    move p0, v1

    :goto_0
    if-ge p0, v0, :cond_0

    .line 62
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bq;->d(Lcom/google/vr/sdk/widgets/video/deps/bo;)Lcom/google/vr/sdk/widgets/video/deps/bq$a;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 64
    invoke-virtual {v2, p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    if-ge v1, p0, :cond_2

    const/16 v0, 0x10

    .line 66
    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_1
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bq;->c(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    .line 70
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bq;->b(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    .line 71
    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(ILcom/google/vr/sdk/widgets/video/deps/bo;)V

    .line 72
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Lcom/google/vr/sdk/widgets/video/deps/bo;)[Lcom/google/vr/sdk/widgets/video/deps/bq$c;

    move-result-object p0

    .line 73
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    .line 74
    :cond_3
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bq$b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;Z)Z

    .line 22
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v2

    long-to-int v0, v2

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    add-int/2addr v3, v2

    .line 26
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v4

    long-to-int v2, v4

    .line 27
    new-array v2, v2, [Ljava/lang/String;

    add-int/lit8 v3, v3, 0x4

    :goto_0
    int-to-long v6, v1

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v3, v3, 0x4

    .line 32
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 33
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 38
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/bq$b;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bq$b;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0

    .line 36
    :cond_1
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "framing bit expected to be set"

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x6

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    .line 116
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    .line 119
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 120
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 123
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 124
    new-array v7, v5, [I

    move v8, v3

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    .line 127
    invoke-virtual {p0, v9}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v9

    .line 128
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    .line 129
    invoke-virtual {p0, v10}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v10

    goto :goto_2

    :cond_0
    move v10, v3

    :goto_2
    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 130
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_3
    if-ge v8, v5, :cond_4

    move v9, v3

    :goto_4
    if-ge v9, v6, :cond_3

    .line 134
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 135
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/4 v0, 0x6

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_9

    const/16 v5, 0x10

    .line 142
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-ne v6, v2, :cond_6

    const/4 v5, 0x5

    .line 154
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v5

    const/4 v6, -0x1

    .line 156
    new-array v9, v5, [I

    move v10, v3

    :goto_1
    if-ge v10, v5, :cond_1

    .line 158
    invoke-virtual {p0, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v11

    aput v11, v9, v10

    .line 159
    aget v11, v9, v10

    if-le v11, v6, :cond_0

    .line 160
    aget v6, v9, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 162
    new-array v10, v6, [I

    move v11, v3

    :goto_2
    const/4 v12, 0x2

    if-ge v11, v6, :cond_4

    const/4 v13, 0x3

    .line 164
    invoke-virtual {p0, v13}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 165
    invoke-virtual {p0, v12}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v12

    if-lez v12, :cond_2

    .line 167
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    :cond_2
    move v13, v3

    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 169
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual {p0, v12}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 173
    invoke-virtual {p0, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    move v7, v3

    move v8, v7

    move v11, v8

    :goto_4
    if-ge v7, v5, :cond_8

    .line 176
    aget v12, v9, v7

    .line 177
    aget v12, v10, v12

    add-int/2addr v8, v12

    :goto_5
    if-ge v11, v8, :cond_5

    .line 179
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 183
    :cond_6
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_7
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 145
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 146
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 148
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 149
    invoke-virtual {p0, v7}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v5

    add-int/2addr v5, v2

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_8

    .line 151
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/bo;)Lcom/google/vr/sdk/widgets/video/deps/bq$a;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    const/16 v0, 0x18

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_a

    const/16 v1, 0x10

    .line 189
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v3

    .line 190
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v4

    .line 191
    new-array v5, v4, [J

    .line 192
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v9

    :goto_0
    if-ge v2, v4, :cond_4

    if-eqz v9, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 198
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    goto :goto_1

    .line 199
    :cond_0
    aput-wide v0, v5, v2

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    add-int/2addr v6, v8

    move v9, v2

    :goto_2
    if-ge v9, v4, :cond_4

    sub-int v10, v4, v9

    .line 205
    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v10

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_3

    if-ge v9, v4, :cond_3

    int-to-long v12, v6

    .line 207
    aput-wide v12, v5, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    .line 211
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_9

    if-eq v6, v8, :cond_5

    if-ne v6, v9, :cond_8

    :cond_5
    const/16 v9, 0x20

    .line 215
    invoke-virtual {p0, v9}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 216
    invoke-virtual {p0, v9}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 217
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 218
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    if-ne v6, v8, :cond_6

    if-eqz v3, :cond_7

    int-to-long v0, v4

    int-to-long v8, v3

    .line 221
    invoke-static {v0, v1, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(JJ)J

    move-result-wide v0

    goto :goto_4

    :cond_6
    mul-int v0, v4, v3

    int-to-long v0, v0

    :cond_7
    :goto_4
    int-to-long v8, v2

    mul-long/2addr v0, v8

    long-to-int v0, v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 225
    :cond_8
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/bq$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/bq$a;-><init>(II[JIZ)V

    return-object p0

    .line 213
    :cond_9
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_a
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    .line 188
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()I

    move-result p0

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method
