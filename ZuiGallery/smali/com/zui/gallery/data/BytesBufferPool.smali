.class public Lcom/zui/gallery/data/BytesBufferPool;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;
    }
.end annotation


# static fields
.field private static final READ_STEP:I = 0x1000


# instance fields
.field private final mBufferSize:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    .line 70
    iput p1, p0, Lcom/zui/gallery/data/BytesBufferPool;->mPoolSize:I

    .line 71
    iput p2, p0, Lcom/zui/gallery/data/BytesBufferPool;->mBufferSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;
    .locals 3

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zui/gallery/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;

    iget v1, p0, Lcom/zui/gallery/data/BytesBufferPool;->mBufferSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;-><init>(ILcom/zui/gallery/data/BytesBufferPool$1;)V
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

.method public declared-synchronized recycle(Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p1, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/zui/gallery/data/BytesBufferPool;->mBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/data/BytesBufferPool;->mPoolSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 82
    iput v0, p1, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 83
    iput v0, p1, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->length:I

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
