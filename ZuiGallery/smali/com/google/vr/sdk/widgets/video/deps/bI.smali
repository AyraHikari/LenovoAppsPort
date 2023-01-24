.class public final Lcom/google/vr/sdk/widgets/video/deps/bI;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/as;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bI$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/vr/sdk/widgets/video/deps/av;

.field public static final e:I = 0xbd

.field public static final f:I = 0xc0

.field public static final g:I = 0xe0

.field public static final h:I = 0xe0

.field public static final i:I = 0xf0

.field private static final j:I = 0x1ba

.field private static final k:I = 0x1bb

.field private static final l:I = 0x1

.field private static final m:I = 0x1b9

.field private static final n:I = 0x100

.field private static final o:J = 0x100000L


# instance fields
.field private final p:Lcom/google/vr/sdk/widgets/video/deps/gJ;

.field private final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/bI$a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/google/vr/sdk/widgets/video/deps/au;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bI$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bI$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bI;->d:Lcom/google/vr/sdk/widgets/video/deps/av;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gJ;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bI;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gJ;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gJ;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->p:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->q:Landroid/util/SparseArray;

    return-void
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

    .line 35
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    move-result p2

    const/4 v1, -0x1

    if-nez p2, :cond_0

    return v1

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 38
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p2

    const/16 v3, 0x1b9

    if-ne p2, v3, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x1ba

    if-ne p2, v1, :cond_2

    .line 42
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v1, 0xa

    invoke-interface {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 43
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 44
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 45
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    return v0

    :cond_2
    const/16 v1, 0x1bb

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-ne p2, v1, :cond_3

    .line 48
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, p2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 49
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 50
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result p2

    add-int/2addr p2, v4

    .line 51
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    return v0

    :cond_3
    and-int/lit16 v1, p2, -0x100

    shr-int/lit8 v1, v1, 0x8

    if-eq v1, v2, :cond_4

    .line 54
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    return v0

    :cond_4
    and-int/lit16 p2, p2, 0xff

    .line 57
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->q:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/bI$a;

    .line 58
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->s:Z

    if-nez v5, :cond_b

    if-nez v1, :cond_8

    const/4 v5, 0x0

    .line 61
    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->t:Z

    if-nez v6, :cond_5

    const/16 v6, 0xbd

    if-ne p2, v6, :cond_5

    .line 62
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/bt;

    invoke-direct {v5}, Lcom/google/vr/sdk/widgets/video/deps/bt;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->t:Z

    goto :goto_0

    .line 64
    :cond_5
    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->t:Z

    if-nez v6, :cond_6

    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_6

    .line 65
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/bF;

    invoke-direct {v5}, Lcom/google/vr/sdk/widgets/video/deps/bF;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->t:Z

    goto :goto_0

    .line 67
    :cond_6
    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->u:Z

    if-nez v6, :cond_7

    and-int/lit16 v6, p2, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_7

    .line 68
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/bA;

    invoke-direct {v5}, Lcom/google/vr/sdk/widgets/video/deps/bA;-><init>()V

    .line 69
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->u:Z

    :cond_7
    :goto_0
    if-eqz v5, :cond_8

    .line 71
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bO$d;

    const/16 v6, 0x100

    invoke-direct {v1, p2, v6}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;-><init>(II)V

    .line 72
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v5, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    .line 73
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bI$a;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->p:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-direct {v1, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/bI$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;Lcom/google/vr/sdk/widgets/video/deps/gJ;)V

    .line 74
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->q:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    :cond_8
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->t:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->u:Z

    if-nez p2, :cond_a

    :cond_9
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    cmp-long p2, v5, v7

    if-lez p2, :cond_b

    .line 76
    :cond_a
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->s:Z

    .line 77
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/au;->a()V

    .line 78
    :cond_b
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, p2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 79
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 80
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result p2

    add-int/2addr p2, v4

    if-nez v1, :cond_c

    .line 83
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    goto :goto_1

    .line 84
    :cond_c
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 85
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-interface {p1, v2, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BII)V

    .line 86
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 87
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 88
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->r:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    :goto_1
    return v0
.end method

.method public a(JJ)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->p:Lcom/google/vr/sdk/widgets/video/deps/gJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d()V

    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->q:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->q:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/bI$a;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bI$a;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;)V
    .locals 3

    .line 26
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bI;->v:Lcom/google/vr/sdk/widgets/video/deps/au;

    .line 27
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/az$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/az$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 9
    invoke-interface {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 10
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 12
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 14
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 16
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 18
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 20
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 22
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 23
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->c(I)V

    .line 24
    invoke-interface {p1, v1, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 25
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public c()V
    .locals 0

    return-void
.end method
