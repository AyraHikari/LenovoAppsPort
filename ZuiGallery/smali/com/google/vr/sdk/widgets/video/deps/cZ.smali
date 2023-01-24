.class final Lcom/google/vr/sdk/widgets/video/deps/cZ;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cZ$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x3e8


# instance fields
.field private b:I

.field private c:[I

.field private d:[J

.field private e:[I

.field private f:[I

.field private g:[J

.field private h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

.field private i:[Lcom/google/vr/sdk/widgets/video/deps/m;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c:[I

    new-array v1, v0, [J

    .line 4
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    .line 8
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 9
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J

    .line 11
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->q:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->p:Z

    return-void
.end method

.method private a(IIJZ)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 169
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    aget-wide v3, v3, p1

    cmp-long v3, v3, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 170
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 173
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private c(I)J
    .locals 4

    .line 177
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J

    .line 178
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d(I)J

    move-result-wide v2

    .line 179
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J

    .line 180
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    .line 181
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->k:I

    .line 182
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    .line 183
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 184
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    .line 185
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 187
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    .line 188
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    if-nez p1, :cond_3

    .line 189
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    aget p1, v2, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private d(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 195
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 197
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    aget-wide v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 198
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 202
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private e(I)I
    .locals 1

    .line 205
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    add-int/2addr v0, p1

    .line 206
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->k:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized a(JZZ)I
    .locals 8

    monitor-enter p0

    .line 66
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result v2

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    aget-wide v0, v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_1

    .line 71
    monitor-exit p0

    return v7

    .line 72
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return p1

    .line 68
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/cZ$a;)I
    .locals 4

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 47
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->a_(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return v3

    .line 49
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eq p2, p5, :cond_2

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    return v1

    .line 52
    :cond_2
    monitor-exit p0

    return v2

    .line 53
    :cond_3
    :try_start_2
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    invoke-direct {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result p4

    if-nez p3, :cond_6

    .line 54
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_4

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/T;->f()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 58
    monitor-exit p0

    return v2

    .line 59
    :cond_5
    :try_start_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    .line 60
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->a_(I)V

    .line 61
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    aget p1, p1, p4

    iput p1, p6, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->a:I

    .line 62
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    aget-wide p1, p1, p4

    iput-wide p1, p6, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->b:J

    .line 63
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    aget-object p1, p1, p4

    iput-object p1, p6, Lcom/google/vr/sdk/widgets/video/deps/cZ$a;->c:Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    .line 64
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    monitor-exit p0

    return v3

    .line 55
    :cond_6
    :goto_0
    :try_start_4
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    aget-object p2, p2, p4

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)J
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-ltz v0, :cond_0

    .line 28
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 29
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    .line 30
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    sub-int/2addr v0, p1

    .line 33
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result p1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    aget p1, v2, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(JIJILcom/google/vr/sdk/widgets/video/deps/aA$a;)V
    .locals 5

    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 100
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->p:Z

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(J)V

    .line 104
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result v0

    .line 105
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    aput-wide p1, v3, v0

    .line 106
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    aput-wide p4, p1, v0

    .line 107
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    aput p6, p1, v0

    .line 108
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    aput p3, p1, v0

    .line 109
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    aput-object p7, p1, v0

    .line 110
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;

    aput-object p2, p1, v0

    .line 111
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c:[I

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->s:I

    aput p2, p1, v0

    .line 112
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    .line 113
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    if-ne p1, p2, :cond_3

    .line 114
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    add-int/lit16 p1, p1, 0x3e8

    .line 115
    new-array p2, p1, [I

    .line 116
    new-array p3, p1, [J

    .line 117
    new-array p4, p1, [J

    .line 118
    new-array p5, p1, [I

    .line 119
    new-array p6, p1, [I

    .line 120
    new-array p7, p1, [Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    .line 121
    new-array v0, p1, [Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 122
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    sub-int/2addr v2, v3

    .line 123
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c:[I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    .line 131
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d:[J

    .line 139
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    .line 140
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->f:[I

    .line 141
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e:[I

    .line 142
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->h:[Lcom/google/vr/sdk/widgets/video/deps/aA$a;

    .line 143
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->i:[Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 144
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c:[I

    .line 145
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    .line 146
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    .line 147
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    .line 16
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->k:I

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->p:Z

    const-wide/high16 v1, -0x8000000000000000L

    .line 20
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J

    .line 21
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 24
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->q:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 91
    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return v1

    .line 93
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->q:Z

    .line 94
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 95
    monitor-exit p0

    return v1

    .line 96
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .locals 2

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->k:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized b(JZZ)J
    .locals 9

    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 79
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    if-eq p4, v0, :cond_1

    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    :goto_0
    move v5, p4

    .line 80
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->l:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 82
    monitor-exit p0

    return-wide v1

    .line 83
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 78
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->s:I

    return-void
.end method

.method public declared-synchronized b(J)Z
    .locals 7

    monitor-enter p0

    .line 151
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 152
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    monitor-exit p0

    return v1

    .line 153
    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->n:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    .line 154
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d(I)J

    move-result-wide v5

    .line 155
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 157
    monitor-exit p0

    return v1

    .line 158
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    .line 159
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result v1

    .line 160
    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->g:[J

    aget-wide v3, v3, v1

    cmp-long v3, v3, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 164
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->b:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 165
    :cond_4
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->k:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->a(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()I
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->e(I)I

    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->s:I

    :goto_0
    return v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->r:Lcom/google/vr/sdk/widgets/video/deps/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()J
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 43
    :try_start_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()I
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    sub-int/2addr v0, v1

    .line 75
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()J
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 85
    monitor-exit p0

    return-wide v0

    .line 86
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->m:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()J
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 88
    monitor-exit p0

    return-wide v0

    .line 89
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cZ;->j:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cZ;->c(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
