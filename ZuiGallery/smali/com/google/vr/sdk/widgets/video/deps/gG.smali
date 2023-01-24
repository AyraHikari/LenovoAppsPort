.class public Lcom/google/vr/sdk/widgets/video/deps/gG;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gG$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/vr/sdk/widgets/video/deps/gG$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/vr/sdk/widgets/video/deps/gG$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:I = -0x1

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x5


# instance fields
.field private final g:I

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/gG$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[Lcom/google/vr/sdk/widgets/video/deps/gG$a;

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gG$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gG$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gG;->a:Ljava/util/Comparator;

    .line 46
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gG$2;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gG$2;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gG;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->g:I

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->i:[Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->j:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/gG;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->j:I

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->j:I

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/gG;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->j:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gG;->b()V

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    .line 32
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->b:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 34
    iget p1, v2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->c:F

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->c:F

    :goto_1
    return p1
.end method

.method public a(IF)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gG;->a()V

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->m:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->i:[Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->m:I

    aget-object v0, v1, v0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gG$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gG$1;)V

    .line 10
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->k:I

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->a:I

    .line 11
    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->b:I

    .line 12
    iput p2, v0, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->c:F

    .line 13
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    .line 15
    :cond_1
    :goto_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->g:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    .line 17
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    .line 18
    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->b:I

    if-gt v1, p1, :cond_2

    .line 19
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->b:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->m:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->i:[Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->m:I

    aput-object p2, v0, p1

    goto :goto_1

    .line 23
    :cond_2
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->b:I

    sub-int/2addr v0, p1

    iput v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->b:I

    .line 24
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gG;->l:I

    goto :goto_1

    :cond_3
    return-void
.end method
