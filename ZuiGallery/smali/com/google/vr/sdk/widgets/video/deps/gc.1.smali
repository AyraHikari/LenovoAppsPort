.class public final Lcom/google/vr/sdk/widgets/video/deps/gc;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fS$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gc$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = -0x2

.field private static final c:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/ao;

.field private final g:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/gc$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/gc$a;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ao;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->d:Lcom/google/vr/sdk/widgets/video/deps/fS;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->e:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    .line 5
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3}, Ljava/util/TreeSet;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    .line 6
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gc$a;-><init>(JJ)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->h:Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-interface {p1, p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fS$b;)Ljava/util/NavigableSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/fY;

    .line 13
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gc;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 7

    .line 47
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gc$a;-><init>(JJ)V

    .line 48
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    .line 49
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gc;->a(Lcom/google/vr/sdk/widgets/video/deps/gc$a;Lcom/google/vr/sdk/widgets/video/deps/gc$a;)Z

    move-result v2

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gc;->a(Lcom/google/vr/sdk/widgets/video/deps/gc$a;Lcom/google/vr/sdk/widgets/video/deps/gc$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 54
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iput-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    .line 55
    iget v0, v1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    iput v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    goto :goto_0

    .line 56
    :cond_0
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    .line 57
    iget p1, v1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    .line 58
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    .line 61
    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iput-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    .line 62
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ao;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v1, v2

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    move v0, v2

    goto :goto_1

    .line 65
    :cond_2
    iput v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    goto :goto_2

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_4

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 68
    :cond_4
    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gc$a;Lcom/google/vr/sdk/widgets/video/deps/gc$a;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 71
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iget-wide p1, p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->a:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized a(J)I
    .locals 7

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->h:Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    iput-wide p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->a:J

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->h:Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 21
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    cmp-long p1, p1, v2

    if-gtz p1, :cond_2

    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    .line 24
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->a:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    aget-wide v3, p2, p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->b:[I

    aget p2, p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v5, p2

    add-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    const/4 p1, -0x2

    .line 25
    monitor-exit p0

    return p1

    .line 26
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->d:[J

    aget-wide v1, p2, p1

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    aget-wide v5, p2, p1

    sub-long/2addr v3, v5

    mul-long/2addr v1, v3

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->b:[I

    aget p2, p2, p1

    int-to-long v3, p2

    div-long/2addr v1, v3

    .line 27
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->e:[J

    aget-wide p1, p2, p1

    add-long/2addr p1, v1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int p1, p1

    monitor-exit p0

    return p1

    .line 22
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->d:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fS$b;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 0

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gc;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized b(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 6

    monitor-enter p0

    .line 30
    :try_start_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    iget-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    iget-wide v4, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    add-long/2addr v2, v4

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gc$a;-><init>(JJ)V

    .line 31
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    if-nez p2, :cond_0

    const-string p1, "CachedRegionTracker"

    const-string p2, "Removed a span we were not aware of"

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 35
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->a:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 37
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    iget-wide v1, p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->a:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->a:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gc$a;-><init>(JJ)V

    .line 38
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->f:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    .line 39
    :cond_1
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 42
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;

    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gc$a;-><init>(JJ)V

    .line 43
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gc$a;->c:I

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gc;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
