.class public final Lcom/google/vr/sdk/widgets/video/deps/ex;
.super Lcom/google/vr/sdk/widgets/video/deps/eA;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ex$a;
    }
.end annotation


# static fields
.field private static final A:[I

.field private static final B:[I

.field private static final C:[I

.field private static final D:[I

.field private static final a:I = 0x4

.field private static final b:I = 0x2

.field private static final c:I = 0x1

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x4

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:I = 0x4

.field private static final o:B = -0x4t

.field private static final p:B = 0x20t

.field private static final q:B = 0x25t

.field private static final r:B = 0x26t

.field private static final s:B = 0x27t

.field private static final t:B = 0x29t

.field private static final u:B = 0x2ft

.field private static final v:B = 0x2ct

.field private static final w:B = 0x2dt

.field private static final x:B = 0x2et

.field private static final y:B = 0x24t

.field private static final z:B = 0x21t


# instance fields
.field private final E:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final F:I

.field private final G:I

.field private final H:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/ex$a;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:I

.field private N:Z

.field private O:B

.field private P:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 175
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/ex;->k:[I

    new-array v0, v0, [I

    .line 176
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->l:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 177
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->m:[I

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 178
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->A:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 179
    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->B:[I

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 180
    fill-array-data v1, :array_5

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/ex;->C:[I

    new-array v0, v0, [I

    .line 181
    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->D:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->E:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->H:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;-><init>(II)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    const-string v0, "application/x-mp4-cea-608"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->F:I

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->G:I

    goto :goto_1

    .line 7
    :cond_1
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->G:I

    .line 10
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->k()V

    return-void
.end method

.method private a(B)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Z)V

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 86
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;I)V

    .line 87
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;I)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/ex;->m:[I

    aget p1, v3, p1

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;I)V

    :goto_1
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 146
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    if-ne v0, p1, :cond_0

    return-void

    .line 149
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    .line 150
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->k()V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    :cond_2
    return-void
.end method

.method private a(BB)Z
    .locals 3

    .line 65
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ex;->g(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->N:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->O:B

    if-ne v1, p1, :cond_0

    iget-byte v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->P:B

    if-ne v1, p2, :cond_0

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->N:Z

    return v2

    .line 70
    :cond_0
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->N:Z

    .line 71
    iput-byte p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->O:B

    .line 72
    iput-byte p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->P:B

    .line 73
    :cond_1
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->c(BB)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(B)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->d(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->b(BB)V

    goto :goto_0

    .line 77
    :cond_3
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->e(BB)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    add-int/lit8 p2, p2, -0x20

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->c(I)V

    goto :goto_0

    .line 79
    :cond_4
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->f(BB)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 80
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->b(B)V

    :cond_5
    :goto_0
    return v0
.end method

.method private b(B)V
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x29

    const/4 v2, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 123
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x21

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->j()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    .line 132
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->k()V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->k()V

    goto :goto_0

    :pswitch_2
    if-ne v1, v0, :cond_3

    .line 134
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 135
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->d()V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    if-eq v1, v0, :cond_1

    if-ne v1, v2, :cond_3

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->k()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->b()V

    :cond_3
    :goto_0
    return-void

    :pswitch_4
    const/4 p1, 0x4

    .line 116
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->M:I

    .line 117
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    return-void

    .line 113
    :pswitch_5
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->M:I

    .line 114
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    return-void

    .line 110
    :pswitch_6
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->M:I

    .line 111
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    return-void

    .line 121
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    return-void

    .line 119
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(BB)V
    .locals 5

    .line 90
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->k:[I

    const/4 v1, 0x7

    and-int/2addr p1, v1

    aget p1, v0, p1

    and-int/lit8 v0, p2, 0x20

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->c()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 95
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->M:I

    invoke-direct {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;-><init>(II)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    .line 97
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->H:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(I)V

    :cond_3
    and-int/lit8 p1, p2, 0x1

    if-ne p1, v2, :cond_4

    .line 100
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;)V

    :cond_4
    shr-int/lit8 p1, p2, 0x1

    and-int/lit8 p1, p1, 0xf

    if-gt p1, v1, :cond_6

    if-ne p1, v1, :cond_5

    .line 104
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;)V

    .line 105
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;)V

    goto :goto_1

    .line 106
    :cond_5
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/ex;->m:[I

    aget p1, v1, p1

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(Landroid/text/style/CharacterStyle;)V

    goto :goto_1

    .line 107
    :cond_6
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->l:[I

    and-int/2addr p1, v1

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->b(I)V

    :goto_1
    return-void
.end method

.method private static c(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 p0, p0, -0x20

    .line 159
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->A:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static c(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(B)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    .line 161
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->B:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static d(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    .line 163
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->C:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static e(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/16 p0, 0x21

    if-lt p1, p0, :cond_0

    const/16 p0, 0x23

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    .line 165
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ex;->D:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static f(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->H:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->H:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->f()Lcom/google/vr/sdk/widgets/video/deps/em;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private k()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->M:I

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(II)V

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->H:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Cea608Decoder"

    return-object v0
.end method

.method public bridge synthetic a(J)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eA;->a(J)V

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/et;)V
    .locals 9

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->E:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    move v1, p1

    move v2, v1

    .line 31
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->E:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->F:I

    if-lt v3, v4, :cond_b

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1

    const/4 v4, -0x4

    goto :goto_1

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->E:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    int-to-byte v4, v4

    .line 34
    :goto_1
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->E:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 35
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->E:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    and-int/lit8 v7, v4, 0x6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->G:I

    if-ne v7, v0, :cond_3

    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_0

    :cond_3
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->G:I

    if-ne v7, v3, :cond_4

    and-int/lit8 v3, v4, 0x1

    if-eq v3, v0, :cond_4

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    and-int/lit16 v1, v5, 0xf7

    const/16 v3, 0x11

    if-ne v1, v3, :cond_6

    and-int/lit16 v1, v6, 0xf0

    const/16 v3, 0x30

    if-ne v1, v3, :cond_6

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ex;->d(B)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(C)V

    goto :goto_2

    :cond_6
    and-int/lit16 v1, v5, 0xf6

    const/16 v3, 0x12

    if-ne v1, v3, :cond_8

    and-int/lit16 v1, v6, 0xe0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    .line 47
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->b()V

    and-int/lit8 v1, v5, 0x1

    if-nez v1, :cond_7

    .line 49
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ex;->e(B)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(C)V

    goto :goto_2

    .line 50
    :cond_7
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ex;->f(B)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(C)V

    goto :goto_2

    :cond_8
    and-int/lit16 v1, v5, 0xe0

    if-nez v1, :cond_9

    .line 53
    invoke-direct {p0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(BB)Z

    move-result v2

    goto :goto_2

    .line 55
    :cond_9
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/ex;->c(B)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(C)V

    and-int/lit16 v1, v6, 0xe0

    if-eqz v1, :cond_a

    .line 57
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->I:Lcom/google/vr/sdk/widgets/video/deps/ex$a;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ex;->c(B)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ex$a;->a(C)V

    :cond_a
    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_e

    if-nez v2, :cond_c

    .line 61
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->N:Z

    .line 62
    :cond_c
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->L:I

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 63
    :cond_d
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->j()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    :cond_e
    return-void
.end method

.method public bridge synthetic b(Lcom/google/vr/sdk/widgets/video/deps/et;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 172
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eA;->b(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 14
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->d()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->K:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->a(I)V

    .line 18
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ex;->k()V

    const/4 v1, 0x4

    .line 19
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->M:I

    .line 20
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->N:Z

    .line 21
    iput-byte v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->O:B

    .line 22
    iput-byte v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->P:B

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected f()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->K:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected g()Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->K:Ljava/util/List;

    .line 27
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eC;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ex;->J:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eC;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/vr/sdk/widgets/video/deps/eu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 171
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->h()Lcom/google/vr/sdk/widgets/video/deps/eu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/google/vr/sdk/widgets/video/deps/et;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 173
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->i()Lcom/google/vr/sdk/widgets/video/deps/et;

    move-result-object v0

    return-object v0
.end method
