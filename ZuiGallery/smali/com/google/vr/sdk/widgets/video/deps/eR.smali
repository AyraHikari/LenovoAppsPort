.class public final Lcom/google/vr/sdk/widgets/video/deps/eR;
.super Lcom/google/vr/sdk/widgets/video/deps/en;
.source "Tx3gDecoder.java"


# static fields
.field private static final a:C = '\ufeff'

.field private static final b:C = '\ufffe'

.field private static final c:I

.field private static final d:I

.field private static final e:Ljava/lang/String; = "Serif"

.field private static final f:I = 0x8

.field private static final g:I = 0x2

.field private static final h:I = 0x2

.field private static final i:I = 0xc

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x4

.field private static final m:I = 0xff0000

.field private static final n:I = 0x0

.field private static final o:I = 0x0

.field private static final p:I = -0x1

.field private static final q:Ljava/lang/String; = "sans-serif"

.field private static final r:F = 0.85f


# instance fields
.field private final s:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private t:Z

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:F

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "styl"

    .line 99
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/eR;->c:I

    const-string/jumbo v0, "tbox"

    .line 100
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/eR;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->g()C

    move-result v1

    const v2, 0xfeff

    if-eq v1, v2, :cond_2

    const v2, 0xfffe

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "UTF-16"

    .line 61
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "UTF-8"

    .line 62
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 79
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 80
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 82
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 85
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 87
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 94
    new-instance p2, Landroid/text/style/TypefaceSpan;

    invoke-direct {p2, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    .line 65
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v8

    const/4 v2, 0x2

    .line 66
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 67
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v3

    .line 68
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 69
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p1

    .line 70
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->u:I

    const/4 v7, 0x0

    move-object v2, p2

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 71
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->v:I

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eR;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const v0, 0x3f59999a    # 0.85f

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x35

    if-ne v3, v5, :cond_4

    .line 7
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v3, 0x18

    .line 8
    aget-byte v5, p1, v3

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->u:I

    const/16 v5, 0x1a

    .line 9
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->v:I

    .line 10
    new-instance v3, Ljava/lang/String;

    array-length v5, p1

    const/16 v6, 0x2b

    sub-int/2addr v5, v6

    invoke-direct {v3, p1, v6, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "Serif"

    .line 11
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "serif"

    :cond_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->w:Ljava/lang/String;

    const/16 v1, 0x19

    .line 12
    aget-byte v1, p1, v1

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->y:I

    .line 13
    aget-byte v1, p1, v2

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    move v2, v4

    :cond_2
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->t:Z

    if-eqz v2, :cond_3

    const/16 v0, 0xa

    .line 15
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xb

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-float p1, p1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->y:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->x:F

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 17
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->x:F

    goto :goto_0

    .line 19
    :cond_3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->x:F

    goto :goto_0

    .line 21
    :cond_4
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->u:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->v:I

    .line 23
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->w:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->t:Z

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->x:F

    :goto_0
    return-void
.end method

.method private static a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 91
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 27
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 28
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/eS;->a:Lcom/google/vr/sdk/widgets/video/deps/eS;

    return-object p1

    .line 31
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->u:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/high16 v5, 0xff0000

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 33
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->v:I

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/eR;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 34
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->w:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-string v2, "sans-serif"

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 35
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->x:F

    move v3, p1

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p1

    const/16 p3, 0x8

    if-lt p1, p3, :cond_5

    .line 37
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p1

    .line 38
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p3

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v0

    .line 40
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/eR;->c:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Z)V

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    :goto_2
    if-ge v5, v0, :cond_4

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {p0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 46
    :cond_2
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/eR;->d:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->t:Z

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lt v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/eR;->a(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    int-to-float v0, v0

    .line 49
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    .line 50
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(FFF)F

    move-result v3

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eR;->s:Lcom/google/vr/sdk/widgets/video/deps/gA;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    goto :goto_0

    .line 53
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eS;

    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/em;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/eS;-><init>(Lcom/google/vr/sdk/widgets/video/deps/em;)V

    return-object p1
.end method
