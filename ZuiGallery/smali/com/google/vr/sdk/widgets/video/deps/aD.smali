.class final Lcom/google/vr/sdk/widgets/video/deps/aD;
.super Lcom/google/vr/sdk/widgets/video/deps/aE;
.source "ScriptTagPayloadReader.java"


# static fields
.field private static final b:Ljava/lang/String; = "onMetaData"

.field private static final c:Ljava/lang/String; = "duration"

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x8

.field private static final i:I = 0x9

.field private static final j:I = 0xa

.field private static final k:I = 0xb


# instance fields
.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aE;-><init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aD;->l:J

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->i(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->f(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 60
    :cond_2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->h(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 59
    :cond_3
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->g(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 58
    :cond_4
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_5
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 56
    :cond_6
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;)I
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    return p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/Boolean;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/Double;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 28
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static f(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result v3

    .line 33
    invoke-static {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/aD;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static g(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    :goto_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    return-object v0

    .line 41
    :cond_0
    invoke-static {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/aD;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static h(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v0

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result v4

    .line 49
    invoke-static {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/aD;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static i(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/Date;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/aD;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    .line 10
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aD;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onMetaData"

    .line 11
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aD;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/aD;->h(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "duration"

    .line 17
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 18
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 20
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aD;->l:J

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aD;->l:J

    return-wide v0
.end method
