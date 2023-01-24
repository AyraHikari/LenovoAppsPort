.class final Lcom/google/vr/sdk/widgets/video/deps/bC$a;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x2


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private c:J

.field private d:Z

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method

.method private a(I)V
    .locals 7

    .line 44
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->n:Z

    .line 45
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->c:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->l:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->b:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->m:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->j:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->k:Z

    return-void
.end method

.method public a(JI)V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->h:Z

    if-eqz v0, :cond_0

    .line 33
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->d:Z

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->n:Z

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->k:Z

    goto :goto_0

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->h:Z

    if-eqz v0, :cond_3

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->j:Z

    if-eqz v0, :cond_2

    .line 37
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->c:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 38
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->a(I)V

    .line 39
    :cond_2
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->c:J

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->l:J

    .line 40
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->f:J

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->m:J

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->j:Z

    .line 42
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->d:Z

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->n:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(JIIJ)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->i:Z

    .line 12
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->f:J

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->e:I

    .line 14
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->c:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_1

    .line 16
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->k:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->j:Z

    if-eqz p2, :cond_0

    .line 17
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->a(I)V

    .line 18
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->j:Z

    :cond_0
    const/16 p2, 0x22

    if-gt p4, p2, :cond_1

    .line 20
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->k:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->i:Z

    .line 21
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->k:Z

    :cond_1
    const/16 p2, 0x10

    if-lt p4, p2, :cond_2

    const/16 p2, 0x15

    if-gt p4, p2, :cond_2

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, v0

    .line 22
    :goto_0
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->d:Z

    if-nez p2, :cond_3

    const/16 p2, 0x9

    if-gt p4, p2, :cond_4

    :cond_3
    move v0, p1

    .line 23
    :cond_4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->g:Z

    return-void
.end method

.method public a([BII)V
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->g:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    .line 26
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 28
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->h:Z

    .line 29
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->g:Z

    goto :goto_1

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 30
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bC$a;->e:I

    :cond_2
    :goto_1
    return-void
.end method
