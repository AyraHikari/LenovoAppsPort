.class public final Lcom/google/vr/sdk/widgets/video/deps/dp$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/dp;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/da;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dp;Lcom/google/vr/sdk/widgets/video/deps/dp;Lcom/google/vr/sdk/widgets/video/deps/da;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dp<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/da;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->a:Lcom/google/vr/sdk/widgets/video/deps/dp;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->c:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 4
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->d:I

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->c:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->c:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->l()I

    move-result p1

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->c:Lcom/google/vr/sdk/widgets/video/deps/da;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 7

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->c:Lcom/google/vr/sdk/widgets/video/deps/da;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    iget-boolean v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/dp;->a:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZJ)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dp;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->d:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->a(Lcom/google/vr/sdk/widgets/video/deps/dp;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->d:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public b_()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dp;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->b:Lcom/google/vr/sdk/widgets/video/deps/dp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dp;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dp$a;->c:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
