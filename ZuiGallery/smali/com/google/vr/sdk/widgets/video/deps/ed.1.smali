.class final Lcom/google/vr/sdk/widgets/video/deps/ed;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# static fields
.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gJ;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private j:[B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ed;->d:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ed;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->f:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->g:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->j:[B

    return-void
.end method

.method private a(J)Lcom/google/vr/sdk/widgets/video/deps/aA;
    .locals 10

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->i:Lcom/google/vr/sdk/widgets/video/deps/au;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v0

    .line 58
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;J)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 59
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->i:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    return-object v0
.end method

.method private a()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->j:[B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 26
    :try_start_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/fa;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/er; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    const-string v8, "X-TIMESTAMP-MAP"

    .line 33
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 34
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/ed;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    .line 36
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/ed;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    .line 39
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/r;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_4
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/fa;->a(Ljava/lang/String;)J

    move-result-wide v5

    .line 42
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 43
    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d(J)J

    move-result-wide v3

    goto :goto_0

    .line 45
    :cond_5
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/fa;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_6

    .line 47
    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ed;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void

    .line 49
    :cond_6
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/fa;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->g:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ed;->a(J)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v5

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->j:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->h:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    invoke-interface {v5, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    const/4 v8, 0x1

    .line 55
    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    return-void

    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v0

    long-to-int p2, v0

    .line 14
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->j:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 16
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->j:[B

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->j:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->k:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 23
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ed;->a()V

    return v3
.end method

.method public a(JJ)V
    .locals 0

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 3

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ed;->i:Lcom/google/vr/sdk/widgets/video/deps/au;

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
