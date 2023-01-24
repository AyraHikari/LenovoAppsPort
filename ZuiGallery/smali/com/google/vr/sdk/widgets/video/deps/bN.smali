.class public final Lcom/google/vr/sdk/widgets/video/deps/bN;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bN$c;,
        Lcom/google/vr/sdk/widgets/video/deps/bN$b;,
        Lcom/google/vr/sdk/widgets/video/deps/bN$a;
    }
.end annotation


# static fields
.field private static final A:J

.field private static final B:J

.field private static final C:I = 0x24b8

.field private static final D:I = 0x5

.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0xf

.field public static final k:I = 0x11

.field public static final l:I = 0x81

.field public static final m:I = 0x8a

.field public static final n:I = 0x82

.field public static final o:I = 0x87

.field public static final p:I = 0x2

.field public static final q:I = 0x1b

.field public static final r:I = 0x24

.field public static final s:I = 0x15

.field public static final t:I = 0x86

.field public static final u:I = 0x59

.field private static final v:I = 0xbc

.field private static final w:I = 0x47

.field private static final x:I = 0x0

.field private static final y:I = 0x2000

.field private static final z:J


# instance fields
.field private final E:I

.field private final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gJ;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final H:Landroid/util/SparseIntArray;

.field private final I:Lcom/google/vr/sdk/widgets/video/deps/bO$c;

.field private final J:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/bO;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Landroid/util/SparseBooleanArray;

.field private L:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private M:I

.field private N:Z

.field private O:Lcom/google/vr/sdk/widgets/video/deps/bO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bN$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bN$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    const-string v0, "AC-3"

    .line 125
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->z:J

    const-string v0, "EAC3"

    .line 126
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->A:J

    const-string v0, "HEVC"

    .line 127
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->B:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bN;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bN;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;-><init>(J)V

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bw;

    invoke-direct {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bw;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bN;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/bO$c;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/bO$c;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/bO$c;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->I:Lcom/google/vr/sdk/widgets/video/deps/bO$c;

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->E:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->F:Ljava/util/List;

    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->F:Ljava/util/List;

    .line 14
    :goto_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 p2, 0x24b8

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 15
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->K:Landroid/util/SparseBooleanArray;

    .line 16
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->J:Landroid/util/SparseArray;

    .line 17
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->H:Landroid/util/SparseIntArray;

    .line 18
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bN;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bN;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->M:I

    return p1
.end method

.method static synthetic a()J
    .locals 2

    .line 121
    sget-wide v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->z:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseArray;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->J:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bN;Lcom/google/vr/sdk/widgets/video/deps/bO;)Lcom/google/vr/sdk/widgets/video/deps/bO;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->O:Lcom/google/vr/sdk/widgets/video/deps/bO;

    return-object p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bN;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->N:Z

    return p1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/bN;)I
    .locals 2

    .line 109
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->M:I

    return v0
.end method

.method static synthetic b()J
    .locals 2

    .line 122
    sget-wide v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->A:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->E:I

    return p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/bN;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->M:I

    return p0
.end method

.method static synthetic d()J
    .locals 2

    .line 123
    sget-wide v0, Lcom/google/vr/sdk/widgets/video/deps/bN;->B:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/bN;)Ljava/util/List;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->F:Ljava/util/List;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->K:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 98
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->J:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->I:Lcom/google/vr/sdk/widgets/video/deps/bO$c;

    .line 100
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/bO$c;->a()Landroid/util/SparseArray;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 103
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->J:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/bO;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->J:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bK;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bN$b;

    invoke-direct {v3, p0}, Lcom/google/vr/sdk/widgets/video/deps/bN$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bN;)V

    invoke-direct {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/bK;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bJ;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->O:Lcom/google/vr/sdk/widgets/video/deps/bO;

    return-void
.end method

.method static synthetic f(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->O:Lcom/google/vr/sdk/widgets/video/deps/bO;

    return-object p0
.end method

.method static synthetic g(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/bO$c;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->I:Lcom/google/vr/sdk/widgets/video/deps/bO$c;

    return-object p0
.end method

.method static synthetic h(Lcom/google/vr/sdk/widgets/video/deps/bN;)Lcom/google/vr/sdk/widgets/video/deps/au;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->L:Lcom/google/vr/sdk/widgets/video/deps/au;

    return-object p0
.end method

.method static synthetic i(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->K:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic j(Lcom/google/vr/sdk/widgets/video/deps/bN;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->N:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    rsub-int v0, v0, 0x24b8

    const/16 v1, 0xbc

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v3

    invoke-static {p2, v3, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    rsub-int v3, v0, 0x24b8

    .line 52
    invoke-interface {p1, p2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->a([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return v4

    .line 55
    :cond_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 59
    aget-byte v3, p2, v0

    const/16 v4, 0x47

    if-eq v3, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_4
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    add-int/2addr v0, v1

    if-le v0, p1, :cond_5

    return v2

    .line 65
    :cond_5
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p2

    const/high16 v1, 0x800000

    and-int/2addr v1, p2

    if-eqz v1, :cond_6

    .line 67
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v2

    :cond_6
    const/high16 v1, 0x400000

    and-int/2addr v1, p2

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    const v4, 0x1fff00

    and-int/2addr v4, p2

    shr-int/lit8 v4, v4, 0x8

    and-int/lit8 v5, p2, 0x20

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    and-int/lit8 v6, p2, 0x10

    if-eqz v6, :cond_9

    move v6, v3

    goto :goto_4

    :cond_9
    move v6, v2

    .line 74
    :goto_4
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->E:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    and-int/lit8 p2, p2, 0xf

    .line 76
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->H:Landroid/util/SparseIntArray;

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v7, v4, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 77
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4, p2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, p2, :cond_a

    if-eqz v6, :cond_b

    .line 80
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v2

    :cond_a
    add-int/2addr v7, v3

    and-int/lit8 v7, v7, 0xf

    if-eq p2, v7, :cond_b

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    if-eqz v5, :cond_c

    .line 85
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    .line 86
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v5, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_c
    if-eqz v6, :cond_e

    .line 88
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->J:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/bO;

    if-eqz p2, :cond_e

    if-eqz v3, :cond_d

    .line 91
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO;->a()V

    .line 92
    :cond_d
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 93
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {p2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/bO;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Z)V

    .line 94
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 95
    :cond_e
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v2
.end method

.method public a(JJ)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->F:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 37
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->F:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a()V

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->H:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 41
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bN;->e()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 3

    .line 32
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->L:Lcom/google/vr/sdk/widgets/video/deps/au;

    .line 33
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bN;->G:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 21
    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    move v2, v1

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 25
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 27
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method
