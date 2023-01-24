.class Lcom/google/vr/sdk/widgets/video/deps/bh$a;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/az;
.implements Lcom/google/vr/sdk/widgets/video/deps/bl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x12


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/bh;

.field private d:[J

.field private e:[J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bh;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->f:J

    .line 3
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->g:J

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bh;->b(J)J

    move-result-wide p1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->d:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->d:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->g:J

    return-wide p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 18
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->g:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 20
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->g:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 5

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v0

    .line 9
    div-int/lit8 v0, v0, 0x12

    .line 10
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->d:[J

    .line 11
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->e:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->d:[J

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->t()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 14
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->e:[J

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->t()J

    move-result-wide v3

    aput-wide v3, v2, v1

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a(Lcom/google/vr/sdk/widgets/video/deps/bh;)Lcom/google/vr/sdk/widgets/video/deps/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gt;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bh;->b(J)J

    move-result-wide p1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->d:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result p1

    .line 31
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->f:J

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->e:[J

    aget-wide p1, p2, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/az;
    .locals 0

    return-object p0
.end method

.method public c(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->f:J

    return-void
.end method
