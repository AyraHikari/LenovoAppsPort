.class final Lcom/google/vr/sdk/widgets/video/deps/ez$a;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final A:[I

.field private static final B:[I

.field private static final C:[Z

.field private static final D:[I

.field private static final E:[I

.field private static final F:[I

.field private static final G:[I

.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final d:I = 0x63

.field private static final e:I = 0x4a

.field private static final f:I = 0xd1

.field private static final g:I = 0x4

.field private static final h:I = 0xf

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x0

.field private static final r:I = 0x3

.field private static final s:I = 0x1

.field private static final t:I = 0x0

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x3

.field private static final x:I = 0x4

.field private static final y:I = 0x1

.field private static final z:[I


# instance fields
.field private final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Landroid/text/SpannableStringBuilder;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(IIII)I

    move-result v2

    sput v2, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a:I

    .line 186
    invoke-static {v1, v1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(IIII)I

    move-result v2

    sput v2, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b:I

    const/4 v2, 0x3

    .line 187
    invoke-static {v1, v1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(IIII)I

    move-result v3

    sput v3, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->c:I

    const/4 v4, 0x7

    new-array v5, v4, [I

    .line 188
    fill-array-data v5, :array_0

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->z:[I

    new-array v5, v4, [I

    .line 189
    fill-array-data v5, :array_1

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->A:[I

    new-array v5, v4, [I

    .line 190
    fill-array-data v5, :array_2

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->B:[I

    new-array v5, v4, [Z

    .line 191
    fill-array-data v5, :array_3

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->C:[Z

    new-array v5, v4, [I

    .line 192
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b:I

    aput v6, v5, v1

    const/4 v7, 0x1

    aput v3, v5, v7

    aput v6, v5, v0

    aput v6, v5, v2

    const/4 v8, 0x4

    aput v3, v5, v8

    const/4 v9, 0x5

    aput v6, v5, v9

    const/4 v10, 0x6

    aput v6, v5, v10

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->D:[I

    new-array v5, v4, [I

    .line 193
    fill-array-data v5, :array_4

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->E:[I

    new-array v5, v4, [I

    .line 194
    fill-array-data v5, :array_5

    sput-object v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->F:[I

    new-array v4, v4, [I

    aput v6, v4, v1

    aput v6, v4, v7

    aput v6, v4, v0

    aput v6, v4, v2

    aput v6, v4, v8

    aput v3, v4, v9

    aput v3, v4, v10

    .line 195
    sput-object v4, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->G:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b()V

    return-void
.end method

.method public static a(IIII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 168
    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(III)I

    .line 169
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(III)I

    .line 170
    invoke-static {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(III)I

    .line 171
    invoke-static {p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(III)I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    :cond_1
    const/16 p3, 0x7f

    goto :goto_1

    :cond_2
    :goto_0
    move p3, v2

    :goto_1
    if-le p0, v1, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    if-le p1, v1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v0

    :goto_3
    if-le p2, v1, :cond_5

    move v0, v2

    .line 184
    :cond_5
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static b(III)I
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(C)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 105
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->g()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 107
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 108
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    .line 109
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    if-eq p1, v0, :cond_1

    .line 110
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    .line 111
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    if-eq p1, v0, :cond_2

    .line 112
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    .line 113
    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    if-eq p1, v0, :cond_3

    .line 114
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    .line 115
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->R:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Q:I

    if-ge p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_7

    .line 117
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_7
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 96
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ac:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0xa

    .line 97
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(C)V

    .line 98
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ac:I

    return-void
.end method

.method public a(III)V
    .locals 5

    .line 79
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 80
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Z:I

    if-eq p3, p1, :cond_0

    .line 81
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Z:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    .line 82
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 83
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 84
    :cond_0
    sget p3, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a:I

    if-eq p1, p3, :cond_1

    .line 85
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    .line 86
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Z:I

    .line 87
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    if-eq p1, v1, :cond_2

    .line 88
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ab:I

    if-eq p1, p2, :cond_2

    .line 89
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ab:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    .line 90
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 91
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 92
    :cond_2
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b:I

    if-eq p2, p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    .line 94
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ab:I

    :cond_3
    return-void
.end method

.method public a(IIIZZII)V
    .locals 0

    .line 62
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-nez p4, :cond_1

    .line 64
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    iget-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    .line 65
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    .line 66
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 67
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    .line 70
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    if-eq p1, p3, :cond_2

    if-nez p5, :cond_3

    .line 72
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    iget-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    .line 73
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 74
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    .line 77
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    :cond_3
    :goto_1
    return-void
.end method

.method public a(IIZIIII)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->V:I

    .line 60
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->S:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->K:Z

    return-void
.end method

.method public a(ZZZIZIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move/from16 v2, p11

    move/from16 v3, p12

    const/4 v4, 0x1

    .line 36
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->J:Z

    move v5, p1

    .line 37
    iput-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->K:Z

    .line 38
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->R:Z

    move v5, p4

    .line 39
    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->L:I

    move/from16 v5, p5

    .line 40
    iput-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->M:Z

    move/from16 v5, p6

    .line 41
    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->N:I

    move/from16 v5, p7

    .line 42
    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->O:I

    move/from16 v5, p10

    .line 43
    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->P:I

    .line 44
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Q:I

    add-int/lit8 v6, p8, 0x1

    if-eq v5, v6, :cond_2

    .line 45
    iput v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Q:I

    :goto_0
    if-eqz v1, :cond_0

    .line 46
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Q:I

    if-ge v5, v6, :cond_1

    :cond_0
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    .line 47
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2

    .line 48
    :cond_1
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 49
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->T:I

    if-eq v1, v2, :cond_3

    .line 50
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->T:I

    add-int/lit8 v1, v2, -0x1

    .line 52
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->D:[I

    aget v2, v2, v1

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->c:I

    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->C:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->A:[I

    aget v8, v8, v1

    sget-object v9, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->B:[I

    aget v9, v9, v1

    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->z:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v2

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(IIZIIII)V

    :cond_3
    if-eqz v3, :cond_4

    .line 53
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->U:I

    if-eq v1, v3, :cond_4

    .line 54
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->U:I

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 56
    sget-object v7, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->F:[I

    aget v7, v7, v1

    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->E:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(IIIZZII)V

    .line 57
    sget v2, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a:I

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->G:[I

    aget v1, v3, v1

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a(III)V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->c()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->J:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->K:Z

    const/4 v1, 0x4

    .line 10
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->L:I

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->M:Z

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->N:I

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->O:I

    .line 14
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->P:I

    const/16 v1, 0xf

    .line 15
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Q:I

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->R:Z

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->S:I

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->T:I

    .line 19
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->U:I

    .line 20
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->V:I

    .line 21
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a:I

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Z:I

    .line 22
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ab:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    .line 27
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    .line 28
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    .line 29
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ac:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->J:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->K:Z

    return v0
.end method

.method public f()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public g()Landroid/text/SpannableString;
    .locals 6

    .line 120
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->I:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 123
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 124
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->W:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 125
    :cond_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    if-eq v2, v4, :cond_1

    .line 126
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->X:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 127
    :cond_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    if-eq v2, v4, :cond_2

    .line 128
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Z:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->Y:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 129
    :cond_2
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    if-eq v2, v4, :cond_3

    .line 130
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->ab:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->aa:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 131
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public h()Lcom/google/vr/sdk/widgets/video/deps/ey;
    .locals 15

    .line 132
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->H:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 137
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->g()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->S:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->S:I

    const/16 v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected justification value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 143
    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 141
    :cond_5
    :goto_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v6, v1

    .line 148
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->M:Z

    if-eqz v1, :cond_6

    .line 149
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->O:I

    int-to-float v1, v1

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v1, v7

    .line 150
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->N:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_3

    .line 151
    :cond_6
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->O:I

    int-to-float v1, v1

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v1, v7

    .line 152
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->N:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_3
    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v1, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float v10, v1, v9

    mul-float/2addr v8, v7

    add-float v7, v8, v9

    .line 155
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->P:I

    rem-int/lit8 v8, v1, 0x3

    if-nez v8, :cond_7

    move v8, v0

    goto :goto_4

    .line 157
    :cond_7
    rem-int/2addr v1, v4

    if-ne v1, v5, :cond_8

    move v8, v5

    goto :goto_4

    :cond_8
    move v8, v3

    .line 160
    :goto_4
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->P:I

    div-int/lit8 v9, v1, 0x3

    if-nez v9, :cond_9

    move v9, v0

    goto :goto_5

    .line 162
    :cond_9
    div-int/2addr v1, v4

    if-ne v1, v5, :cond_a

    move v9, v5

    goto :goto_5

    :cond_a
    move v9, v3

    .line 165
    :goto_5
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->V:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->b:I

    if-eq v1, v3, :cond_b

    move v0, v5

    .line 166
    :cond_b
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/ey;

    const/4 v5, 0x0

    const/4 v11, 0x1

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->V:I

    iget v14, p0, Lcom/google/vr/sdk/widgets/video/deps/ez$a;->L:I

    move-object v1, v13

    move-object v3, v6

    move v4, v7

    move v6, v8

    move v7, v10

    move v8, v9

    move v9, v11

    move v10, v0

    move v11, v12

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ey;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v13
.end method
