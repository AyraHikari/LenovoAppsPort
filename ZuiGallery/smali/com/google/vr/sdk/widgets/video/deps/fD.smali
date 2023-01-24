.class public Lcom/google/vr/sdk/widgets/video/deps/fD;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fI;


# static fields
.field public static final a:I = 0x1f40

.field public static final b:I = 0x1f40

.field private static final d:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final e:I = 0x14

.field private static final f:J = 0x800L

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/gC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/gC<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fD;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field private r:Ljava/net/HttpURLConnection;

.field private s:Ljava/io/InputStream;

.field private t:Z

.field private u:J

.field private v:J

.field private w:J

.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 237
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fD;->g:Ljava/util/regex/Pattern;

    .line 238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fD;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/gC<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fD;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/gC<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fD;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fD;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/gC<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fD;",
            ">;II)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fD;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;IIZLcom/google/vr/sdk/widgets/video/deps/fI$f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;IIZLcom/google/vr/sdk/widgets/video/deps/fI$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/gC<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fD;",
            ">;IIZ",
            "Lcom/google/vr/sdk/widgets/video/deps/fI$f;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->l:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->m:Lcom/google/vr/sdk/widgets/video/deps/gC;

    .line 10
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->p:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->o:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    .line 12
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->j:I

    .line 13
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->k:I

    .line 14
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->i:Z

    .line 15
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->n:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 10

    const-string v0, "Content-Length"

    .line 156
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_0

    .line 158
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    const-string v1, "Content-Range"

    .line 162
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/fD;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 167
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    move-wide v4, v6

    goto :goto_1

    :cond_1
    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 171
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v0

    goto :goto_1

    .line 175
    :catch_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-wide v4
.end method

.method private a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 117
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->j:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 118
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->k:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->n:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->o:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_2

    cmp-long v0, p5, v1

    if-eqz v0, :cond_4

    :cond_2
    const/16 v0, 0x1b

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "bytes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p5, v1

    if-eqz v1, :cond_3

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-long/2addr p3, p5

    const-wide/16 p5, 0x1

    sub-long/2addr p3, p5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x14

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p3, "Range"

    .line 130
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_4
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->l:Ljava/lang/String;

    const-string p4, "User-Agent"

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_5

    const-string p3, "Accept-Encoding"

    const-string p4, "identity"

    .line 133
    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_5
    invoke-virtual {p1, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_6

    const/4 p3, 0x1

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 135
    :goto_2
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_8

    const-string p3, "POST"

    .line 137
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    array-length p3, p2

    if-nez p3, :cond_7

    .line 139
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_3

    .line 140
    :cond_7
    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 141
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 142
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 143
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 146
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 150
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 153
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0

    .line 149
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/net/HttpURLConnection;J)V
    .locals 2

    .line 211
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    .line 213
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    return-void

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 222
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 223
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private b([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    .line 198
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->x:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    return v5

    :cond_1
    int-to-long v6, p3

    .line 201
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_4

    .line 204
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    return v5

    .line 205
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 207
    :cond_4
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->x:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->x:J

    .line 208
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->p:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz p2, :cond_5

    .line 209
    invoke-interface {p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    :cond_5
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/net/HttpURLConnection;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 96
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->d:[B

    .line 98
    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    .line 99
    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const/4 v3, 0x1

    .line 100
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(I)Z

    move-result v16

    move-object/from16 v11, p0

    .line 101
    iget-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/fD;->i:Z

    if-nez v0, :cond_0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-wide v3, v12

    move-wide v5, v14

    move/from16 v7, v16

    .line 102
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fD;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v10, v0, 0x1

    const/16 v3, 0x14

    if-gt v0, v3, :cond_3

    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object v4, v1

    move-object v5, v2

    move-wide v6, v12

    move-wide v8, v14

    move-wide/from16 v17, v12

    move v12, v10

    move/from16 v10, v16

    move v11, v0

    .line 105
    invoke-direct/range {v3 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fD;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_1

    const/16 v2, 0x133

    if-eq v3, v2, :cond_2

    const/16 v2, 0x134

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    const-string v3, "Location"

    .line 109
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fD;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object/from16 v11, p0

    move v0, v12

    move-wide/from16 v12, v17

    goto :goto_0

    :cond_3
    move v12, v10

    .line 115
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->w:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->u:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fD;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 182
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->w:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->u:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    sub-long/2addr v3, v1

    .line 183
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 184
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 185
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 189
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->w:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->w:J

    .line 190
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->p:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v2, :cond_1

    .line 191
    invoke-interface {v2, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 188
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 186
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 193
    :cond_4
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/fD;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 233
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fI$c;
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->i()V

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fD;->b([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fI$c;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->q:Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$c;-><init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fI$c;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 28
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->q:Lcom/google/vr/sdk/widgets/video/deps/fy;

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->x:J

    .line 30
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->w:J

    const/4 v3, 0x1

    .line 31
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fD;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 35
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_8

    const/16 v5, 0x12b

    if-le v0, v5, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 48
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->m:Lcom/google/vr/sdk/widgets/video/deps/gC;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/gC;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->j()V

    .line 50
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fI$d;

    invoke-direct {v0, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/fI$d;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    throw v0

    :cond_2
    :goto_0
    if-ne v0, v4, :cond_3

    .line 51
    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    :cond_3
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->u:J

    .line 52
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 53
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 54
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    goto :goto_1

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 56
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->u:J

    sub-long v4, v0, v4

    .line 57
    :cond_5
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    goto :goto_1

    .line 59
    :cond_6
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    .line 60
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->t:Z

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->p:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_7

    .line 67
    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 68
    :cond_7
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    return-wide v0

    :catch_0
    move-exception v0

    .line 63
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->j()V

    .line 64
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fI$c;

    invoke-direct {v1, v0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fI$c;-><init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V

    throw v1

    .line 41
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 42
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->j()V

    .line 43
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fI$e;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/fI$e;-><init>(ILjava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    const/16 p1, 0x1a0

    if-ne v0, p1, :cond_9

    .line 45
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fw;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fw;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fI$e;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    :cond_9
    throw v2

    :catch_1
    move-exception v1

    .line 38
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->j()V

    .line 39
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fI$c;

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_3
    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fI$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V

    throw v2

    :catch_2
    move-exception v1

    .line 34
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fI$c;

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_4
    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fI$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V

    throw v2
.end method

.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fI$c;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->h()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fD;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 78
    :try_start_2
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fI$c;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->q:Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/fI$c;-><init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;

    .line 80
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->j()V

    .line 81
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->t:Z

    if-eqz v1, :cond_1

    .line 82
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->t:Z

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->p:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 85
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->s:Ljava/io/InputStream;

    .line 86
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fD;->j()V

    .line 87
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->t:Z

    if-eqz v1, :cond_2

    .line 88
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->t:Z

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->p:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->o:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->o:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->o:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->a()V

    return-void
.end method

.method protected final e()Ljava/net/HttpURLConnection;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->r:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected final f()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->w:J

    return-wide v0
.end method

.method protected final g()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->x:J

    return-wide v0
.end method

.method protected final h()J
    .locals 4

    .line 95
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->v:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fD;->x:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method
