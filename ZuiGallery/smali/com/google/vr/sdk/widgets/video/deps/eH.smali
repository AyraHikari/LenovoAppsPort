.class public final Lcom/google/vr/sdk/widgets/video/deps/eH;
.super Lcom/google/vr/sdk/widgets/video/deps/en;
.source "SsaDecoder.java"


# static fields
.field private static final a:Ljava/lang/String; = "SsaDecoder"

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/lang/String; = "Format: "

.field private static final d:Ljava/lang/String; = "Dialogue: "


# instance fields
.field private final e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eH;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eH;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->e:Z

    .line 6
    new-instance v2, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "Format: "

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 8
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/eH;->b(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eH;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->e:Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 8

    .line 75
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/eH;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    const/4 v6, 0x2

    .line 79
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    const/4 v2, 0x3

    .line 80
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 81
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 2

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "[Events]"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/gv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gA;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/gv;",
            ")V"
        }
    .end annotation

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->e:Z

    if-nez v1, :cond_1

    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eH;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Dialogue: "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-direct {p0, v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eH;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/gv;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/gv;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/gv;",
            ")V"
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->f:I

    const-string v1, "SsaDecoder"

    if-nez v0, :cond_1

    const-string p2, "Skipping dialogue line before format: "

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0xa

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->f:I

    const-string v3, ","

    .line 53
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->g:I

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eH;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    const-string v7, "Skipping invalid timing: "

    if-nez v6, :cond_3

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_3
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->h:I

    aget-object v6, v0, v6

    .line 60
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 61
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/eH;->a(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v8, v4

    if-nez v6, :cond_6

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move-wide v8, v4

    .line 65
    :cond_6
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->i:I

    aget-object p1, v0, p1

    const-string v0, "\\{.*?\\}"

    const-string v1, ""

    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\N"

    const-string v1, "\n"

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\n"

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p3, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gv;->a(J)V

    cmp-long p1, v8, v4

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 72
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p3, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/gv;->a(J)V

    :cond_7
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    array-length v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->f:I

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->g:I

    .line 36
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->h:I

    .line 37
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->i:I

    const/4 v1, 0x0

    move v2, v1

    .line 38
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->f:I

    if-ge v2, v3, :cond_7

    .line 39
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x188db

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x36452d

    if-eq v4, v5, :cond_1

    const v5, 0x68ac462

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_1
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_2

    :cond_2
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v0

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    goto :goto_3

    .line 45
    :cond_4
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->i:I

    goto :goto_3

    .line 43
    :cond_5
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->h:I

    goto :goto_3

    .line 41
    :cond_6
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->g:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eH;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eI;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eI;
    .locals 2

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gv;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gv;-><init>()V

    .line 15
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([BI)V

    .line 16
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eH;->e:Z

    if-nez p1, :cond_0

    .line 17
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eH;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 18
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/eH;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/gv;)V

    .line 19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/em;

    .line 20
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gv;->b()[J

    move-result-object p2

    .line 22
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/eI;

    invoke-direct {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eI;-><init>([Lcom/google/vr/sdk/widgets/video/deps/em;[J)V

    return-object p3
.end method
