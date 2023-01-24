.class final Lcom/google/vr/sdk/widgets/video/deps/cP$b;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cV;
.implements Lcom/google/vr/sdk/widgets/video/deps/cV$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fn;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/cV;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW;Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    return-void
.end method


# virtual methods
.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J
    .locals 7

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(J)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->e:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    .line 14
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->f:J

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1, p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->e:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->b(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a_()V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    :goto_0
    return-void
.end method

.method public b(J)J
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->b()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->e:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cV$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cV;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->c:Lcom/google/vr/sdk/widgets/video/deps/fn;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    .line 7
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->e:Lcom/google/vr/sdk/widgets/video/deps/cV$a;

    if-eqz v1, :cond_0

    .line 8
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->f:J

    invoke-interface {v0, p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cV;->a(Lcom/google/vr/sdk/widgets/video/deps/cV$a;J)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->d:Lcom/google/vr/sdk/widgets/video/deps/cV;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    :cond_0
    return-void
.end method
