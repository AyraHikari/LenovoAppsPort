.class abstract Lcom/google/vr/sdk/widgets/video/deps/eA;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/eq;


# static fields
.field private static final a:I = 0xa

.field private static final b:I = 0x2


# instance fields
.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/et;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/eu;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/et;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/vr/sdk/widgets/video/deps/et;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->c:Ljava/util/LinkedList;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/et;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->d:Ljava/util/LinkedList;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->d:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/eB;

    invoke-direct {v2, p0}, Lcom/google/vr/sdk/widgets/video/deps/eB;-><init>(Lcom/google/vr/sdk/widgets/video/deps/eA;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/et;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/et;->a()V

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->g:J

    return-void
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/et;)V
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/eu;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a()V

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eA;->b(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->i()Lcom/google/vr/sdk/widgets/video/deps/et;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/et;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 19
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 20
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->f:Lcom/google/vr/sdk/widgets/video/deps/et;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 21
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/et;->c_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eA;->c(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    goto :goto_2

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->f:Lcom/google/vr/sdk/widgets/video/deps/et;

    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->h()Lcom/google/vr/sdk/widgets/video/deps/eu;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->g:J

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->c(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->f:Lcom/google/vr/sdk/widgets/video/deps/et;

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->c(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->f:Lcom/google/vr/sdk/widgets/video/deps/et;

    :cond_1
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()Lcom/google/vr/sdk/widgets/video/deps/ep;
.end method

.method public h()Lcom/google/vr/sdk/widgets/video/deps/eu;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    .line 29
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/et;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/et;->f:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->g:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/et;

    .line 31
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/et;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eu;

    const/4 v2, 0x4

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b(I)V

    .line 34
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->c(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    return-object v1

    .line 36
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->a(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->g()Lcom/google/vr/sdk/widgets/video/deps/ep;

    move-result-object v6

    .line 39
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/et;->c_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 41
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/et;->f:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(JLcom/google/vr/sdk/widgets/video/deps/ep;J)V

    .line 42
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->c(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    return-object v1

    .line 44
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eA;->c(Lcom/google/vr/sdk/widgets/video/deps/et;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public i()Lcom/google/vr/sdk/widgets/video/deps/et;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->f:Lcom/google/vr/sdk/widgets/video/deps/et;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/et;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eA;->f:Lcom/google/vr/sdk/widgets/video/deps/et;

    return-object v0
.end method
