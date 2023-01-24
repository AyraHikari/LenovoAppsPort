.class final Lcom/google/vr/sdk/widgets/video/deps/df;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cV;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/df$b;,
        Lcom/google/vr/sdk/widgets/video/deps/df$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/cV;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/df$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:I = 0x400


# instance fields
.field final a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field final b:Lcom/google/vr/sdk/widgets/video/deps/m;

.field c:Z

.field d:[B

.field e:I

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final i:I

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

.field private final l:I

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/di;

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/df$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/dg$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->g:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->h:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 5
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->i:I

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->j:Landroid/os/Handler;

    .line 7
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->k:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

    .line 8
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->l:I

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/di;

    const/4 p2, 0x1

    new-array p4, p2, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    new-instance p5, Lcom/google/vr/sdk/widgets/video/deps/dh;

    new-array p2, p2, [Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 p6, 0x0

    aput-object p3, p2, p6

    invoke-direct {p5, p2}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object p5, p4, p6

    invoke-direct {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->m:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->n:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p2, "Loader:SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/df;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->l:I

    return p0
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->k:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/df$1;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/df$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/df;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/df;)Lcom/google/vr/sdk/widgets/video/deps/dg$a;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->k:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/df$b;JJLjava/io/IOException;)I
    .locals 0

    .line 48
    invoke-direct {p0, p6}, Lcom/google/vr/sdk/widgets/video/deps/df;->a(Ljava/io/IOException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/df$b;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/df;->a(Lcom/google/vr/sdk/widgets/video/deps/df$b;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 20
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 21
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->n:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    aput-object v2, p3, v0

    .line 24
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 25
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/df$a;

    invoke-direct {v1, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/df$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/df;Lcom/google/vr/sdk/widgets/video/deps/df$1;)V

    .line 26
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 28
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V
    .locals 0

    .line 15
    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/df$b;JJ)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/df$b;->a(Lcom/google/vr/sdk/widgets/video/deps/df$b;)I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->e:I

    .line 44
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/df$b;->b(Lcom/google/vr/sdk/widgets/video/deps/df$b;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->d:[B

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->c:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/df$b;JJZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 55
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/df$b;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/df;->a(Lcom/google/vr/sdk/widgets/video/deps/df$b;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 54
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/df$b;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/df;->a(Lcom/google/vr/sdk/widgets/video/deps/df$b;JJZ)V

    return-void
.end method

.method public a_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    return-void
.end method

.method public b(J)J
    .locals 2

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/df$a;

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/df$a;->b(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->m:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-object v0
.end method

.method public c()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 2

    .line 32
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/df$b;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->g:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->h:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/df$b;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->i:I

    invoke-virtual {p1, p2, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()J
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->c:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public f()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->c()V

    return-void
.end method
