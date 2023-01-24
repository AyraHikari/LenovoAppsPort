.class public final Lcom/google/vr/sdk/widgets/video/deps/cL;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cV;
.implements Lcom/google/vr/sdk/widgets/video/deps/cV$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cL$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cV;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

.field private c:J

.field private d:J

.field private e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cV;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    .line 4
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    .line 6
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->f:Z

    return-void
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/fi;)Z
    .locals 4

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/fi;->f()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    .line 75
    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    .line 17
    array-length v0, v9

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    iput-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    .line 18
    array-length v0, v9

    new-array v10, v0, [Lcom/google/vr/sdk/widgets/video/deps/db;

    const/4 v0, 0x0

    move v1, v0

    .line 19
    :goto_0
    array-length v2, v9

    const/4 v11, 0x0

    if-ge v1, v2, :cond_1

    .line 20
    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    aget-object v3, v9, v1

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    aput-object v3, v2, v1

    .line 21
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cL$a;)Lcom/google/vr/sdk/widgets/video/deps/db;

    move-result-object v11

    :cond_0
    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-wide v2, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long v6, p5, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J

    move-result-wide v12

    .line 24
    iget-boolean v1, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 25
    iget-wide v3, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cL;->a([Lcom/google/vr/sdk/widgets/video/deps/fi;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput-boolean v1, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->f:Z

    .line 26
    :cond_3
    iget-wide v3, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long v5, p5, v3

    cmp-long v1, v12, v5

    if-eqz v1, :cond_5

    cmp-long v1, v12, v3

    if-ltz v1, :cond_4

    iget-wide v3, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    cmp-long v1, v12, v3

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    move v14, v0

    .line 27
    :goto_3
    array-length v0, v9

    if-ge v14, v0, :cond_9

    .line 28
    aget-object v0, v10, v14

    if-nez v0, :cond_6

    .line 29
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    aput-object v11, v0, v14

    goto :goto_4

    .line 30
    :cond_6
    aget-object v0, v9, v14

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    aget-object v0, v0, v14

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cL$a;)Lcom/google/vr/sdk/widgets/video/deps/db;

    move-result-object v0

    aget-object v1, v10, v14

    if-eq v0, v1, :cond_8

    .line 31
    :cond_7
    iget-object v15, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    new-instance v16, Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    aget-object v2, v10, v14

    iget-wide v3, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    iget-wide v5, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    iget-boolean v7, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->f:Z

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cL$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cV;Lcom/google/vr/sdk/widgets/video/deps/db;JJZ)V

    aput-object v16, v15, v14

    .line 32
    :cond_8
    :goto_4
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    aget-object v0, v0, v14

    aput-object v0, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 34
    :cond_9
    iget-wide v0, v8, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    sub-long/2addr v12, v0

    return-wide v12
.end method

.method public a(J)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(J)V

    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    .line 9
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V
    .locals 2

    .line 11
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->b:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    .line 12
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long/2addr v0, p2

    invoke-interface {p1, p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 68
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->b:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cL;->b(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a_()V

    return-void
.end method

.method public b(J)J
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long/2addr v3, p1

    invoke-interface {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/cV;->b(J)J

    move-result-wide v0

    .line 60
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long/2addr p1, v3

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-ltz p1, :cond_3

    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    cmp-long p1, v0, p1

    if-gtz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 61
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->b()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->b:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public c()J
    .locals 10

    .line 37
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->f:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->e:[Lcom/google/vr/sdk/widgets/video/deps/cL$a;

    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->a()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->f:Z

    .line 43
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cL;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    return-wide v3

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    return-wide v1

    .line 48
    :cond_4
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 49
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v0, v6, v8

    if-eqz v0, :cond_6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    :cond_6
    move v3, v1

    :cond_7
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 50
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public c(J)Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c(J)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 52
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 54
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public e()J
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 63
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->d:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cL;->c:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method
