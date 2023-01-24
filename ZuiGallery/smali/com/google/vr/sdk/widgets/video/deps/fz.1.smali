.class public final Lcom/google/vr/sdk/widgets/video/deps/fz;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fn;


# static fields
.field private static final a:I = 0x64


# instance fields
.field private final b:Z

.field private final c:I

.field private final d:[B

.field private final e:[Lcom/google/vr/sdk/widgets/video/deps/fm;

.field private f:I

.field private g:I

.field private h:I

.field private i:[Lcom/google/vr/sdk/widgets/video/deps/fm;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fz;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    if-ltz p3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 5
    :goto_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 6
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->b:Z

    .line 7
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->c:I

    .line 8
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    add-int/lit8 p1, p3, 0x64

    .line 9
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/fm;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    .line 11
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    :goto_2
    if-ge v0, p3, :cond_3

    mul-int p1, v0, p2

    .line 14
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    invoke-direct {v3, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/fm;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    :cond_3
    new-array p1, v1, [Lcom/google/vr/sdk/widgets/video/deps/fm;

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->e:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/vr/sdk/widgets/video/deps/fm;
    .locals 4

    monitor-enter p0

    .line 27
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->g:I

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    aget-object v0, v0, v1

    .line 30
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->c:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fm;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->f:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->f:I

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/fm;)V
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->e:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 34
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->e:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fz;->a([Lcom/google/vr/sdk/widgets/video/deps/fm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([Lcom/google/vr/sdk/widgets/video/deps/fm;)V
    .locals 7

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/fm;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    .line 40
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 41
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    if-eq v4, v5, :cond_2

    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    array-length v4, v4

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->c:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 42
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->g:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->g:I

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 7

    monitor-enter p0

    .line 47
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->f:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->c:I

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result v0

    .line 48
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->g:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 49
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    if-eqz v2, :cond_4

    .line 53
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    .line 55
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    aget-object v3, v3, v1

    .line 56
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    aget-object v4, v4, v2

    .line 59
    iget-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/fm;->a:[B

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->d:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    .line 62
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    add-int/lit8 v4, v2, -0x1

    aput-object v3, v1, v2

    move v2, v4

    move v1, v6

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 65
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 66
    monitor-exit p0

    return-void

    .line 67
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->i:[Lcom/google/vr/sdk/widgets/video/deps/fm;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 68
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    .line 70
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->g:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->c:I

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fz;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
