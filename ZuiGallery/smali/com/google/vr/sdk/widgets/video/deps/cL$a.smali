.class final Lcom/google/vr/sdk/widgets/video/deps/cL$a;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cV;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/db;

.field private final c:J

.field private final d:J

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cV;Lcom/google/vr/sdk/widgets/video/deps/db;JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->c:J

    .line 5
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->d:J

    .line 6
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cL$a;)Lcom/google/vr/sdk/widgets/video/deps/db;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    return-object p0
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->c:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/db;->a(J)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 10

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->e:Z

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->f:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/T;->a_(I)V

    return v3

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/db;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_4

    .line 22
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 23
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->c:J

    const-wide/16 v6, 0x0

    cmp-long p3, v1, v6

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    iget p3, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    .line 24
    :goto_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    .line 25
    :goto_1
    invoke-virtual {p2, p3, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(II)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    return v0

    .line 27
    :cond_4
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->d:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_7

    if-ne p3, v3, :cond_5

    iget-wide v6, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->d:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_6

    :cond_5
    if-ne p3, v1, :cond_7

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    .line 28
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cV;->d()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_7

    .line 29
    :cond_6
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 30
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/T;->a_(I)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->f:Z

    return v3

    :cond_7
    if-ne p3, v3, :cond_8

    .line 33
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result p1

    if-nez p1, :cond_8

    .line 34
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    :cond_8
    return p3
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->e:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->f:Z

    return-void
.end method

.method public b_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/db;->b_()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cL$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/db;->c()Z

    move-result v0

    return v0
.end method
