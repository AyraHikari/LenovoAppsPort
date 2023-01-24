.class public final Lcom/google/vr/sdk/widgets/video/deps/z$a;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field private e:J

.field private f:[J

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:[[J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 7

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 26
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    aget-wide v3, v2, v0

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c(I)Z

    move-result p1

    if-nez p1, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public a()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)J
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 2
    invoke-virtual/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ[J[I[I[I[[JJ)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ[J[I[I[I[[JJ)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    .line 5
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    .line 6
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d:J

    .line 7
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->e:J

    .line 8
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    .line 9
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->g:[I

    .line 10
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->h:[I

    .line 11
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->i:[I

    .line 12
    iput-object p12, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->j:[[J

    .line 13
    iput-wide p13, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->k:J

    return-object p0
.end method

.method public a(II)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->h:[I

    aget p1, v0, p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->i:[I

    aget p1, v0, p1

    return p1
.end method

.method public b(J)I
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-wide v3, v2, v0

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    array-length p1, p1

    if-ge v0, p1, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public b()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d:J

    return-wide v0
.end method

.method public b(II)J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->j:[[J

    aget-object v1, v0, p1

    array-length v1, v1

    if-lt p2, v1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 40
    :cond_0
    aget-object p1, v0, p1

    aget-wide p1, p1, p2

    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->e:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->g:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->i:[I

    aget v1, v1, p1

    aget p1, v0, p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(I)I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->g:[I

    aget p1, v0, p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->e:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->k:J

    return-wide v0
.end method
