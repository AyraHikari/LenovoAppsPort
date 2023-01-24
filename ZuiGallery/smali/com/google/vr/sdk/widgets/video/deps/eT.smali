.class final Lcom/google/vr/sdk/widgets/video/deps/eT;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field private static final a:Ljava/lang/String; = "background-color"

.field private static final b:Ljava/lang/String; = "font-family"

.field private static final c:Ljava/lang/String; = "font-weight"

.field private static final d:Ljava/lang/String; = "text-decoration"

.field private static final e:Ljava/lang/String; = "bold"

.field private static final f:Ljava/lang/String; = "underline"

.field private static final g:Ljava/lang/String; = "{"

.field private static final h:Ljava/lang/String; = "}"

.field private static final i:Ljava/lang/String; = "font-style"

.field private static final j:Ljava/lang/String; = "italic"

.field private static final k:Ljava/util/regex/Pattern;


# instance fields
.field private final l:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final m:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 162
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eT;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->m:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)C
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eT;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p0

    int-to-char p0, p0

    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eW;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 148
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/eT;->k:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/eW;->c(Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v0, "\\."

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 153
    aget-object v0, p2, v2

    const/16 v4, 0x23

    .line 154
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 156
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/eW;->b(Ljava/lang/String;)V

    add-int/2addr v4, v3

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->b(Ljava/lang/String;)V

    .line 159
    :goto_0
    array-length v0, p2

    if-le v0, v3, :cond_4

    .line 160
    array-length v0, p2

    invoke-static {p2, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/eW;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 54
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 55
    invoke-static {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eT;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 61
    invoke-static {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eT;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 65
    invoke-static {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ";"

    .line 66
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "}"

    .line 67
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    :goto_0
    const-string p0, "color"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 71
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gq;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a(I)Lcom/google/vr/sdk/widgets/video/deps/eW;

    goto :goto_1

    :cond_4
    const-string p0, "background-color"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 73
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gq;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->b(I)Lcom/google/vr/sdk/widgets/video/deps/eW;

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "text-decoration"

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_6

    const-string/jumbo p0, "underline"

    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 76
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eW;->b(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;

    goto :goto_1

    :cond_6
    const-string p0, "font-family"

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 78
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eW;->d(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eW;

    goto :goto_1

    :cond_7
    const-string p0, "font-weight"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "bold"

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 81
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eW;->c(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;

    goto :goto_1

    :cond_8
    const-string p0, "font-style"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "italic"

    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eW;->d(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;

    :cond_9
    :goto_1
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 26
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 29
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::cue"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 33
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const-string/jumbo v3, "{"

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const-string p0, ""

    return-object p0

    :cond_3
    const-string v0, "("

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 42
    :goto_0
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ")"

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method static b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v1, v0

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 88
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->f(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v2

    .line 109
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v4, "}"

    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 53
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 136
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 139
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    return v0
.end method

.method private static f(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 6

    .line 117
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 118
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 120
    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_1

    .line 122
    aget-byte v0, v2, v0

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 124
    aget-byte v0, v2, v3

    int-to-char v0, v0

    if-ne v0, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->m:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eT;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 8
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 10
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->m:Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eT;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 11
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->m:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 13
    :cond_0
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/eW;

    invoke-direct {v2}, Lcom/google/vr/sdk/widgets/video/deps/eW;-><init>()V

    .line 14
    invoke-direct {p0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/eW;Ljava/lang/String;)V

    move-object v3, v0

    move p1, v1

    :goto_0
    const-string/jumbo v4, "}"

    if-nez p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p1

    .line 19
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->m:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_3

    .line 22
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 23
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->l:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eT;->m:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/eW;Ljava/lang/StringBuilder;)V

    :cond_3
    move p1, v4

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v0, v2

    :cond_5
    :goto_3
    return-object v0
.end method
