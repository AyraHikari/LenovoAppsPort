.class public final Lcom/google/vr/sdk/widgets/video/deps/gd;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fX;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fX;",
        "Ljava/util/Comparator<",
        "Lcom/google/vr/sdk/widgets/video/deps/fY;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/fY;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->a:J

    .line 3
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->b:Ljava/util/TreeSet;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V
    .locals 4

    .line 22
    :catch_0
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/fY;

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/fS$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/fY;Lcom/google/vr/sdk/widgets/video/deps/fY;)I
    .locals 4

    .line 18
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->f:J

    iget-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fY;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)I

    move-result p1

    return p1

    .line 21
    :cond_0
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->f:J

    iget-wide p1, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->f:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->c:J

    iget-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->c:J

    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gd;->b(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    .line 16
    invoke-virtual {p0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fS;Ljava/lang/String;JJ)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    .locals 2

    .line 12
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->c:J

    iget-wide p1, p2, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gd;->c:J

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fY;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/fY;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;Lcom/google/vr/sdk/widgets/video/deps/fY;)I

    move-result p1

    return p1
.end method
